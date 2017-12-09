#import "writeData.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <substrate.h>

/* To MSHook Offsets, use https://iosgods.com/topic/22718-mshook-tweakpatcherfunction-tweakpatcher-withwithout-psedittextcellpsslidercell-generator-online/ */
/* To Easily Generate Tweak.xm and Preferences Plist https://iosgods.com/topic/24138-code-inject-generator-online-tweakxm-preferencesplist/ */

#define PLIST_PATH @"/var/mobile/Library/Preferences/com.csci.patcher.simcity.plist"

inline bool GetPrefBool(NSString *key) {
		return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] boolValue];
}

%ctor {
	if(GetPrefBool(@"key1")) {
		writeData(0x0000000100E68DA8, 0xFF);
		writeData(0x0000000100E68DA9, 0xFF);
		writeData(0x0000000100E68DAA, 0xFF);
		writeData(0x0000000100E68DAB, 0xFF);
		writeData(0x0000000100E68DAC, 0xFF);
		writeData(0x0000000100E68DAD, 0xFF);
		writeData(0x0000000100E68DAE, 0xFF);
		writeData(0x0000000100E68DAF, 0xFF);
		writeData(0x0000000100E68DB0, 0xFF);
		writeData(0x0000000100E68DB1, 0xFF);
		writeData(0x0000000100E68DB2, 0xFF);
		writeData(0x0000000100E68DB3, 0xFF);
		writeData(0x0000000100E68DB4, 0xFF);
		writeData(0x0000000100E68DB5, 0xFF);
		writeData(0x0000000100E68DB6, 0xFF);
	} else {
}

}




/* Popup with a link

Varieties of a UIAlertView Popup can be found here: https://iosgods.com/topic/13988-varieties-of-uialertview-types-to-use-in-your-tweaks-patchers/

*/


%hook AppDelegate // Change this with your Application's Delegate. AppController, UnityAppController, GameDelegate etc.

- (BOOL)application:(id)fp8 didFinishLaunchingWithOptions:(id)fp12 { // Popup only once at each launch of the app.
UIAlertView *igcredits = [[UIAlertView alloc] initWithTitle:@"simcity Cheats"
                                                  message:@"\nsimcity Cheats by Rxeyjn for iOSGods.com"
                                                 delegate:self
										cancelButtonTitle:@"Thanks"
										otherButtonTitles:@"Visit Us", nil];
[igcredits show];
[igcredits release];
return %orig();
}

%end
