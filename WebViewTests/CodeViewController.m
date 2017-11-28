//
//  CodeViewController.m
//  WebViewTests
//
//  Created by Julio Cesar Sanchez Hernandez on 28/11/17.
//  Copyright © 2017 jcesarmobile. All rights reserved.
//

#import "CodeViewController.h"
#import <WebKit/WebKit.h>

@interface CodeViewController ()

@property (strong, nonatomic) WKWebView * webView;
@property (weak, nonatomic) IBOutlet UIView * containerView;

@end

@implementation CodeViewController

-(void)loadView {
    [super loadView];
    self.webView = [WKWebView new];
    self.view = self.webView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
