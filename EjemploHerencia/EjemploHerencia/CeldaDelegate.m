//
//  CeldaDelegate.m
//  EjemploHerencia
//
//  Created by Jaime  Acevedo Cerna on 14-07-14.
//  Copyright (c) 2014 Jaime  Acevedo Cerna. All rights reserved.
//

#import "CeldaDelegate.h"

@implementation Celda
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}


- (IBAction)btnCelda:(id)sender
{
    [self.delegate deleteButtonTappedOnCell:self];
}
@end
