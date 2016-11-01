//
//  ContactList.h
//  Contact List
//
//  Created by Erin Luu on 2016-11-01.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray * contacts;

-(void) addContact:(Contact *) newContact;
-(void) printList;

@end
