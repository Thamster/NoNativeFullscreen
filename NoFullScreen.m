#import <objc/runtime.h>
#import "NoFullScreen.h"

@implementation NSObject (NoFullScreen)
- (void)myToggleFullScreen:(id)sender	{
	//no op
}
@end

@implementation NoFullScreen
+(void) load{
	Class class = objc_getClass("NSWindow");
	Method orig = class_getInstanceMethod(class, @selector(toggleFullScreen:));
	Method replacement = class_getInstanceMethod(class, @selector(myToggleFullScreen:));
	method_exchangeImplementations(orig, replacement);
	NSLog(@"Native FullScreen Disabled");
}
@end