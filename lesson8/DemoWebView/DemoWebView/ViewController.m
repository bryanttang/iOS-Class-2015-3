//
//  ViewController.m
//  DemoWebView
//
//  Created by bryant tang on 5/6/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //URL Request
    NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_myWebView loadRequest:request];
    
    
    //HTML
//    NSString *html = @"<head><style> p{Color:red; } div{border:2px solid #333; text-align:center; background-color:#2D42D8; color:#fff; height:30px;} </style></head><body><div class='title'>It's work</div><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></body>";
//    [_myWebView loadHTMLString:html baseURL:nil];
    
    
    //
    
    
}
- (IBAction)clickSearch:(id)sender {
    [self loadWeb];
    
}

- (IBAction)clickBack:(id)sender {
    NSLog(@"click back");
    [_myWebView goBack];
}
- (IBAction)clickReload:(id)sender {
    NSLog(@"click reload");
    [_myWebView reload];
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self loadWeb];
    [textField resignFirstResponder];
    return YES;
}

- (void)loadWeb{
    NSString *url_str =  _urlInput.text;
    url_str = [NSString stringWithFormat:@"http://%@",url_str];
    [_myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url_str]]];
}

- (void)webViewDidStartLoad:(UIWebView *)webView{
    
    

}
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    //NSLog(@"asdf");
    if([request.URL.absoluteString rangeOfString:@"googleads"].location != NSNotFound)
        return NO;
    NSLog(@"%@", request.URL.query); //[[NSString alloc] initWithData: encoding:NSUTF8StringEncoding]);
    
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
