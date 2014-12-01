//
//  DetailTable.m
//  EjemploHerencia
//
//  Created by Jaime  Acevedo Cerna on 13-07-14.
//  Copyright (c) 2014 Jaime  Acevedo Cerna. All rights reserved.
//

#import "DetailTable.h"

@interface DetailTable ()

@end

@implementation DetailTable

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.labelOutlet setText:self.tweet];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnVolver:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
