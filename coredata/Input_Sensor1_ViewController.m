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
    
    
    lblTemp = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 130, 30)];
    lblTemp.text = @"-lblTemp-";
    [self.view addSubview:lblTemp];
    
    lblHum = [[UILabel alloc]initWithFrame:CGRectMake(590, 100, 130, 30)];
    lblHum.text = @"-lblHum-";
    [self.view addSubview:lblHum];
    
    lblLight = [[UILabel alloc]initWithFrame:CGRectMake(50, 200, 130, 30)];
    lblLight.text = @"-lblLight-";
    [self.view addSubview:lblLight];
    
    lblSound = [[UILabel alloc]initWithFrame:CGRectMake(590, 200, 130, 30)];
    lblSound.text = @"-lblSound-";
    [self.view addSubview:lblSound];
    
    lblRSSI = [[UILabel alloc]initWithFrame:CGRectMake(350, 50, 130, 30)];
    lblRSSI.text = @"-lblRSSI-";
    [self.view addSubview:lblRSSI];
    
    CGRect rect = [[UIScreen mainScreen]applicationFrame];
    btnDisConnect = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnDisConnect setFrame:CGRectMake(rect.size.width/2-110, rect.size.height/2-55, 100, 50)];
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
