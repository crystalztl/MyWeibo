//
//  TGCommentViewController.h
//  MyWeibo
//
//  Created by Theodore Guo on 10/1/17.
//  Copyright © 2017 Theodore Guo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TGPost;

@interface TGCommentViewController : UIViewController

// Post model
@property (nonatomic, strong) TGPost *post;

@end
