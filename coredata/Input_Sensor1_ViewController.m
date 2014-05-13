//
//  Input_Sensor1_ViewController.m
//  coredata
//
//  Created by Mattia Gadda on 10/05/14.
//  Copyright (c) 2014 Giorgia Cesari. All rights reserved.
//

#import "Input_Sensor1_ViewController.h"
#import "StartViewController.h"

@interface Input_Sensor1_ViewController ()

@end

@implementation Input_Sensor1_ViewController

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
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    
    swDigitalIn = [[UISwitch alloc]initWithFrame:CGRectMake(250, 60, 130, 30)];
    [self.view addSubview:swDigitalIn];
    
    swDigitalOut = [[UISwitch alloc]initWithFrame:CGRectMake(250, 160, 130, 30)];
    [self.view addSubview:swDigitalOut];
    
    swAnalogIn = [[UISwitch alloc]initWithFrame:CGRectMake(250, 260, 130, 30)];
    [self.view addSubview:swAnalogIn];
    
    lblAnalogIn = [[UILabel alloc]initWithFrame:CGRectMake(50, 60, 130, 30)];
    lblAnalogIn.text = @"---";
    [self.view addSubview:lblAnalogIn];
    
    lblRSSI = [[UILabel alloc]initWithFrame:CGRectMake(250, 30, 130, 30)];
    lblRSSI.text = @"---";
    [self.view addSubview:lblRSSI];
    
    
    CGRect rect = [[UIScreen mainScreen]applicationFrame];
    btnDisConnect = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnDisConnect setFrame:CGRectMake(rect.size.width/2-110, rect.size.height/2-55, 250, 400)];
    [btnDisConnect setTitle:@"Disconnect" forState:UIControlStateNormal];
    [btnDisConnect addTarget:self action:@selector(Disconnect) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnDisConnect];
}

-(void)Disconnect
{
    [self dismissViewControllerAnimated:YES completion:nil];
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
