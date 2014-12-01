//
//  SeleccionBotella.m
//  Botella
//
//  Created by Jaime  Acevedo Cerna on 25-11-13.
//  Copyright (c) 2013 Jaime  Acevedo Cerna. All rights reserved.
//

#import "SeleccionBotella.h"

@interface SeleccionBotella ()

@end

@implementation SeleccionBotella
@synthesize Vista;

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
    UIImage *imagen = [UIImage imageNamed:@"Fondo.jpg"];
    CGSize porte = CGSizeMake(self.view.frame.size.width,self.view.frame.size.height);
    self.Vista.backgroundColor = [UIColor colorWithPatternImage:[self imageWithImage:imagen convertToSize:porte]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) mostrarMensaje
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Has seleccionado la botella 1" message:@"Diviertete" delegate:self cancelButtonTitle:@"Salir" otherButtonTitles:@"Volver",nil];
    [alert show];
}

- (IBAction)Botella1:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"1.png" forKey:@"botella"];
    [self mostrarMensaje];
}
-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == 0)
    {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    else
    {
        
    }
}
- (UIImage *)imageWithImage:(UIImage *)image convertToSize:(CGSize)size
{
    UIGraphicsBeginImageContext(size);
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *destImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return destImage;
}

- (IBAction)Botella2:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"2.png" forKey:@"botella"];
    [self mostrarMensaje];
}

- (IBAction)Botella3:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"3.png" forKey:@"botella"];
    [self mostrarMensaje];
}

- (IBAction)Botella4:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"4.png" forKey:@"botella"];
    [self mostrarMensaje];
}

- (IBAction)Botella5:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"5.png" forKey:@"botella"];
    [self mostrarMensaje];
}

- (IBAction)Botella6:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"6.png" forKey:@"botella"];
    [self mostrarMensaje];
}

- (IBAction)Botella7:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"7.png" forKey:@"botella"];
    [self mostrarMensaje];
}

- (IBAction)Botella8:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"8.png" forKey:@"botella"];
    [self mostrarMensaje];
}

- (IBAction)Botella9:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"botella.png" forKey:@"botella"];
    [self mostrarMensaje];
}
- (IBAction)Volver:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
