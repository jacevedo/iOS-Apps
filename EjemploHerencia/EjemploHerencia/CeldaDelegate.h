//
//  CeldaDelegate.h
//  EjemploHerencia
//
//  Created by Jaime  Acevedo Cerna on 14-07-14.
//  Copyright (c) 2014 Jaime  Acevedo Cerna. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CeldaDelegate <NSObject>
@optional
- (void)deleteButtonTappedOnCell:(id)sender;
@end

@interface Celda : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *title;
- (IBAction)btnCelda:(id)sender;
@property (nonatomic, strong) id <CeldaDelegate> delegate;
@end
