//
//  InputCollector.m
//  Contact List
//
//  Created by Erin Luu on 2016-11-01.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    char input [255];
    // Print the menu
    if ([promptString isEqual: @"show menu"]) {
        NSLog(@"What would you like do next? \rnew - Create a new contact \rlist - List all contacts \rquit - Exit Application");
    } else if ([promptString isEqual: @"name"]) {
        NSLog(@"Full Name:");
    } else if ([promptString isEqual: @"email"]) {
        NSLog(@"Email Address:");
    }
    
    // Get user input
    fgets(input, 255, stdin);
    input[strcspn(input, "\n")] = 0;
    NSString * cleanInput = [NSString stringWithCString:input encoding:(NSUTF8StringEncoding)];
    return cleanInput;
}
@end
