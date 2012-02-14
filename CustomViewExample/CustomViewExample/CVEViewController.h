//
//  CVEViewController.h
//  CustomViewExample
//
//  Created by Matias Roldan on 13/02/12.
//  Copyright (c) 2012 unlam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyPickerView.h"

@interface CVEViewController : UIViewController <MyPickerViewDelegate>
{
    
}
@property (strong, nonatomic) IBOutlet UILabel *lblThread;
@property (strong, nonatomic) IBOutlet MyPickerView *picker;

@end
