//
//  TempDetailViewController.m
//  coredata
//
//  Created by Mattia Gadda on 26/05/14.
//  Copyright (c) 2014 Giorgia Cesari. All rights reserved.
//

#import "TempDetailViewController.h"
#import "Input_Sensor1_ViewController.h"


@interface TempDetailViewController ()

@end

@implementation TempDetailViewController

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
    
    self.view.backgroundColor = [UIColor blueColor];
    
    CGRect rect = [[UIScreen mainScreen]applicationFrame];
    back = [UIButton buttonWithType:UIButtonTypeCustom];
    [back setFrame:CGRectMake(rect.size.width/2-10, rect.size.height/2-55, 100, 50)];
    [back setTitle:@"back" forState:UIControlStateNormal];
    [back addTarget:self action:@selector(Back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:back];
}

-(void)Back
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
