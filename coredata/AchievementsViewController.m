//
//  AchievementsViewController.m
//  coredata
//
//  Created by Mattia Gadda on 06/06/14.
//  Copyright (c) 2014 MattiaGadda. All rights reserved.
//

#import "AchievementsViewController.h"

@interface AchievementsViewController ()

@end

@implementation AchievementsViewController

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
    
    barra = [[UIImage alloc]initWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"barra" ofType:@"jpg"]];
    barraView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 0, 100, 64)];
    [barraView setImage:barra];
    barraView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:barraView];
    
    CGRect rect1 = [[UIScreen mainScreen]applicationFrame];
    back = [UIButton buttonWithType:UIButtonTypeCustom];
    [back setFrame:CGRectMake(rect1.size.width/2+65, rect1.size.height/2-300, 101, 99)];
    [back setTitle:@"back" forState:UIControlStateNormal];
    [back addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: back];
}

-(void)back
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
