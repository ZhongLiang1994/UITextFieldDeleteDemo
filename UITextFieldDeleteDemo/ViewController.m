//
//  ViewController.m
//  UITextFieldDeleteDemo
//
//  Created by 钟亮 on 2018/7/26.
//  Copyright © 2018年 zhongliang. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+ZL.h"
#import "UITextField+ZL.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)textFieldDidDeleteBackward:(UITextField *)textField{
    NSLog(@"删除成功：%@",textField.text);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
