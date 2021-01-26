# Easy to build: Sample Project for Vicon Motion Capture SDK 

![Vicon Cara — Curventa](https://images.squarespace-cdn.com/content/v1/5b47237175f9ee48f6375b68/1531932027347-T6DXJU33X6064QI8O781/ke17ZwdGBToddI8pDm48kLXg-epTmyaQW5R2nY8JElYUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKc6UeU5Sw2S-8DOPHmRJ8ehQ8s6AfyvkoCjVm_DO80eYvor-iEBWRNAxa-luhgVumr/vicon-logo.png)



## System Requirement

- Windows 10 64bit
- Visual stuido 2019
- Cmake > 3.0.0



## Several Notes

- ***Target of this simple project is to use live-stream of Vicon System with cmake-triple-click*** (<img src="https://raw.githubusercontent.com/YingGwan/TyporaUploadImg/main/typora202101/26/210353-33650.jpeg" style="zoom:20%" />)

- You could use CMake to build, remember:
  - all libs have been linked in the build step
  
  - all dlls have been copied to ./build/release or ./build/debug folder
  
    
  
- You could modify the ViconUser class in **ViconClient.h **
  - The documentation pdf is so detailed that you could directly get every function you want
  - The documentation pdf is in ***./document/documentation.pdf***



## Result

![image-20210126205652136](https://raw.githubusercontent.com/YingGwan/TyporaUploadImg/main/typora202101/26/205654-952022.png)



