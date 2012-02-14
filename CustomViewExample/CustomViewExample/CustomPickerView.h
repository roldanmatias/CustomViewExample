//
//  CustomPickerView.h
//  CustomViewExample
//
//  Created by Matias Roldan on 13/02/12.
//  Copyright (c) 2012 unlam. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomPickerViewDelegate <UIPickerViewDelegate, UIPickerViewDataSource>
- (void)didSelectedData:(NSInteger)row;
@end

@interface CustomPickerView : UIViewController
@property (weak, nonatomic) id<CustomPickerViewDelegate> delegate;
@property (strong, nonatomic) IBOutlet UILabel *lblSelectedValue;
@property (strong, nonatomic) IBOutlet UIPickerView *pvPicker;
@property (strong, nonatomic) NSArray *pickerData;

@end
