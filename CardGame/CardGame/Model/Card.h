//
//  Card.h
//  CardGame
//
//  Created by John Burgess on 11/17/13.
//  Copyright (c) 2013 JohnBurgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *value;

@property (nonatomic, getter=isChosen) BOOL chosen;

@end
