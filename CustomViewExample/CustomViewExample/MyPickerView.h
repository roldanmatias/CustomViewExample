//
//  MyPickerView.h
//  CustomViewExample
//
//  Created by Matias Roldan on 2/14/12.
//  Copyright (c) 2012 unlam. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MyPickerViewDelegate <UIPickerViewDelegate, UIPickerViewDataSource>
- (void)didSelectedData:(NSInteger)row;
@end


@interface MyPickerView : UIView

@property (weak, nonatomic) id<MyPickerViewDelegate> delegate;
@property (strong, nonatomic) IBOutlet UILabel *lblSelectedValue;
@property (strong, nonatomic) IBOutlet UIPickerView *pvPicker;
@property (strong, nonatomic) NSArray *pickerData;

@end
