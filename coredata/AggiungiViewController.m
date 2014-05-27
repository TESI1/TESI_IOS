//
//  AggiungiViewController.m
//  coredata
//
//  Created by Mattia Gadda on 27/05/14.
//  Copyright (c) 2014 Giorgia Cesari. All rights reserved.
//

#import "AggiungiViewController.h"

@interface AggiungiViewController ()

@end

@implementation AggiungiViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:0.486 green:0.850 blue:0.901 alpha:1.0];    
    
	alertViewRiuscito = [[UIAlertView alloc] initWithTitle:@"Ricerca Piattaforme"
												   message:@"in corso..."
												  delegate:self cancelButtonTitle:nil
										 otherButtonTitles:nil];
    
	NSTimer *timerChiusura;
	timerChiusura = [NSTimer scheduledTimerWithTimeInterval:2.5
													 target:self
												   selector:
					 @selector(alertViewNonRiuscito) userInfo:nil
													repeats:NO];
	
	[alertViewRiuscito show];
}

-(void)alertViewNonRiuscito
{
    [alertViewRiuscito dismissWithClickedButtonIndex:0 animated:YES];
    
    alertNonViewRiuscito =[[UIAlertView alloc]initWithTitle:@"Nessuna Piattaforma Trovata" message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
    alertNonViewRiuscito.tag = 0;
    [alertNonViewRiuscito show];
    
    NSTimer *timer1;
    timer1 = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(chiusura) userInfo:nil repeats:NO];
}

-(void)chiusura
{
    [alertNonViewRiuscito dismissWithClickedButtonIndex:0 animated:YES];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end