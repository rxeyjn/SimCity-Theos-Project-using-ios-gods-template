#import <Preferences/Preferences.h>

@interface simcityListController: PSListController {
}
@end

@implementation simcityListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"simcity" target:self] retain];
	}
	return _specifiers;
}

/* The "Visit iOSGods.com" link inside the Preferences button */
- (void)link {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://iosgods.com"]];
} 
@end

// vim:ft=objc
