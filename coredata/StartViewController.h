
//
//  StartViewController.h
//  coredata
//
//  Created by Mattia Gadda on 13/05/14.
//  Copyright (c) 2014 Giorgia Cesari. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StartViewController : UIViewController <BLEDelegate>
{
    IBOutlet UIButton *btnCamera;
    IBOutlet UIButton *btnCucina;
    IBOutlet UIButton *btnSoggiorno;
    IBOutlet UIButton *btnAggiungi;
    IBOutlet UIButton *btnConnect;
    IBOutlet UIButton *btnAch;
    
    IBOutlet UIImage *camera;
    IBOutlet UIImage *cucina;
    IBOutlet UIImage *soggiorno;
    IBOutlet UIImage *aggiungi;
    IBOutlet UIImage *ach;
    
    
    IBOutlet UIImage *barra;
    IBOutlet UIImageView *barraView;
    
    NSTimer *rssiTimer;
    NSTimer *rssiTimer2;
}

@property (strong, nonatomic) BLE *ble;

@end
