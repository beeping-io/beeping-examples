//
//  ViewController.h
//  beeping-hello
//
//  Created by ---- on 07/03/2020.
//  Copyright © 2020 ----. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <Beeping/Beeping.h>

@interface ViewController : UIViewController <beepingDelegate>

    @property (strong, nonatomic) Beeping *beepingManager;

@end

