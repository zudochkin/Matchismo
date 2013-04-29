//
//  PlayingCard.h
//  Matchismo
//
//  Created by Dmitry Zudochkin on 4/29/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
