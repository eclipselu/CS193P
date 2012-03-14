//
//  ViewController.h
//  Hello
//
//  Created by Lu Dang on 3/6/12.
//  Copyright (c) 2012 Zhejiang University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PolygonShape.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *numberOfSides;
@property (weak, nonatomic) IBOutlet UIButton *addSide;
@property (weak, nonatomic) IBOutlet UIButton *reduceSide;
@property (weak, nonatomic) IBOutlet UILabel *nameOfPolygon;
@property (weak, nonatomic) IBOutlet UILabel *minSides;
@property (weak, nonatomic) IBOutlet UILabel *maxSides;
@property (weak, nonatomic) IBOutlet UILabel *polyAngle;

@property (strong, nonatomic) PolygonShape *poly;

- (IBAction)addClicked:(id)sender;
- (IBAction)reduceClicked:(id)sender;

- (void)updateView;

@end
