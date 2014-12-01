//
//  DetailTable.h
//  EjemploHerencia
//
//  Created by Jaime  Acevedo Cerna on 13-07-14.
//  Copyright (c) 2014 Jaime  Acevedo Cerna. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailTable : UIViewController
@property (nonatomic, strong) NSString *tweet;
@property (weak, nonatomic) IBOutlet UILabel *labelOutlet;
- (IBAction)btnVolver:(id)sender;

@end
