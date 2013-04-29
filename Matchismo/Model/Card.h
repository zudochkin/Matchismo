//
//  Card.h
//  Matchismo
//
//  Created by Dmitry Zudochkin on 4/28/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong) NSString *contents;

@property (nonatomic, getter = isFaceUp) BOOL faceUp;
@property (nonatomic, getter = isUnplayable) BOOL unplayable;

- (int)match:(NSArray *)otherCards;
@end
