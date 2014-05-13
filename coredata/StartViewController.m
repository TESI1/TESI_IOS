//
//  StartViewController.m
//  coredata
//
//  Created by Mattia Gadda on 13/05/14.
//  Copyright (c) 2014 Giorgia Cesari. All rights reserved.
//

#import "StartViewController.h"
#import "Input_Sensor1_ViewController.h"

@interface StartViewController ()

@end

@implementation StartViewController

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
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    
    CGRect rect = [[UIScreen mainScreen]applicationFrame];
    btnConnect = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnConnect setFrame:CGRectMake(rect.size.width/2-110, rect.size.height/2-55, 250, 400)];
    [btnConnect setTitle:@"Connect" forState:UIControlStateNormal];
    [btnConnect addTarget:self action:@selector(Connect) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnConnect];
    
}

-(void)Connect
{
    
    Input_Sensor1_ViewController *input_Sensor1_ViewController = [[Input_Sensor1_ViewController alloc]init];
    [self presentViewController:input_Sensor1_ViewController animated:YES completion:nil];
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
