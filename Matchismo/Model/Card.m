//
//  Card.m
//  Matchismo
//
//  Created by Dmitry Zudochkin on 4/28/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import "Card.h"

@implementation Card
@synthesize contents = _contents;

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end
