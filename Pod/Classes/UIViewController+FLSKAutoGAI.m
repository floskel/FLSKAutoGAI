//
//  UIViewController+FLSKAutoGAI.m
//  Pods
//
//  Created by Karlo Kristensen on 14/08/14.
//
//

#import "UIViewController+FLSKAutoGAI.h"
#import <objc/runtime.h>
#import "GAI.h"
#import "GAIFields.h"
#import "GAIDictionaryBuilder.h"
#import "FLSKScreenNameProtocol.h"

@implementation UIViewController (FLSKAutoGAI)

+ (void)load {
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
	    Class class = [self class];

	    // When swizzling a class method, use the following:
	    // Class class = object_getClass((id)self);

	    SEL originalSelector = @selector(viewDidAppear:);
	    SEL swizzledSelector = @selector(autoGAI_viewDidAppear:);

	    Method originalMethod = class_getInstanceMethod(class, originalSelector);
	    Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);

	    BOOL didAddMethod =
	        class_addMethod(class,
	                        originalSelector,
	                        method_getImplementation(swizzledMethod),
	                        method_getTypeEncoding(swizzledMethod));

	    if (didAddMethod) {
	        class_replaceMethod(class,
	                            swizzledSelector,
	                            method_getImplementation(originalMethod),
	                            method_getTypeEncoding(originalMethod));
		}
	    else {
	        method_exchangeImplementations(originalMethod, swizzledMethod);
		}
	});
}

- (void)autoGAI_viewDidAppear:(BOOL)animated {
	[self autoGAI_viewDidAppear:animated];
	NSString *screenName = NSStringFromClass([self class]);
	if ([self conformsToProtocol:@protocol(FLSKScreenNameProtocol)]) {
		if ([self respondsToSelector:@selector(screenName)]) {
			NSString *name = [self performSelector:@selector(screenName)];
			if (name != nil) {
				screenName = name;
			}
		}
	}

	id tracker = [[GAI sharedInstance] defaultTracker];
	[tracker set:kGAIScreenName value:screenName];
	[tracker send:[[GAIDictionaryBuilder createScreenView] build]];
}

@end
