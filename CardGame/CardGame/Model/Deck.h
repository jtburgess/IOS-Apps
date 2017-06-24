//
//  Deck.h
//  CardGame
//
//  Created by John Burgess on 11/17/13.
//  Copyright (c) 2013 JohnBurgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void) addCard: (Card *) card atTop:(BOOL)atTop;
-(void) addCard: (Card *) card;

-(Card *) drawRandomCard;
-(Card *) dealFromTop;

@end
