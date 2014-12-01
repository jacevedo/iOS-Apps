//
//  ViewController.h
//  pruebaConeccionPOST
//
//  Created by Jaime  Acevedo Cerna on 04-07-14.
//  Copyright (c) 2014 Jaime  Acevedo Cerna. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController//<NSURLConnectionDelegate>
- (IBAction)btnLlamadaServicio:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *txtTextoLlamada;
@property (strong, nonatomic) NSMutableData *responseData;

@end
