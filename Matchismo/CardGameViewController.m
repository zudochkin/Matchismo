//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Dmitry Zudochkin on 4/28/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

@property (strong, nonatomic) PlayingCardDeck *deck;

@end

@implementation CardGameViewController

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)flipCard:(UIButton *)sender
{
    sender.selected = !sender.isSelected;
    
    if (sender.isSelected) {
        Card *card = self.deck.drawRandomCard;
        
        [sender setTitle:card.contents forState:UIControlStateSelected];
    }
    
    self.flipCount++;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.deck = [[PlayingCardDeck alloc] init];
}
@end
