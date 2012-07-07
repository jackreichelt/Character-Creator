//
//  CC_AppDelegate.h
//  Character Creator
//
//  Created by Jack Reichelt on 6/07/12.
//  Copyright (c) 2012 O'Connells OBM. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class CC_SRCharacter;

@interface CC_AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

// Actual character variable
@property (strong) CC_SRCharacter *character;

// Fields for general character state.
// Also includes Metatype popup box
@property (weak) IBOutlet NSTextField *aliasField;
@property (weak) IBOutlet NSTextField *nameField;
@property (weak) IBOutlet NSPopUpButton *metatypeSelect;
@property (weak) IBOutlet NSTextField *ageField;
@property (weak) IBOutlet NSTextField *sexField;
@property (weak) IBOutlet NSTextField *moneyField;
@property (weak) IBOutlet NSTextField *totalKarmaField;
@property (weak) IBOutlet NSTextField *currentKarmaField;
@property (weak) IBOutlet NSTextField *lifestyleField;
@property (weak) IBOutlet NSTextField *streetCredField;
@property (weak) IBOutlet NSTextField *notorietyField;
@property (weak) IBOutlet NSTextField *publicAwarenessField;

// Fields for the attributes, grouped by categort
// Physical
@property (weak) IBOutlet NSTextField *bodyAttField;
@property (weak) IBOutlet NSTextField *agilityAttField;
@property (weak) IBOutlet NSTextField *reactionAttField;
@property (weak) IBOutlet NSTextField *strengthAttField;
// Mental
@property (weak) IBOutlet NSTextField *charismaAttField;
@property (weak) IBOutlet NSTextField *intuitionAttField;
@property (weak) IBOutlet NSTextField *logicAttField;
@property (weak) IBOutlet NSTextField *willpowerAttField;
// Special
@property (weak) IBOutlet NSTextField *edgeAttField;
@property (weak) IBOutlet NSTextField *currentEdgeField;
@property (weak) IBOutlet NSTextField *essenceAttField;
@property (weak) IBOutlet NSTextField *initiativeAttField;
@property (weak) IBOutlet NSTextField *astralInitiativeAttField;
@property (weak) IBOutlet NSTextField *matrixInitiativeAttField;
@property (weak) IBOutlet NSTextField *initativePassesAttField;
@property (weak) IBOutlet NSTextField *magicResonanceAttField;



@end
