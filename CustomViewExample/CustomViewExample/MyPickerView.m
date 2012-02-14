//
//  MyPickerView.m
//  CustomViewExample
//
//  Created by Matias Roldan on 2/14/12.
//  Copyright (c) 2012 unlam. All rights reserved.
//

#import "MyPickerView.h"

@implementation MyPickerView

@synthesize delegate = _delegate;
@synthesize lblSelectedValue = _lblSelectedValue;
@synthesize pvPicker = _pvPicker;
@synthesize pickerData = _pickerData;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}



// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    NSLog(@"MyPickerView drawRect");
}


#pragma mark Picker Data Source Methods


// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [self.pickerData count];
}


#pragma mark Picker Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    return [self.pickerData objectAtIndex:row];
}

/*
 // returns width of column and height of row for each component. 
 - (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component {
 
 }
 - (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {
 
 }
 
 - (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
 
 }
 */

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    self.lblSelectedValue.text = [self.pickerData objectAtIndex:row];
    
    [self.delegate didSelectedData:row];
}


@end
