//
//  ViewController.m
//  Botella
//
//  Created by Jaime  Acevedo Cerna on 25-11-13.
//  Copyright (c) 2013 Jaime  Acevedo Cerna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *imagen = [UIImage imageNamed:@"Fondo.jpg"];
    CGSize porte = CGSizeMake(self.view.frame.size.width,self.view.frame.size.height);
    self.view.backgroundColor = [UIColor colorWithPatternImage:[self imageWithImage:imagen convertToSize:porte]];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSSet *botella = [defaults objectForKey:@"botella"];
    if(botella==nil)
    {
        NSLog(@"if");
        NSString *numBotella = @"1.png";
        [defaults setObject:numBotella forKey:@"botella"];
    }
    else
    {
          NSLog(@"else");
    }
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIImage *)imageWithImage:(UIImage *)image convertToSize:(CGSize)size
{
    UIGraphicsBeginImageContext(size);
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *destImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return destImage;
}


@end
