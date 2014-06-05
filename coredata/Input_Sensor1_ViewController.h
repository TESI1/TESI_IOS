//
//  Input_Sensor1_ViewController.h
//  coredata
//
//  Created by Mattia Gadda on 10/05/14.
//  Copyright (c) 2014 Giorgia Cesari. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Input_Sensor1_ViewController : UIViewController
{
    IBOutlet UITextField *lblTemp;
    IBOutlet UILabel *lblHum;
    IBOutlet UILabel *lblLight;
    IBOutlet UILabel *lblSound;
    IBOutlet UILabel *lblAria;
    IBOutlet UILabel *lblRSSI;
    
    IBOutlet UIButton *btnDisConnect;
    IBOutlet UIButton *btnTempDetail;
    IBOutlet UIButton *btnUmiDetail;
    IBOutlet UIButton *btnAriaDetail;
    IBOutlet UIButton *btnSoundDetail;
    IBOutlet UIButton *btnLumDetail;
    
    int *stanza;
    int *sensore;
    int *valore;
    
    UIImage *HomeButton;
    UIImage *TempDetail;
    UIImage *UmiDetail;
    UIImage *AriaDetail;
    UIImage *SoundDetail;
    UIImage *LumDetail;
    
    UIImage *Gif;
    UIImageView *GifImageView;
    
    IBOutlet UIImage *barra;
    IBOutlet UIImageView *barraView;
    
    NSTimer *timerlbl;
}



@end
