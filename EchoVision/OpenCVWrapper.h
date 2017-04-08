//
//  OpenCVWrapper.h
//  EchoVision
//
//  Created by Taranvir Waraich on 4/8/17.
//  Copyright © 2017 EchoVision. All rights reserved.
//

#ifndef OpenCVWrapper_h
#define OpenCVWrapper_h


#ifdef __cplusplus
#import <opencv2/opencv.hpp>
#endif

#import <Foundation/Foundation.h>
#import <ImageIO/ImageIO.h>
#import <AVFoundation/AVFoundation.h>
#import <UIKit/UIKit.h>

@class ViewController;

@interface CVVideoCamera : NSObject

- (id) initWithController:(ViewController *)controller  andImageView:(UIImageView *)imgview;

@end


#endif /* OpenCVWrapper_h */
