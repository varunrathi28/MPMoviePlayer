//
//  ViewController.h
//  MPPlayerDemo
//
//  Created by Varun Rathi on 21/09/16.
//  Copyright © 2016 NovoInvent. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>


@property (nonatomic, strong) MPMoviePlayerController * moviePlayerController;
@property (nonatomic, strong ) NSURL * movieURL;
@end

