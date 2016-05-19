//
//  ViewController.m
//  BJOBJCPlus
//
//  Created by zbj on 16/5/19.
//  Copyright © 2016年 zbj. All rights reserved.
//

#import "ViewController.h"
#import "testc.h"

@interface ViewController ()

@property (nonatomic, strong) UITextField *field;
@property (nonatomic, strong) UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.field = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 200, 40)];
    self.field.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.field];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self action:@selector(reverse) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(100, 300, 120, 40);
    [button setTitle:@"转换字符串" forState:UIControlStateNormal];
    [self.view addSubview:button];
    button.backgroundColor = [UIColor blueColor];
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(100, 400, 200, 40)];
    [self.view addSubview:self.label];
    self.label.backgroundColor = [UIColor purpleColor];
}

- (void)reverse
{
    if (!self.field.text) {
        return;
    }
    self.label.text = [testc testReverStr:self.field.text];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
