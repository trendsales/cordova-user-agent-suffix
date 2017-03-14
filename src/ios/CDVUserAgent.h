#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>
#import <WebKit/WebKit.h>

@interface CDVUserAgent : CDVPlugin

@property (nonatomic, strong) IBOutlet WKWebView* webView;

@end
