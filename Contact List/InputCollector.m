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
    if ([promptString  isEqual: @"show menu"]) {
        // Print the menu
        NSString * menu = @"What would you like do next? \rnew - Create a new contact \rlist - List all contacts \rquit - Exit Application";
        NSLog(@"%@",menu);
        
        // Get user input
        char input [255];
        fgets(input, 255, stdin);
        input[strcspn(input, "\n")] = 0;
        NSString * userChoice = [NSString stringWithCString:input encoding:(NSUTF8StringEncoding)];
        return userChoice;
    }
    return 0;
}
@end
