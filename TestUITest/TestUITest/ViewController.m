//
//  ViewController.m
//  TestUITest
//
//  Created by zhangwei on 2016/12/20.
//  Copyright © 2016年 Mr.Z. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"hello" forState:UIControlStateNormal];
    [self.view addSubview: btn];
    [btn addTarget:self action:@selector(goBackHome) forControlEvents:UIControlEventTouchDown];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(100, 100, 100, 100)];
}
-(void)goBackHome
{
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"hahahaha" message:@"go" preferredStyle:UIAlertControllerStyleAlert];;
    [self presentViewController:alert animated:YES completion:nil];
    NSLog(@"%s",__FUNCTION__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
