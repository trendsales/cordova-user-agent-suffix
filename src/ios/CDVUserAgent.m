#import "CDVUserAgent.h"
#import <Cordova/CDVPlugin.h>
#import <WebKit/WebKit.h>


@implementation CDVUserAgent : CDVPlugin

- (void)pluginInitialize
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(finishLaunching:) name:UIApplicationDidFinishLaunchingNotification object:nil];
}

- (void)finishLaunching:(NSNotification *)notification
{
    NSString* suffixUA = @" trendsales-shell";
    UIWebView* webView = [[UIWebView alloc] initWithFrame:CGRectZero];
    NSString* defaultUA = [webView stringByEvaluatingJavaScriptFromString:@"navigator.userAgent"];
    NSString* finalUA = [defaultUA stringByAppendingString:suffixUA];
    NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:finalUA, @"UserAgent", nil];
    [[NSUserDefaults standardUserDefaults] registerDefaults:dictionary];
    self.webView.customUserAgent = finalUA;
}

@end
