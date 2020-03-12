//
//  ViewController.m
//  beeping-hello
//
//  Created by ----- on 07/03/2020.
//  Copyright © 2020 -----. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if ( _beepingManager == NULL ) {
        
        // Instance Creation
        _beepingManager = [Beeping instance];
        
        // Self reference
        _beepingManager.delegate = self ;
        
    }
    
    // Listening ...
    [_beepingManager listen] ;
    
}

// BEEPING DELEGATE IMPLEMENTATION

- (void) beepIdWith:(NSString *)beep_id {
    
    NSLog(@"The Beep data is: %@", beep_id );
    
    if ( _beepingManager != NULL ) {
        
        // Stop Listening ...
        [_beepingManager stop] ;
        
    }
    
}


@end
