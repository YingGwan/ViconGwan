#include "ViconClient.h"
#include <iostream>

using namespace ViconUserSpace;

ViconUser::ViconUser()
{

}

ViconUser::~ViconUser()
{

}

/**
*	Connect to Vicon Motion Capture System 
*	@para: hostname: refer to official documentation
*	@return: false: failure
*			 true: success
*/

bool ViconUser::Connect(std::string hostName)
{
	cout << "Vicon Connection...\n";

	Output_Connect Output = _client.Connect(hostName);	//"192.168.10.1"
	int count_retry = 0;
	while (Output.Result != Result::Success)
	{
		Output = _client.Connect(hostName);
		printf("trying to connect to Vicon...\n");
		count_retry++;
		if (count_retry > RETRY_MAX)
		{
			printf("exceed maximum try, return...\n");
			return false;
		}
	}

	if (Output.Result == Result::Success)
	{
		printf("IP connect successfully...\n");
		return true;
	}
	return true;
}


/**
*	Enable specific streaming type
*	@para: type:  0 -> default, enable unlabeled point data
*				  1 -> enable labeled point data
*				  2 -> enable marker ray data (raw data to determine point)
*				  3 -> to be filled....
*		   enable:true  -> enable
*				  false -> disable
*	@return: false: failure
*			 true: success
*/

bool ViconUser::EnableStreaming(int type,bool enable)
{
	switch (type) {
	case 0:
	{
		if (enable)
		{
			if (_client.IsUnlabeledMarkerDataEnabled().Enabled)
			{
				printf("Already enabled...\n");
				return true;
			}


			auto result = _client.EnableUnlabeledMarkerData();
			if (result.Result == Result::Success)
				return true;
			else if (result.Result == Result::NotConnected)
			{
				printf("Not connected...\n");
				return false;
			}
			else
				return false;
				
		}
		else
		{
			auto result = _client.DisableUnlabeledMarkerData();
			if (result.Result == Result::Success)
				return true;
			else
				return false;
		}
		break;
	}
		
	case 1:
	{
		if (enable)
		{
			auto result = _client.EnableMarkerData();
			if (result.Result == Result::Success)
				return true;
			else
				return false;
		}
		else
		{
			auto result = _client.DisableMarkerData();
			if (result.Result == Result::Success)
				return true;
			else
				return false;
		}
		break;
	}
		
	case 2:
	{
		if (enable)
		{
			auto result = _client.EnableMarkerRayData();
			if (result.Result == Result::Success)
				return true;
			else
				return false;
		}
		else
		{
			auto result = _client.DisableMarkerRayData();
			if (result.Result == Result::Success)
				return true;
			else
				return false;
		}
		break;
	}
	case 3:
	{
		//fill here
		return true;
	}
		break;
	

	default:
		return true;
		// code block
	}
}

/**
*	Update unlabelled marker data 
*	@para: 
*		   _unlabeledMarkerNum: private member -> unlabelled marker number
*		   _unlabeledMarker:    private member -> marker data, plz refer to private position for details
* 
*	@return: 
*		    false: update fail
*			true:  update success
* 
*/
bool ViconUser::UpdateUnlabeledFrameData(void)
{
	static bool init = false;

	/// update frame
	int refreshCount = 0;
	while (_client.GetFrame().Result != Result::Success) 
	{ 
		refreshCount++;
		if (refreshCount > RETRY_MAX)
		{
			printf("Get frame error...\n");
			return false;
		}

	}


	// update data
	_unlabeledMarkerNum = (int)_client.GetUnlabeledMarkerCount().MarkerCount;
	_public_unlabelledMarkerNum = _unlabeledMarkerNum;					//public access.	
	_public_unlabelledMarker.resize(4, _unlabeledMarkerNum);			//public access.
	
	_unlabeledMarker.resize(4, _unlabeledMarkerNum);
	for (int i = 0; i < _unlabeledMarkerNum; ++i) 
	{
		Output_GetUnlabeledMarkerGlobalTranslation translation =
			_client.GetUnlabeledMarkerGlobalTranslation(i);
		_unlabeledMarker(0, i) = translation.Translation[0];
		_unlabeledMarker(1, i) = translation.Translation[1];
		_unlabeledMarker(2, i) = translation.Translation[2];
		_unlabeledMarker(3, i) = translation.MarkerID;

		_public_unlabelledMarker(0, i) = translation.Translation[0];
		_public_unlabelledMarker(1, i) = translation.Translation[1];
		_public_unlabelledMarker(2, i) = translation.Translation[2];
		_public_unlabelledMarker(3, i) = translation.MarkerID;

	}

	return true;
}


