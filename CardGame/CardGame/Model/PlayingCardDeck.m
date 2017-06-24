//
//  PlayingCardDeck.m
//  CardGame
//
//  Created by John Burgess on 11/17/13.
//  Copyright (c) 2013 JohnBurgess. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

// on initialization, fill in a complete deck -- sorted!
- (instancetype) init
{
    self = [super init];
    int count = 0;
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSString *rank in [PlayingCard validRanks]) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
                count++;
            }
        }
        
    }
    
    NSLog(@"playing card deck initialized with %d cards.", count);
    return self;
}

@end
