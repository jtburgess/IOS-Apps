//
//  CardMatchingGame.h
//  CardGame
//
//  Created by John Burgess on 11/22/13.
//  Copyright (c) 2013 JohnBurgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

- (instancetype) initWithCardCount:(NSUInteger)count
                         usingDeck:(Deck *)deck;

- (void) chooseCardAtIndex:(NSUInteger) index;
- (Card *)cardAtIndex:(NSUInteger) index;

@property (nonatomic, readonly) NSInteger score;

@end
