//
//  ViewController.m
//  MPPlayerDemo
//
//  Created by Varun Rathi on 21/09/16.
//  Copyright © 2016 NovoInvent. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)btnCaptureClicked:(UIButton *)sender
{
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        UIImagePickerController * pickerController=[[UIImagePickerController alloc]init];
        pickerController.allowsEditing=YES;
        pickerController.sourceType=UIImagePickerControllerSourceTypeCamera;
        pickerController.mediaTypes=[[NSArray alloc]initWithObjects:(NSString *)kUTTypeMovie, nil];
        pickerController.delegate=self;
        [self.navigationController presentViewController:pickerController animated:YES completion:NULL];
        
    }
    
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    self.movieURL=[info objectForKey:UIImagePickerControllerMediaURL];
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
    self.moviePlayerController=[[MPMoviePlayerController alloc]init];
    [self.moviePlayerController setContentURL:self.movieURL];
    [self.moviePlayerController.view setFrame:CGRectMake(0, 100, self.view.frame.size.width, self.view.bounds.size.height/2)];
    [self.view addSubview:self.moviePlayerController.view];
    [self.moviePlayerController play];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:NULL];
}
@end
