//
//  CVEViewController.m
//  CustomViewExample
//
//  Created by Matias Roldan on 13/02/12.
//  Copyright (c) 2012 unlam. All rights reserved.
//

#import "CVEViewController.h"
#import "CustomPickerView.h"

@interface CVEViewController ()

-(void)refreshLabel:(id)param;

@end

@implementation CVEViewController

@synthesize lblThread = _lblThread;
@synthesize picker = _picker;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.picker = [[MyPickerView alloc] initWithFrame:CGRectMake(0, 100, 320, 316)];
    UINib *nib = [UINib nibWithNibName:@"MyPickerView" bundle:[NSBundle mainBundle]];
    NSArray *topLevelItems = [nib instantiateWithOwner:self.picker options:nil];
    
    [self.view addSubview: [topLevelItems objectAtIndex:0]];

    self.picker.delegate = self;
    NSArray *array = [[NSArray alloc] initWithObjects:@"Homer", @"Marge", @"Bart", @"Lisa", @"Maggie", nil];
    self.picker.pickerData = array;

    [NSThread detachNewThreadSelector:@selector(refreshLabel:) toTarget:self withObject:nil];
}

- (void)viewDidUnload
{
    [self setLblThread:nil];
    [self setPicker:nil];
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

#pragma mark CustomPickerViewDelegate Methods

- (void)didSelectedData:(NSInteger)row {
    NSLog(@"Selected Data: %@", [self.picker.pickerData objectAtIndex:row]);
}

#pragma mark NSThread Methods

-(void)refreshLabel:(id)param {
    int x;
    for(x=0; x < 1001;++x)
    {
        NSLog(@"Count: %d", x);
        self.lblThread.text = [NSString stringWithFormat: @"Count: %d", x];
        usleep(1);
    }
}

@end
