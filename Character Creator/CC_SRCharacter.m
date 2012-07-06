//
//  CC_SRCharacter.m
//  Character Creator
//
//  Created by Jack Reichelt on 6/07/12.
//  Copyright (c) 2012 O'Connells OBM. All rights reserved.
//

#import "CC_SRCharacter.h"

@implementation CC_SRCharacter

@synthesize name;
@synthesize alias;
@synthesize metatype;
@synthesize age;
@synthesize sex;
@synthesize money;
@synthesize totalKarma;
@synthesize currentKarma;
@synthesize lifestyle;
@synthesize streetCred;
@synthesize notoriety;
@synthesize publicAwareness;

- ( NSString *) description {
    
    return [NSString stringWithFormat:@"name: %@", self.name];
    
}

@end
