//
//  Input_Sensor1_ViewController.h
//  coredata
//
//  Created by Mattia Gadda on 10/05/14.
//  Copyright (c) 2014 Giorgia Cesari. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Input_Sensor1_ViewController : UIViewController <BLEDelegate>
{
    IBOutlet UILabel *lblTemp;
    IBOutlet UILabel *lblHum;
    IBOutlet UILabel *lblLight;
    IBOutlet UILabel *lblSound;
    
    
    IBOutlet UILabel *lblRSSI;
    IBOutlet UIButton *btnDisConnect;
    int *stanza;
    int *sensore;
    int *valore;
}

@property (strong, nonatomic) BLE *ble;

@end
