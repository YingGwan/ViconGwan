#include<iostream>
#include "DataStreamClient.h"
#include "ViconClient.h"
#include <string>

#include "../eigen3/Eigen/dense"
//#include "../eigen3/Eigen/core"
//#include "../eigen3/Eigen/dense"

using namespace std;
using namespace ViconDataStreamSDK::CPP;

using namespace ViconUserSpace;

int main(void)
{
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
	

}