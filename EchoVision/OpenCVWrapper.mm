//
//  OpenCVWrapper.m
//  EchoVision
//
//  Created by Taranvir Waraich on 4/8/17.
//  Copyright © 2017 EchoVision. All rights reserved.
//



#include <opencv2/opencv.hpp>
#include <opencv2/imgcodecs/ios.h>
#include <opencv2/videoio/cap_ios.h>

#import <Foundation/Foundation.h>

#import "OpenCVWrapper.h"
using namespace cv;
// Class extension to adopt the delegate protocol
@interface CVVideoCamera () <CvVideoCameraDelegate>
{
}
@end
@implementation CVVideoCamera
{
    ViewController * viewController;
    UIImageView * imageView;
    CvVideoCamera * videoCamera;
}

-(id)initWithController:(ViewController*)controller andImageView:(UIImageView*)imgview
{
    viewController = controller;
    imageView = imgview;
    
    videoCamera = [[CvVideoCamera alloc] initWithParentView:imageView];
    // ... set up the camera
    
    videoCamera.delegate = self;
    
    videoCamera.defaultAVCaptureDevicePosition = AVCaptureDevicePositionBack;
    videoCamera.defaultAVCaptureSessionPreset = AVCaptureSessionPresetHigh;

    videoCamera.defaultFPS = 30;
    videoCamera.rotateVideo = true;
    
    [videoCamera start];
    return self;
}


#ifdef __cplusplus


- (void)processImage:(Mat&)image
{

    cv::Size s = image.size();
    cv::Mat duplicate, dst;
    image.copyTo(duplicate);
    cv::hconcat(image, duplicate, dst);
    cv::resize(dst, image, s);
}

#endif

@end
