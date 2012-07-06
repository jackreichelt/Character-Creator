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
    
    NSLog(@"%@ ", self.name);
    NSLog(@"%@ ", self.alias);
    NSLog(@"%@ ", self.metatype);
    NSLog(@"%ld ", self.age);
    NSLog(@"%@ ", self.sex);
    NSLog(@"%ld ", self.money);
    NSLog(@"%ld ", self.totalKarma);
    NSLog(@"%ld ", self.currentKarma);
    NSLog(@"%@ ", self.lifestyle);
    NSLog(@"%@ ", self.streetCred);
    NSLog(@"%@ ", self.notoriety);
    NSLog(@"%@ ", self.publicAwareness);
    return nil;
    
}

@end
