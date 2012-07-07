//
//  CC_AppDelegate.m
//  Character Creator
//
//  Created by Jack Reichelt on 6/07/12.
//  Copyright (c) 2012 O'Connells OBM. All rights reserved.
//

#import "CC_SRCharacter.h"
#import "CC_AppDelegate.h"

#define k_nameField 1
#define k_aliasField 2
#define k_ageField 3
#define k_sexField 4
#define k_moneyField 5
#define k_totalKarmaField 6
#define k_currentKarmaField 7
#define k_lifestyleField 8
#define k_streetCredField 9
#define k_notorietyField 10
#define k_publicAwarenessField 11

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
    // Create an instance of the character class for use.
    self.character = [[CC_SRCharacter alloc] init];
    
    // Initialize all appropriate fields, and set default values for all character attributes. This prevents Nulls from leaving as the default metatype.
    {
        character.name = @"";
        character.alias = @"";
        [self.metatypeSelect selectItemAtIndex:0];
        character.metatype = self.metatypeSelect.titleOfSelectedItem;
        character.age = 0;
        character.sex = @"";
        character.money = 0;
        character.totalKarma = 0;
        character.currentKarma = 0;
        character.lifestyle = @"";
        character.streetCred = @"";
        character.notoriety = @"";
        character.publicAwareness = @"";
    }
}

- (IBAction)debugButton:(id)sender {
    
    // Print the character description. Goes to NSLog
    //[character description];

    // Call the write to file function.
    //[character writeToFile:@"test.XML"];
    
    [self saveCharacter:nil];
}

- (void)controlTextDidChange:(NSNotification *)aNotification {
    // this method will be called after every keystroke, so you can do what you like here
    switch ([aNotification.object tag]) {
        case k_nameField:
            character.name = self.nameField.stringValue;
            break;
        case k_aliasField: 
            character.alias = self.aliasField.stringValue;
            break;
        case k_ageField:
            character.age = self.ageField.stringValue.integerValue;
            break;
        case k_sexField:
            character.sex = self.sexField.stringValue;
            break;
        case k_moneyField:
            character.money = self.moneyField.stringValue.integerValue;
            break;
        case k_totalKarmaField:
            character.totalKarma = self.totalKarmaField.stringValue.integerValue;
            break;
        case k_currentKarmaField:
            character.currentKarma = self.currentKarmaField.stringValue.integerValue;
            break;
        case k_lifestyleField:
            character.lifestyle = self.lifestyleField.stringValue;
            break;
        case k_streetCredField:
            character.streetCred = self.streetCredField.stringValue;
            break;
        case k_notorietyField:
            character.notoriety = self.notorietyField.stringValue;
            break;
        case k_publicAwarenessField:
            character.publicAwareness = self.publicAwarenessField.stringValue;
            break;
            
        default:
            break;
    }
}

- (IBAction)metatypeUpdate:(id)sender {
    character.metatype = self.metatypeSelect.titleOfSelectedItem;
}

- (IBAction)saveCharacter:(id)sender
{
    //NSString *charData = [self.character characterXML];
    // NSLog(@"Game data:\n%@", gameData);
    
    NSSavePanel *panel = [NSSavePanel savePanel];
    [panel setNameFieldStringValue:[NSString stringWithFormat:@"%@.char", self.character.name]];
    [panel beginSheetModalForWindow:self.window completionHandler:^(NSInteger result) {
        if (result == NSFileHandlingPanelOKButton) {
            NSError *error = [[NSError alloc] init];
            
            if (![character writeToFile:[panel URL]]) {
                NSLog(@"Error saving file: %@", [error localizedDescription]);
            } else {
                //NSLog(@"Game saved to %@", [panel URL]);
            }
            /*if (![charData writeToURL:[panel URL] atomically:YES encoding:NSUTF8StringEncoding error:&error])
                //NSLog(@"Error saving file: %@", [error localizedDescription]);
            else {
                //NSLog(@"Game saved to %@", [panel URL]);
            }*/
        }
    }];
}


@end
