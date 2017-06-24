//
//  PlayingCard.m
//  CardGame
//
//  Created by John Burgess on 11/17/13.
//  Copyright (c) 2013 JohnBurgess. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

// implement suit as one of a specific set
@synthesize suit = _suit;

+ (NSArray *) validSuits
{
    return @[@"♣",@"♦",@"♥",@"♠"];
}
- (void) setSuit: (NSString *) suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    } else {
        NSLog(@"attempt to set suit to invalid valud: %@", suit);
    }
}
- (NSString *)suit
{
    return (_suit ? _suit : @"?");
}

// implement rank as one of a specific set
@synthesize rank = _rank;
+ (NSArray *) validRanks
{
    return @[@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K",@"A"];
}
- (void) setRank: (NSString *) rank
{
    if ([[PlayingCard validRanks] containsObject:rank]) {
        _rank = rank;
    } else {
        NSLog(@"attempt to set rank to invalid valud: %@", rank);
    }
}
- (NSString *)rank
{
    return (_rank ? _rank : @"?");
}

// override base class implementation
- (NSString*) value
{
    return [NSString stringWithFormat:@"%@ %@", self.rank, self.suit];
}
@end
