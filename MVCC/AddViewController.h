//
//  AddViewController.h
//  MVCC
//
//  Created by James Tang on 23/1/2016.
//  Copyright © 2016 James Tang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@protocol AddController;

@protocol AddViewController <ViewController>

@end


@interface AddViewController : ViewController <AddViewController>

@end
