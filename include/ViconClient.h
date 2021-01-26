#pragma once
#include "DataStreamClient.h"
#include <string>
#include "../eigen3/Eigen/dense"


using namespace Eigen;								//matrix management and operation
using namespace ViconDataStreamSDK::CPP;			//official API
using namespace std;


#define RETRY_MAX 1000

namespace ViconUserSpace {

	class ViconUser 
	{
		public:
			ViconUser();
			~ViconUser();

		public:
			//API defined by YingGwan
			/////////////////////////////////////////////////////////
			/**
			*	Connect to Vicon Motion Capture System
			*	@para: hostname: refer to official documentation
			*	@return: false: failure
			*			 true: success
			*/
			bool Connect(std::string hostName);
			


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
			bool EnableStreaming(int type,bool enable);


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
			bool UpdateUnlabeledFrameData(void);








			/////////////////////////////////////////////////////////
			//API end here

			/////////////////////////////////////////////////////////
			//Public data: for user to access
			Eigen::MatrixXd _public_unlabelledMarker;
			int _public_unlabelledMarkerNum;
			////////////////////////////////////////////////////////


		private:
			//API data 
			/////////////////////////////////////////////////////////
			Client _client;
			
			//data
			/**
			*	unlabelled marker data of Vicon
			*	@detail:
			*		0		1		2		3	........
			*  0    x_0	   x_1	   x_2	   x_3
			*  1	y_0	   y_1     y_2     y_3
			*  2    z_0    z_1     z_2	   z_3
			*  3    ID     ID      ID      ID
			*/
			int _unlabeledMarkerNum;
			MatrixXd _unlabeledMarker;


			/////////////////////////////////////////////////////////
			//API data end here
	};


}
/*
Example usage:
ViconUser viconManager;
bool flag = viconManager.Connect("192.168.10.1");
if (!flag)
{
	printf("Connection fail...\n");
	return -1;
}
printf("Connection established...\n");
while (viconManager.EnableStreaming(0, true) == false) {}
printf("Enable streaming...\n");
for(int j=0;j<100;j++)
{
	while(viconManager.UpdateUnlabeledFrameData()==false){ }
	printf("\n************************%d******************************\n",j);
	for (int i = 0; i < viconManager._public_unlabelledMarkerNum; i++)
	{
		printf("(%d, id: %lf): (%lf, %lf, %lf)\n", i, viconManager._public_unlabelledMarker(3, i), viconManager._public_unlabelledMarker(0, i), viconManager._public_unlabelledMarker(1, i), viconManager._public_unlabelledMarker(2, i));
	}
	printf("\n********************************************************\n");

}
printf("End\n");


*/