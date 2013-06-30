//
//  PLShrinkingButton.h
//  PLShrinkingButton
//
//  Created by Peter Livesey on 6/30/13.
//  Copyright (c) 2013 Peter Livesey. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PLShrinkingButton : UIButton

//Default is .95
@property (nonatomic) CGFloat shrinkRatio;
//Border Radius
@property (nonatomic) CGFloat cornerRadius;

+ (instancetype)shrinkingButton;

@end
