//
//  CC_SRCharacter.h
//  Character Creator
//
//  Created by Jack Reichelt on 6/07/12.
//  Copyright (c) 2012 O'Connells OBM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CC_SRCharacter : NSObject

// Variable(s) to store the XML rendition of the character
@property (strong) NSXMLDocument *xmlDoc;
//@property (strong) NSMutableDictionary *characterDict;

// Main page - top section property variables
@property (strong) NSString *name;
@property (strong) NSString *alias;
@property (strong) NSString *metatype;
@property NSInteger age;
@property (strong) NSString *sex;
@property NSInteger money;
@property NSInteger totalKarma;
@property NSInteger currentKarma;
@property (strong) NSString *lifestyle;
@property (strong) NSString *streetCred;
@property (strong) NSString *notoriety;
@property (strong) NSString *publicAwareness;

// File I/O function prototypes
- (BOOL)writeToFile:(NSURL *)filename;
- (NSDictionary *)characterDictionary;
- (NSString *)characterXML;
//- (IBAction)saveCharacter:(id)sender;

@end
