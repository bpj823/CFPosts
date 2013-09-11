//
//  D1NewViewController.h
//  CFPosts
//
//  Created by Brad on 9/10/13.
//  Copyright (c) 2013 Brad. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SavePostDelegate <NSObject>

-(void)savePost:(NSArray *)data;

@end

@interface D1NewViewController : UIViewController

@property (nonatomic,assign) id<SavePostDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *contentTextField;
@property (strong, nonatomic) IBOutlet UITextField *titleTextField;
@property (strong, nonatomic) IBOutlet UITextField *userNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *timeStampTextField;

@end
