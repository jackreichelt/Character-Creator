//
//  CC_AppDelegate.m
//  Character Creator
//
//  Created by Jack Reichelt on 6/07/12.
//  Copyright (c) 2012 O'Connells OBM. All rights reserved.
//

#import "CC_SRCharacter.h"
#import "CC_AppDelegate.h"

@implementation CC_AppDelegate
@synthesize edgeAttField = _edgeAttField;
@synthesize currentEdgeField = _currentEdgeField;
@synthesize essenceAttField = _essenceAttField;
@synthesize initiativeAttField = _initiativeAttField;
@synthesize astralInitiativeAttField = _astralInitiativeAttField;
@synthesize matrixInitiativeAttField = _matrixInitiativeAttField;
@synthesize initativePassesAttField = _initativePassesAttField;
@synthesize magicResonanceAttField = _magicResonanceAttField;
@synthesize charismaAttField = _charismaAttField;
@synthesize intuitionAttField = _intuitionAttField;
@synthesize logicAttField = _logicAttField;
@synthesize willpowerAttField = _willpowerAttField;
@synthesize bodyAttField = _bodyAttField;
@synthesize agilityAttField = _agilityAttField;
@synthesize reactionAttField = _reactionAttField;
@synthesize strengthAttField = _strengthAttField;

@synthesize nameField = _nameField;
@synthesize metatypeSelect = _metatypeSelect;
@synthesize ageField = _ageField;
@synthesize sexField = _sexField;
@synthesize moneyField = _moneyField;
@synthesize totalKarmaField = _totalKarmaField;
@synthesize currentKarmaField = _currentKarmaField;
@synthesize lifestyleField = _lifestyleField;
@synthesize streetCredField = _streetCredField;
@synthesize notorietyField = _notorietyField;
@synthesize publicAwarenessField = _publicAwarenessField;
@synthesize window = _window;
@synthesize aliasField = _aliasField;

@synthesize character;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.character = [[CC_SRCharacter alloc] init];
}

- (IBAction)debugButton:(id)sender {
    NSLog(@"%@ ", character.name);
    NSLog(@"%@ ", character.alias);
    NSLog(@"%@ ", character.metatype);
    NSLog(@"%@ ", character.age);
    NSLog(@"%@ ", character.sex);
    NSLog(@"%@ ", character.totalKarma);
    NSLog(@"%@ ", character.currentKarma);
    NSLog(@"%@ ", character.lifestyle);
    NSLog(@"%@ ", character.streetCred);
    NSLog(@"%@ ", character.notoriety);
    NSLog(@"%@ ", character.publicAwareness);
}

- (IBAction)nameUpdate:(id)sender {
    character.name = self.nameField.stringValue;   
}

- (IBAction)aliasUpdate:(id)sender {
    character.alias = self.aliasField.stringValue;
}

- (IBAction)metatypeUpdate:(id)sender {
    character.metatype = self.metatypeSelect.titleOfSelectedItem;
}

- (IBAction)ageUpdate:(id)sender {
    character.age = self.ageField.stringValue.integerValue;
}

- (IBAction)sexUpdate:(id)sender {
    character.sex = self.sexField.stringValue;
}

- (IBAction)moneyUpdate:(id)sender {
    character.money = self.moneyField.stringValue.integerValue;
}

- (IBAction)totalKarmaUpdate:(id)sender {
    character.totalKarma = self.totalKarmaField.stringValue.integerValue;
}

- (IBAction)currentKarmaUpdate:(id)sender {
    character.currentKarma = self.currentKarmaField.stringValue.integerValue;
}

- (IBAction)lifestyleUpdate:(id)sender {
    character.lifestyle = self.lifestyleField.stringValue;
}

- (IBAction)streetCredUpdate:(id)sender {
    character.streetCred = self.streetCredField.stringValue;
}

- (IBAction)notorietyUpdate:(id)sender {
    character.notoriety = self.notorietyField.stringValue;
}

- (IBAction)publicAwarenessUpdate:(id)sender {
    character.publicAwareness = self.publicAwarenessField.stringValue;
}



@end
