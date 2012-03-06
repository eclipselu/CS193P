//
//  ViewController.m
//  Hello
//
//  Created by Lu Dang on 3/6/12.
//  Copyright (c) 2012 Zhejiang University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize numberOfSides;
@synthesize addSide;
@synthesize reduceSide;
@synthesize nameOfPolygon;
@synthesize minSides;
@synthesize maxSides;
@synthesize polyAngle;
@synthesize poly;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    poly = [[PolygonShape alloc] init];
    maxSides.text = [NSString stringWithFormat:@"%d", poly.maximumNumberOfSides];
    minSides.text = [NSString stringWithFormat:@"%d", poly.minimumNumberOfSides];
    [self updateView];
}

- (void)viewDidUnload
{
    [self setNumberOfSides:nil];
    [self setAddSide:nil];
    [self setReduceSide:nil];
    [self setNameOfPolygon:nil];
    [self setMinSides:nil];
    [self setMaxSides:nil];
    [self setPolyAngle:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)updateView
{
    numberOfSides.text = [NSString stringWithFormat:@"%d", poly.numberOfSides];
    nameOfPolygon.text = [poly name];
    polyAngle.text  = [NSString stringWithFormat:@"%.2f degrees( %.2f radians)", poly.angleInDegrees, poly.angleInRadians];
}

- (IBAction)addClicked:(id)sender 
{
    int sides = poly.numberOfSides;
    if (sides < poly.maximumNumberOfSides) 
    {
        [poly setNumberOfSides:sides+1];        
    }
    else 
    {
        [addSide setEnabled:FALSE];
    }
    
    if (sides+1 > poly.minimumNumberOfSides)
    {
        [reduceSide setEnabled:TRUE];
    }
    
    [self updateView];
}

- (IBAction)reduceClicked:(id)sender 
{
    int sides = poly.numberOfSides;
    if (sides > poly.minimumNumberOfSides) 
    {
        [poly setNumberOfSides:sides-1];
        numberOfSides.text = [NSString stringWithFormat:@"%d", poly.numberOfSides];
    }
    else 
    {
        [reduceSide setEnabled:FALSE];
        reduceSide.enabled = NO;
    }
    
    if (sides-1 < poly.maximumNumberOfSides)
    {
        [addSide setEnabled:TRUE];
    }
    
    [self updateView];
}
@end
