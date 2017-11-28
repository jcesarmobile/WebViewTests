//
//  WebViewBaseViewController.m
//  WebViewTests
//
//  Created by Julio Cesar Sanchez Hernandez on 28/11/17.
//  Copyright © 2017 jcesarmobile. All rights reserved.
//

#import "WebViewBaseViewController.h"
#import <WebKit/WebKit.h>

@interface WebViewBaseViewController ()
@property (weak, nonatomic) IBOutlet UIView *webView;

@end

@implementation WebViewBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:self.fileName ofType:@"html"];
    NSString* htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
    if ([self.webView isKindOfClass:[UIWebView class]]) {
        NSLog(@"UIwebView");
        [(UIWebView *)self.webView loadHTMLString:htmlString baseURL: [[NSBundle mainBundle] bundleURL]];
        //[((UIWebView *)self.webView).scrollView setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentNever];
    } else {
        NSLog(@"WKwebView");
        [(WKWebView *)self.webView loadHTMLString:htmlString baseURL: [[NSBundle mainBundle] bundleURL]];
        //[((WKWebView *)self.webView).scrollView setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentNever];
    }
    
    UIScreenEdgePanGestureRecognizer *leftEdgeGesture = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(goBack:)];
    leftEdgeGesture.edges = UIRectEdgeLeft;
    leftEdgeGesture.delegate = self;
    [self.view addGestureRecognizer:leftEdgeGesture];
    
}

- (void) goBack: (UITapGestureRecognizer *)recognizer
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
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
