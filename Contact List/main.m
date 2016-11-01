//
//  main.m
//  Contact List
//
//  Created by Erin Luu on 2016-11-01.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
#import "ContactList.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *userInput = [[InputCollector alloc] init];
        
        while (true) {
            NSString * userChoice = [userInput inputForPrompt:@"show menu"];
            
            if ([userChoice isEqualToString:@"quit"]){
                NSLog(@"Bye bye.");
                break;
            }
        }
    }
    return 0;
}
