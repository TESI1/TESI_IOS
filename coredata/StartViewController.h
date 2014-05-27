//
//  StartViewController.h
//  coredata
//
//  Created by Mattia Gadda on 13/05/14.
//  Copyright (c) 2014 Giorgia Cesari. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StartViewController : UIViewController
{
    IBOutlet UIButton *btnCamera;
    IBOutlet UIButton *btnCucina;
    IBOutlet UIButton *btnSoggiorno;
    IBOutlet UIButton *btnAggiungi;
    
    
    IBOutlet UIImage *camera;
    IBOutlet UIImage *cucina;
    IBOutlet UIImage *soggiorno;
    IBOutlet UIImage *aggiungi;
    
    IBOutlet UIImage *barra;
    IBOutlet UIImageView *barraView;
}

@end
