//
//  ViewController.m
//  AttributedStringDemo
//
//  Created by Weixu on 16/5/16.
//  Copyright © 2016年 Netease. All rights reserved.
//

#import "ViewController.h"
#import "ASImageAndTextViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnPress:(id)sender {
    
    ASImageAndTextViewController *asImageAndTextViewController = [[ASImageAndTextViewController alloc] initWithNibName:@"ASImageAndTextViewController" bundle:nil];
    
    [self presentViewController:asImageAndTextViewController animated:YES completion:nil];
}
@end
