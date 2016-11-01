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
        InputCollector *input = [[InputCollector alloc] init];
        ContactList *contactList = [[ContactList alloc] init];
        
        while (true) {
            NSString * userChoice = [input inputForPrompt:@"show menu"];
            
            if ([userChoice isEqualToString:@"quit"]){
                NSLog(@"Bye bye.");
                break;
            } else if ([userChoice isEqualToString:@"new"]){
                Contact * newContact = [[Contact alloc] init];
                NSString * fullName  = [input inputForPrompt:@"name"];
                newContact.fullname = fullName;
                NSString * emailaddress  = [input inputForPrompt:@"email"];
                newContact.email = emailaddress;
                [contactList addContact:newContact];
                
            } else if ([userChoice isEqualToString:@"list"]){
                [contactList printList];
            }
            
            
        }
    }
    return 0;
}
