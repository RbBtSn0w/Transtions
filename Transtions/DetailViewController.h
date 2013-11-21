//
//  DetailViewController.h
//  Transtions
//
//  Created by Snow on 11/21/13.
//  Copyright (c) 2013 RbBtSn0w. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
