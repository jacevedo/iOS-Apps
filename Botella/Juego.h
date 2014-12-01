//
//  Juego.h
//  Botella
//
//  Created by Jaime  Acevedo Cerna on 25-11-13.
//  Copyright (c) 2013 Jaime  Acevedo Cerna. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Juego : UIViewController
- (IBAction)btnJuego:(id)sender;
- (IBAction)Volver:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *botella;


@end
