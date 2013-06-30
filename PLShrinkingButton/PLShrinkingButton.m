//
//  PLShrinkingButton.m
//  PLShrinkingButton
//
//  Created by Peter Livesey on 6/30/13.
//  Copyright (c) 2013 Peter Livesey. All rights reserved.
//

#import "PLShrinkingButton.h"
#import <QuartzCore/QuartzCore.h>


@interface PLShrinkingButton ()

@property (nonatomic) BOOL initializationComplete;

@end

@implementation PLShrinkingButton

#pragma mark - Initialization

- (void)commonInit
{
   if (!self.initializationComplete)
   {
      [self addTarget:self action:@selector(shrinkButton) forControlEvents:UIControlEventTouchDown];
      [self addTarget:self action:@selector(shrinkButton) forControlEvents:UIControlEventTouchDragEnter];
      
      [self addTarget:self action:@selector(enlargeButton) forControlEvents:UIControlEventTouchDragExit];
      [self addTarget:self action:@selector(enlargeButton) forControlEvents:UIControlEventTouchUpInside];
      [self addTarget:self action:@selector(enlargeButton) forControlEvents:UIControlEventTouchCancel];
      
      self.initializationComplete = YES;
   }
   
   self.shrinkRatio = .95;
}

- (id)init
{
   if ([super init])
   {
      [self commonInit];
   }
   return self;
}

- (id)initWithFrame:(CGRect)frame
{
   if ([super initWithFrame:frame])
   {
      [self commonInit];
   }
   return self;
}

#pragma mark - Public

+ (instancetype)shrinkingButton
{
   return [[[self class] alloc] init];
}

#pragma mark - Properties

- (void)setCornerRadius:(CGFloat)cornerRadius
{
   _cornerRadius = cornerRadius;
   self.layer.cornerRadius = cornerRadius;
   self.layer.masksToBounds = YES;
}

#pragma mark - Button Callbacks

- (void)shrinkButton
{
   self.transform = CGAffineTransformMakeScale(self.shrinkRatio, self.shrinkRatio);
}

- (void)enlargeButton
{
   self.transform = CGAffineTransformIdentity;
}

@end
