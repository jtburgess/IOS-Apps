//
//  Deck.m
//  CardGame
//
//  Created by John Burgess on 11/17/13.
//  Copyright (c) 2013 JohnBurgess. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *deckOfCards;

@end

@implementation Deck
- (NSMutableArray *)deckOfCards
{
    if (!_deckOfCards) { _deckOfCards = [[NSMutableArray alloc] init]; }
    return _deckOfCards;
}

-(void) addCard: (Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.deckOfCards insertObject:card atIndex: 0];
    } else {
        [self.deckOfCards addObject:card ];
    }
    
}

-(void) addCard: (Card *)card
{
    [self addCard:card atTop:false];

}

-(Card *) drawRandomCard
{
    Card *randomCard = Nil;
    
    if ([self.deckOfCards count]) {
        unsigned index = arc4random() % [self.deckOfCards count];
        randomCard = self.deckOfCards[index];
        [self.deckOfCards removeObjectAtIndex:index];
    }
    
    return randomCard;
}


-(Card *) dealFromTop
{
    Card *topCard = Nil;
    
    if ([self.deckOfCards count]) {
        topCard = self.deckOfCards[0];
        [self.deckOfCards removeObjectAtIndex:0];
    }
    
    return topCard;
}

@end
