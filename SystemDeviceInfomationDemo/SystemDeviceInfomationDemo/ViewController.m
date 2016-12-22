//
//  ViewController.m
//  SystemDeviceInfomationDemo
//
//  Created by admin on 16/12/22.
//  Copyright © 2016年 thomas. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Private

//获取电池电量
-(CGFloat)getBatteryQuantity
{
    return [[UIDevice currentDevice] batteryLevel];
}

#pragma mark - Handlers

- (IBAction)batteryQuantityButtonWasPressed:(UIButton *)sender {
    CGFloat battery = [self getBatteryQuantity];
    NSLog(@"获取电池电量:::::%@",@(battery));
    [sender setTitle:[NSString stringWithFormat:@"%@",@(battery)] forState:UIControlStateNormal];
}

- (IBAction)batteryStatusButtonWasPressed:(UIButton *)sender {
    NSLog(@"获取电池状态");
}

- (IBAction)totalMemorySizeButtonWasPressed:(UIButton *)sender {
    NSLog(@"获取内存大小");
}

- (IBAction)availableMemorySizeButtonWasPressed:(UIButton *)sender {
    NSLog(@"获取可用内存");
}

- (IBAction)usedMemoryButtonWasPressed:(UIButton *)sender {
    NSLog(@"获取已使用内存");
}

- (IBAction)totalDiskSizeButtonWasPressed:(UIButton *)sender {
    NSLog(@"获取总磁盘容量");
}

- (IBAction)availableDiskSizeButtonWasPressed:(UIButton *)sender {
    NSLog(@"获取可用磁盘容量");
}

- (IBAction)currentDeviceTypeButtonWasPressed:(UIButton *)sender {
    NSLog(@"获取设备型号");
}

- (IBAction)deviceIdAddressButtonWasPressed:(UIButton *)sender {
    NSLog(@"获取IP地址");
}

- (IBAction)phoneWifiNameButtonWasPressed:(UIButton *)sender {
    NSLog(@"获取手机WifI名称");
}


@end
