//
//  StartViewController.m
//  coredata
//
//  Created by Mattia Gadda on 13/05/14.
//  Copyright (c) 2014 Giorgia Cesari. All rights reserved.
//

#import "StartViewController.h"
#import "Input_Sensor1_ViewController.h"
#import "AggiungiViewController.h"

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
    
    self.ble = [[BLE alloc]init];
    [self.ble controlSetup];
    self.ble.delegate = self;
    
    
    self.view.backgroundColor = [UIColor colorWithRed:0.872 green:0.876 blue:0.868 alpha:1.0];
    
    camera = [[UIImage alloc]initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"camera" ofType:@"png"]];
    cucina = [[UIImage alloc]initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cucina" ofType:@"png"]];
    soggiorno = [[UIImage alloc]initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"soggiorno" ofType:@"png"]];
    aggiungi = [[UIImage alloc]initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"aggiungi" ofType:@"png"]];
    
    barra = [[UIImage alloc]initWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"barra" ofType:@"jpg"]];
    barraView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 0, 100, 64)];
    [barraView setImage:barra];
    barraView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:barraView];
    
    CGRect rect1 = [[UIScreen mainScreen]applicationFrame];
    btnCamera = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnCamera setFrame:CGRectMake(rect1.size.width/2-140, rect1.size.height/2-170, 101, 99)];
    [btnCamera setTitle:@"" forState:UIControlStateNormal];
    [btnCamera setImage:camera forState:UIControlStateNormal];
    [btnCamera addTarget:self action:@selector(Camera) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnCamera];
    
    CGRect rect2 = [[UIScreen mainScreen]applicationFrame];
    btnCucina = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnCucina setFrame:CGRectMake(rect2.size.width/2+20, rect2.size.height/2-170, 101, 99)];
    [btnCucina setTitle:@"" forState:UIControlStateNormal];
    [btnCucina setImage:cucina forState:UIControlStateNormal];
    [btnCucina addTarget:self action:@selector(Cucina) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnCucina];
    
    CGRect rect3 = [[UIScreen mainScreen]applicationFrame];
    btnSoggiorno = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnSoggiorno setFrame:CGRectMake(rect3.size.width/2-140, rect3.size.height/2-30, 101, 99)];
    [btnSoggiorno setTitle:@"" forState:UIControlStateNormal];
    [btnSoggiorno setImage:soggiorno forState:UIControlStateNormal];
    [btnSoggiorno addTarget:self action:@selector(Soggiorno) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnSoggiorno];
    
    CGRect rect4 = [[UIScreen mainScreen]applicationFrame];
    btnAggiungi = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnAggiungi setFrame:CGRectMake(rect4.size.width/2+20, rect4.size.height/2-30, 101, 99)];
    [btnAggiungi setTitle:@"" forState:UIControlStateNormal];
    [btnAggiungi setImage:aggiungi forState:UIControlStateNormal];
    [btnAggiungi addTarget:self action:@selector(Aggiungi) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnAggiungi];
   
    
    CGRect rect5 = [[UIScreen mainScreen]applicationFrame];
    btnConnect = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnConnect setFrame:CGRectMake(rect5.size.width/2-210, rect5.size.height/2-55, 250, 400)];
    [btnConnect setTitle:@"Connect" forState:UIControlStateNormal];
    [btnConnect addTarget:self action:@selector(btnScanForPeripherals) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnConnect];
    
}

- (IBAction)btnScanForPeripherals
{
    NSLog(@"sono qua1");
    
    if (self.ble.activePeripheral) NSLog(@"ble.active");
    if(self.ble.activePeripheral.state == CBPeripheralStateConnected)
    {
        NSLog(@"CbPeripheralstateconnect");
        
        [[self.ble CM] cancelPeripheralConnection:[self.ble activePeripheral]];
        return;
        
        NSLog(@"dopo return");
    }
    
    if (self.ble.peripherals)
        self.ble.peripherals = nil;
    
    [self.ble findBLEPeripherals:2];
    
    NSLog(@"findPeripheral");
    
    [NSTimer scheduledTimerWithTimeInterval:(float)2.0 target:self selector:@selector(bleDidConnect) userInfo:nil repeats:NO];
}

-(void) bleDidConnect
{
    if (self.ble.peripherals.count > 0)
    {
        NSLog(@"connecting");
        [self.ble connectPeripheral:[self.ble.peripherals objectAtIndex:0]];
        
        rssiTimer = [NSTimer scheduledTimerWithTimeInterval:(float)2.0 target:self selector:@selector(readRSSITimer) userInfo:nil repeats:NO];
    }

}

-(void) readRSSITimer
{
    NSLog(@"self.ble.readRssi");
    [self.ble readRSSI];
}

-(void) bleDidUpdateRSSI:(NSNumber *) rssi
{
    NSLog(@"readrssi");
    //lblRSSI.text = rssi.stringValue;
    NSLog(@"%@", rssi.stringValue);
}

NSTimer *rssiTimer;

#pragma mark DATA
-(void) bleDidReceiveData:(unsigned char *)data length:(int)length
{
    NSLog(@"Length: %d", length);
    if (length == 3)
    {
        // parse data, all commands are in 3-byte
        for (int i = 0; i < length; i+=3)
        {
            NSLog(@"Stanza 0x%02X, Sensore 0x%02X, Valore %d", data[i], data[i+1], data[i+2]);
            
            if (data[i] == 0x01)
            {
                if (data[i+1] == 0x0B)
                {
                    //lblUmiIN.text = [NSString stringWithFormat:@"Umi,%d", data[i+2]];
                    NSLog(@"umidità, %d", data[2]);
                    umi1 = [NSString stringWithFormat:@"%d", data[i+2]];
                    NSLog(@"%@", umi1);
                    
                }
                else if (data[i+1] == 0x0A)
                {
                    //lblTempIN.text = [NSString stringWithFormat:@"Temp,%d", data[i+2]];
                     NSLog(@"Temp, %d", data[2]);
                    temp1 = [NSString stringWithFormat:@"%d", data[i+2]];
                    NSLog(@"%@", temp1);
                }
                else if (data[i+1] == 0x0C)
                {
                    //lblLuceIN.text = [NSString stringWithFormat:@"Luce,%d", data[i+2]];
                     NSLog(@"Luce, %d", data[2]);
                    luce1 = [NSString stringWithFormat:@"%d", data[i+2]];
                    NSLog(@"%@", luce1);
                }
            }
        }
    }
}

- (void)bleDidDisconnect
{
    NSLog(@"->Disconnected");
    
    [rssiTimer invalidate];
}

-(void)Camera
{
    NSLog(@"camera");
    Input_Sensor1_ViewController *input_Sensor1_ViewController = [[Input_Sensor1_ViewController alloc]init];
    [self presentViewController:input_Sensor1_ViewController animated:YES completion:nil];
}

-(void)Cucina
{
    NSLog(@"cucina");
}

-(void)Soggiorno
{
    NSLog(@"soggiorno");
}

-(void)Aggiungi
{
    NSLog(@"aggiungi");
    
    AggiungiViewController *aggiungiViewController = [[AggiungiViewController alloc]init];
    [self presentViewController:aggiungiViewController animated:YES completion:nil];
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
