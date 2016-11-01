//
//  ContactList.m
//  Contact List
//
//  Created by Erin Luu on 2016-11-01.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}


-(void) addContact:(Contact *) newContact {
    self.contacts = [NSMutableArray arrayWithObjects: newContact, nil];
}

@end
