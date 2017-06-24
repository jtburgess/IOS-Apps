//
//  CG1ViewController.m
//  CardGame
//
//  Created by John Burgess on 11/17/13.
//  Copyright (c) 2013 JohnBurgess. All rights reserved.
//

#import "CG1ViewController.h"
#import "PlayingCardDeck.h"

@interface CG1ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *FlipLabel;
@property (nonatomic) int flipCount;
@property (nonatomic, strong) PlayingCardDeck* myDeck;
@end

@implementation CG1ViewController

- (Deck *) myDeck
{
    if (!_myDeck) {
        _myDeck = [[PlayingCardDeck alloc] init];
    }
    return _myDeck;
}

/////////// inserted with a ctl-drag from the storyboard
- (IBAction)FlipCard:(UIButton *)sender
{
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed: @"cardBack"]
                          forState:(UIControlStateNormal)];
        [sender setTitle: @""
                forState:(UIControlStateNormal)];
    } else {
        Card *myCard = [self.myDeck drawRandomCard];
        if (myCard) {
            self.flipCount ++;
            [sender setBackgroundImage:[UIImage imageNamed: @"cardFront"]
                              forState:(UIControlStateNormal)];
            [sender setTitle: myCard.value
                    forState:(UIControlStateNormal)];
        }
        // else when out of cards, just stop flipping
        NSLog(@"flipcount=%d, card=%@", self.flipCount, myCard);
        
    }
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.FlipLabel.text = [NSString stringWithFormat: @"Flips: %d", _flipCount];
    
}

@end

/**** preserve base code we were told to delete!?
 
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 // Do any additional setup after loading the view, typically from a nib.
 }
 
 - (void)didReceiveMemoryWarning
 {
 [super didReceiveMemoryWarning];
 // Dispose of any resources that can be recreated.
 }
****/