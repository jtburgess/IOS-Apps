//
//  PlayingCard.h
//  CardGame
//
//  Created by John Burgess on 11/17/13.
//  Copyright (c) 2013 JohnBurgess. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (strong, nonatomic) NSString *suit;
// note different than class notes, which was an int
@property (strong, nonatomic) NSString *rank;

+ (NSArray *) validRanks;
+ (NSArray *) validSuits;

@end
