//
//  Juego.m
//  Botella
//
//  Created by Jaime  Acevedo Cerna on 25-11-13.
//  Copyright (c) 2013 Jaime  Acevedo Cerna. All rights reserved.
//

#import "Juego.h"

@interface Juego ()

@end

@implementation Juego
@synthesize botella;
// This is defined in Math.h
#define M_PI   3.14159265358979323846264338327950288   /* pi */

// Our conversion definition
//#define DEGREES_TO_RADIANS(angle) (angle / 180.0 * M_PI)
#define DEGREES_TO_RADIANS(angle) (M_PI*angle/180.0)

NSMutableArray *arreglo;
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
    [self cargarArreglo];
    UIImage *imagen = [UIImage imageNamed:@"Fondo.jpg"];
    CGSize porte = CGSizeMake(self.view.frame.size.width,self.view.frame.size.height);
    self.view.backgroundColor = [UIColor colorWithPatternImage:[self imageWithImage:imagen convertToSize:porte]];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *numBotella = [defaults objectForKey:@"botella"];
    [botella setImage:[UIImage imageNamed:numBotella] forState:UIControlStateNormal];
    
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnJuego:(id)sender
{
   
    int duracion = (arc4random() % 3) +1;
    int grados = ((arc4random() % 720) + 1) - ((arc4random() % 360) + 1);
    [self rotateImage:botella duration:duracion curve:UIViewAnimationCurveEaseIn degrees:grados];
    
}

- (IBAction)Volver:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (UIImage *)imageWithImage:(UIImage *)image convertToSize:(CGSize)size
{
    UIGraphicsBeginImageContext(size);
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *destImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return destImage;
}

- (void)rotateImage:(UIButton *)image duration:(NSTimeInterval)duration
              curve:(int)curve degrees:(CGFloat)degrees
{
    // Setup the animation
    //[UIView beginAnimations:nil context:nil];
    //[UIView setAnimationCurve:curve];
    //[UIView setAnimationBeginsFromCurrentState:YES];
    [UIView animateWithDuration:duration animations:^{
        CGAffineTransform transform =
        CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(degrees));
        
        image.transform = transform;
    } completion:^(BOOL finished){[self MandarMensaje];}];
    
    // The transform matrix
    
    
    

    
    //[self MandarMensaje];
    // Commit the changes
    

}
-(void)MandarMensaje
{
    int indice = (arc4random() % 17) +1;

    [UIView commitAnimations];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Castigo" message:arreglo[indice]delegate:self cancelButtonTitle:@"Otra Vez" otherButtonTitles:nil];
    [alert show];
}
- (void)cargarArreglo
{
    arreglo = [[NSMutableArray alloc]initWithObjects:nil];
    [arreglo addObject:@"El que toco la botella diga una verdad"];
    [arreglo addObject:@"El que toco la botella debe darle un beso al que apunto la botella"];
    [arreglo addObject:@"Al que apunto la botella debe decir una verdad"];
    [arreglo addObject:@"El que toco la botella tiene que sacarse una prenda"];
    [arreglo addObject:@"El que toco y a quien apunto la botella tienen que sacarse una prenda"];
    [arreglo addObject:@"El que toco la botella tiene que tomar un trago de algo"];
    [arreglo addObject:@"Al que apunto la botella tiene que tomar un trago de algo"];
    [arreglo addObject:@"Al que apunto la botella tiene que hacer una penitencia a eleccion de quien toco la botella"];
    [arreglo addObject:@"El que toco la botella tiene que hacer una penitencia a eleccion de quien apunto la botella"];
    [arreglo addObject:@"Al que apunto la botella tiene que sacarse una prenda"];
    [arreglo addObject:@"El que toco y a quien apunto la botella tienen que hacer una penitencia"];
    [arreglo addObject:@"El que toco y a quien apunto la botella tienen que bailar una cancion random"];
    [arreglo addObject:@"El que toco la botella puede imponer una regla para el juego"];
    [arreglo addObject:@"A quien apunto la botella puede imponer una regla para el juego"];
    [arreglo addObject:@"El que toco la botella tiene que hacer 10 sentadillas o 10 flexiones de brazos"];
    [arreglo addObject:@"A quien apunto la botella tiene que hacer 10 sentadillas o 10 flexiones de brazos"];
    [arreglo addObject:@"El que toco la botella tiene que tomar 3 tragos o dividirlo entre 3 personas"];
    [arreglo addObject:@"A quien apunto la botella tiene que tomar 3 tragos o dividirlo entre 3 personas"];
    
}
@end
