//
//  main.m
//  iTahDoodle
//
//  Created by Nikolai Schlegel on 10/15/23.
//

#import <UIKit/UIKit.h>
#import "BNRAppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([BNRAppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
