//
//  Input_Sensor1_ViewController.m
//  coredata
//
//  Created by Mattia Gadda on 10/05/14.
//  Copyright (c) 2014 Giorgia Cesari. All rights reserved.
//

#import "Input_Sensor1_ViewController.h"
#import "TempDetailViewController.h"

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
    
    TempDetail = [[UIImage alloc]initWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"round" ofType:@"png"]];
    CGRect rect2 = [[UIScreen mainScreen]applicationFrame];
    btnTempDetail = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnTempDetail setFrame:CGRectMake(50, 100, 50, 50)];
    [btnTempDetail setTitle:@"" forState:UIControlStateNormal];
    [btnTempDetail setImage:TempDetail forState:UIControlStateNormal];
    [btnTempDetail addTarget:self action:@selector(TempDetail) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnTempDetail];
    
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
    
    HomeButton = [[UIImage alloc]initWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"Home" ofType:@"png"]];
   
    
    CGRect rect = [[UIScreen mainScreen]applicationFrame];
    btnDisConnect = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnDisConnect setFrame:CGRectMake(rect.size.width/2-10, rect.size.height/2-55, 100, 50)];
    [btnDisConnect setTitle:@"disconnessione" forState:UIControlStateNormal];
    [btnDisConnect addTarget:self action:@selector(Disconnect) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnDisConnect];
    
    CGRect rect1 = [[UIScreen mainScreen]applicationFrame];
    btnhome = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnhome setFrame:CGRectMake(350, 950, 61, 59)];
    [btnhome setTitle:@"" forState:UIControlStateNormal];
    [btnhome setImage:HomeButton forState:UIControlStateNormal];
    [btnhome addTarget:self action:@selector(Home) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnhome];
    
//    Gif = [[UIImage alloc]initWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"large" ofType:@"gif"]];
//    GifImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 439, 651)];
//    [GifImageView setImage:Gif];
//    GifImageView.contentMode = UIViewContentModeScaleAspectFill;
//    GifImageView.layer.masksToBounds = YES;
//    [self.view addSubview:GifImageView];
    
    
    
}

-(void)Home
{
    NSLog(@"hooooooommmmmmeeeee");
}

-(void)Disconnect
{
    NSLog(@"disconnessione");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)TempDetail
{
    TempDetailViewController *tempDetailViewController = [[TempDetailViewController alloc]init];
    [self presentViewController:tempDetailViewController animated:YES completion:nil];
}


@end
