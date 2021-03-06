//
//  Input_Sensor1_ViewController.m
//  coredata
//
//  Created by Mattia Gadda on 10/05/14.
//  Copyright (c) 2014 Giorgia Cesari. All rights reserved.
//

#import "Input_Sensor1_ViewController.h"
#import "StartViewController.h"
#import "TempDetailViewController.h"
#import "UmiditaViewController.h"
#import "LumViewController.h"
#import "AriaViewController.h"
#import "SoundViewController.h"


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
    self.view.backgroundColor = [UIColor colorWithRed:0.972 green:0.976 blue:0.968 alpha:1.0];
    
    
    barra = [[UIImage alloc]initWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"barra" ofType:@"jpg"]];
    barraView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 0, 100, 64)];
    [barraView setImage:barra];
    barraView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:barraView];
    
    TempDetail = [[UIImage alloc]initWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"temperatura" ofType:@"png"]];
    CGRect rect2 = [[UIScreen mainScreen]applicationFrame];
    btnTempDetail = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnTempDetail setFrame:CGRectMake(rect2.size.width/2-140, rect2.size.height/2-190, 101, 99)];
    [btnTempDetail setTitle:@"" forState:UIControlStateNormal];
    [btnTempDetail setImage:TempDetail forState:UIControlStateNormal];
    [btnTempDetail addTarget:self action:@selector(TempDetail) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnTempDetail];
    
    UmiDetail = [[UIImage alloc]initWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"umidita" ofType:@"png"]];
    CGRect rect3 = [[UIScreen mainScreen]applicationFrame];
    btnUmiDetail = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnUmiDetail setFrame:CGRectMake(rect3.size.width/2+20, rect3.size.height/2-190, 101, 99)];
    [btnUmiDetail setTitle:@"" forState:UIControlStateNormal];
    [btnUmiDetail setImage:UmiDetail forState:UIControlStateNormal];
    [btnUmiDetail addTarget:self action:@selector(umiDetail) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnUmiDetail];
    
    AriaDetail = [[UIImage alloc]initWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"aria" ofType:@"png"]];
    CGRect rect4 = [[UIScreen mainScreen]applicationFrame];
    btnAriaDetail = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnAriaDetail setFrame:CGRectMake(rect4.size.width/2+20, rect4.size.height/2-60, 101, 99)];
    [btnAriaDetail setTitle:@"" forState:UIControlStateNormal];
    [btnAriaDetail setImage:AriaDetail forState:UIControlStateNormal];
    [btnAriaDetail addTarget:self action:@selector(ariaDetail) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnAriaDetail];
    
    LumDetail = [[UIImage alloc]initWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"luminosita" ofType:@"png"]];
    CGRect rect5 = [[UIScreen mainScreen]applicationFrame];
    btnLumDetail = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnLumDetail setFrame:CGRectMake(rect5.size.width/2-140, rect5.size.height/2-60, 101, 99)];
    [btnLumDetail setTitle:@"" forState:UIControlStateNormal];
    [btnLumDetail setImage:LumDetail forState:UIControlStateNormal];
    [btnLumDetail addTarget:self action:@selector(lumDetail) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnLumDetail];
    
    SoundDetail= [[UIImage alloc]initWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"rumore" ofType:@"png"]];
    CGRect rect6 = [[UIScreen mainScreen]applicationFrame];
    btnSoundDetail = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnSoundDetail setFrame:CGRectMake(rect6.size.width/2-140, rect6.size.height/2+70, 101, 99)];
    [btnSoundDetail setTitle:@"" forState:UIControlStateNormal];
    [btnSoundDetail setImage:SoundDetail forState:UIControlStateNormal];
    [btnSoundDetail addTarget:self action:@selector(soundDetail) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnSoundDetail];
    
    CGRect rect = [[UIScreen mainScreen]applicationFrame];
    btnDisConnect = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnDisConnect setFrame:CGRectMake(rect.size.width/2-10, rect.size.height/2+100, 100, 50)];
    [btnDisConnect setTitle:@"disconnessione" forState:UIControlStateNormal];
    [btnDisConnect addTarget:self action:@selector(Disconnect) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnDisConnect];
    
    //    Gif = [[UIImage alloc]initWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"large" ofType:@"gif"]];
    //    GifImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 439, 651)];
    //    [GifImageView setImage:Gif];
    //    GifImageView.contentMode = UIViewContentModeScaleAspectFill;
    //    GifImageView.layer.masksToBounds = YES;
    //    [self.view addSubview:GifImageView];
    
    timeralloc = [NSTimer scheduledTimerWithTimeInterval:(float)0.5 target:self selector:@selector(allocazioni) userInfo:nil repeats:NO];
    
    timerlbl = [NSTimer scheduledTimerWithTimeInterval:(float)2.0 target:self selector:@selector(label) userInfo:nil repeats:YES];
    
    
}

/*- (void)viewWillAppear:(BOOL)animated
{
    [self setupLocalNotifications];
}*/

- (void)setupLocalNotifications {
    [[UIApplication sharedApplication] cancelAllLocalNotifications];
    
    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    
    localNotification.fireDate = [NSDate date];
    localNotification.alertBody = @"Time to get up!";
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    localNotification.applicationIconBadgeNumber = 1; // increment
    
    
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
}

-(void)allocazioni
{
    lblTemp = [[UILabel alloc]initWithFrame:CGRectMake(35, 195, 130, 30)];
    lblHum = [[UILabel alloc]initWithFrame:CGRectMake(200, 195, 130, 30)];
    lblLight = [[UILabel alloc]initWithFrame:CGRectMake(35, 325, 130, 30)];
    lblAria = [[UILabel alloc]initWithFrame:CGRectMake(200, 325, 130, 30)];
    lblSound = [[UILabel alloc]initWithFrame:CGRectMake(35, 455, 130, 30)];
}

-(void)label
{
//    NSString *tempMax;
//    tempMax = @"23";
//    temp1 = @"25";
//    if (temp1 > tempMax )
//    {
//        NSLog(@"temperatura elevata, %@", tempMax);
//        //[self setupLocalNotifications];
//    }
    
    if (temp1 == NULL)
    {
        lblTemp.text = @"--";
    }
    else if (temp1 != NULL)
    {
        lblTemp.text = @"  ";
        lblTemp.text = [NSString stringWithFormat:@"%@", temp1];
    }
    [self.view addSubview:lblTemp];

    if (umi1 == NULL)
    {
        lblHum.text = @"  ";
        lblHum.text = @"--";
    }
    else if (umi1 != NULL)
    {
        lblHum.text = @"  ";
        lblHum.text = [NSString stringWithFormat:@"%@", umi1];
    }
    [self.view addSubview:lblHum];
    
    
    if (luce1 == NULL)
    {
        lblLight.text = @"--";
    }
    else if (luce1 != NULL)
    {
        lblLight.text = [NSString stringWithFormat:@"%@", luce1];
    }
    [self.view addSubview:lblLight];
    
    if (aria1 == NULL)
    {
        lblAria.text = @"--";
    }
    else if (aria1 != NULL)
    {
        lblAria.text = @"  ";
        lblAria.text = [NSString stringWithFormat:@"%@", aria1];
    }
    [self.view addSubview:lblAria];
    
    lblSound.text = @"-lblSound-";
    [self.view addSubview:lblSound];
    
    /*
    lblRSSI = [[UILabel alloc]initWithFrame:CGRectMake(350, 50, 130, 30)];
    lblRSSI.text = @"-lblRSSI-";
    [self.view addSubview:lblRSSI];
    */
    
}

-(void)Disconnect
{
    NSLog(@"disconnessione");
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)TempDetail
{
    TempDetailViewController *tempDetailViewController = [[TempDetailViewController alloc]init];
    tempDetailViewController.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:tempDetailViewController animated:YES completion:nil];
}

-(void)umiDetail
{
    NSLog(@"umdità detail");
    UmiditaViewController *umiditaViewController = [[UmiditaViewController alloc]init];
    umiditaViewController.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:umiditaViewController animated:YES completion:nil];
}

-(void)lumDetail
{
    NSLog(@"lumDetail");
    LumViewController *lumViewController = [[LumViewController alloc]init];
    lumViewController.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:lumViewController animated:YES completion:nil];
}

-(void)ariaDetail
{
    NSLog(@"aria detail");
    AriaViewController *ariaViewController = [[AriaViewController alloc]init];
    ariaViewController.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:ariaViewController animated:YES completion:nil];
}

-(void)soundDetail
{
    NSLog(@"soundDetail");
    SoundViewController *soundViewController = [[SoundViewController alloc]init];
    soundViewController.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:soundViewController animated:YES completion:nil];
}
@end
