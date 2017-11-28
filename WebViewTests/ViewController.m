//
//  ViewController.m
//  WebViewTests
//
//  Created by Julio Cesar Sanchez Hernandez on 28/11/17.
//  Copyright © 2017 jcesarmobile. All rights reserved.
//

#import "ViewController.h"
#import "WebViewBaseViewController.h"


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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"identifier %@",segue.identifier);
    WebViewBaseViewController * vc = [segue destinationViewController];
    vc.fileName = segue.identifier;
}

@end
