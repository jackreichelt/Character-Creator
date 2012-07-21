//
//  CC_SRCharacter.m
//  Character Creator
//
//  Created by Jack Reichelt on 6/07/12.
//  Copyright (c) 2012 O'Connells OBM. All rights reserved.
//

#import "CC_SRCharacter.h"

@implementation CC_SRCharacter

@synthesize xmlDoc;
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
    
    NSLog(@"Testing character:");
    NSLog(@"Name: %@ ", self.name);
    NSLog(@"Alias: %@ ", self.alias);
    NSLog(@"Metatype: %@ ", self.metatype);
    NSLog(@"Age: %ld ", self.age);
    NSLog(@"Sex: %@ ", self.sex);
    NSLog(@"Money: %ld ", self.money);
    NSLog(@"Total Karma: %ld ", self.totalKarma);
    NSLog(@"Current Karma: %ld ", self.currentKarma);
    NSLog(@"Lifestyle: %@ ", self.lifestyle);
    NSLog(@"Street Cred: %@ ", self.streetCred);
    NSLog(@"Notoriety: %@ ", self.notoriety);
    NSLog(@"Public Awareness: %@ ", self.publicAwareness);
    return nil;
    
}

/*- (NSDictionary *)characterDictionary {
    // create a mutable dictionary object
    NSMutableDictionary *characterDict = [[NSMutableDictionary alloc] init];
    
    // add data to the dictionary as objects
    [characterDict setObject:self.name forKey:@"Name"];
    [characterDict setObject:self.alias forKey:@"Alias"];
    [characterDict setObject:self.metatype forKey:@"Metatype"];
    [characterDict setObject:[NSNumber numberWithInteger:self.age] forKey:@"Age"];
    [characterDict setObject:self.sex forKey:@"Sex"];
    [characterDict setObject:[NSNumber numberWithInteger:self.money] forKey:@"Money"];
    [characterDict setObject:[NSNumber numberWithInteger:self.totalKarma] forKey:@"TotalKarma"];
    [characterDict setObject:[NSNumber numberWithInteger:self.currentKarma] forKey:@"CurrentKarma"];
    [characterDict setObject:self.lifestyle forKey:@"Lifestyle"];
    [characterDict setObject:self.streetCred forKey:@"StreetCred"];
    [characterDict setObject:self.notoriety forKey:@"Notoriety"];
    [characterDict setObject:self.publicAwareness forKey:@"PublicAwareness"];
    
    
    // convert numbers & booleans to NSNumber objects
    //[characterDict setObject:[NSNumber numberWithInteger:self.showPossibleMoves] forKey:@"ShowPossibles"];
    //[characterDict setObject:[NSNumber numberWithBool:self.boolVar forKey:@"SomethingBoolean"];
    //[characterDict setObject:[NSNumber numberWithFloat:self.floatVar forKey:@"FloatingPointNumber"];
      
    return characterDict;
}*/

/*- (NSString *)characterXML {
    NSDictionary *dict = [self characterDictionary];
    if (!dict) return nil;
    
    NSString *err = nil;
    NSData *plist = [NSPropertyListSerialization dataFromPropertyList:dict
                                                               format:NSPropertyListXMLFormat_v1_0
                                                     errorDescription:&err];
    if(plist == nil) {
        NSLog(@"NSPropertyListSerialization error: %@", err);
        return nil;
    }
    
    NSString *plistString = [[NSString alloc] initWithData:plist encoding:NSUTF8StringEncoding];
    return plistString;
}*/

- (BOOL)writeToFile:(NSURL *)fileName {
    
    // create the root of my XML tree
    NSXMLElement *root =
    (NSXMLElement *)[NSXMLNode elementWithName:@"character"];
    
    // create the actual XML doc
    xmlDoc = [[NSXMLDocument alloc] initWithRootElement:root];
    [xmlDoc setVersion:@"1.0"];
    [xmlDoc setCharacterEncoding:@"UTF-8"];
    //[xmlDoc setDocumentContentKind:];
    
    // add children to the root for the "fluff" attributes
    {
        //NSString *ageString = [[NSString alloc] initWithFormat:@"%ld", self.age];
        
        [root addChild:[NSXMLNode elementWithName:@"Name" stringValue:self.name]];
        [root addChild:[NSXMLNode elementWithName:@"Alias" stringValue:self.alias]];
        [root addChild:[NSXMLNode elementWithName:@"Metatype" stringValue:self.metatype]];
        [root addChild:[NSXMLNode elementWithName:@"Age" stringValue:[[NSString alloc] initWithFormat:@"%ld", self.age]]];
        [root addChild:[NSXMLNode elementWithName:@"Sex" stringValue:self.sex]];
        [root addChild:[NSXMLNode attributeWithName:@"Money" stringValue:[NSString stringWithFormat:@"%ld", [[NSString alloc] initWithFormat:@"%ld", self.money]]]];
        [root addChild:[NSXMLNode attributeWithName:@"Total Karma" stringValue:[NSString stringWithFormat:@"%ld", [[NSString alloc] initWithFormat:@"%ld", self.totalKarma]]]];
        [root addChild:[NSXMLNode attributeWithName:@"Current Karma" stringValue:[NSString stringWithFormat:@"%ld", [[NSString alloc] initWithFormat:@"%ld", self.currentKarma]]]];
        [root addChild:[NSXMLNode elementWithName:@"Lifestyle" stringValue:self.lifestyle]];
        [root addChild:[NSXMLNode elementWithName:@"Street Cred" stringValue:self.streetCred]];
        [root addChild:[NSXMLNode elementWithName:@"Notoriety" stringValue:self.notoriety]];
        [root addChild:[NSXMLNode elementWithName:@"Public Awareness" stringValue:self.publicAwareness]];
    }
     
    // test print
    NSData *xmlData = [xmlDoc XMLDataWithOptions:NSXMLNodePrettyPrint];
    if (![xmlData writeToURL:fileName atomically:YES]) {
        NSBeep();
        NSLog(@"Could not write document out...");
        return NO;
    }
    return YES;
}

@end
