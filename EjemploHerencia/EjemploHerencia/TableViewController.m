//
//  TableViewController.m
//  EjemploHerencia
//
//  Created by Jaime  Acevedo Cerna on 12-07-14.
//  Copyright (c) 2014 Jaime  Acevedo Cerna. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController
@synthesize tableView;
@synthesize tweetsArray;

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
    [self prepareDataForTable];
    self.tableView.delegate = self;
    

}
-(void) prepareDataForTable
{
    //1
    self.tableView.dataSource = self;
    
    //2
    self.tweetsArray = [[NSMutableArray alloc] initWithObjects:
                        @"Always put your fears behind you and your dreams in front of you.",
                        @"A relationship with no trust is like a cell phone with no service, all you can do is play games.",
                        @"People should stop talking about their problem and start thinking about the solution.",
                        @"Dear Chuck Norris, Screw you. I can grill burgers under water. Sincerely, Spongebob Squarepants.",
                        @"My arms will always be open for you, they will never close, not unless you're in them.",
                        @"A relationship with no trust is like a cell phone with no service, all you can do is play games.",
                        @"People should stop talking about their problem and start thinking about the solution.",
                        @"Dear Chuck Norris, Screw you. I can grill burgers under water. Sincerely, Spongebob Squarepants.",
                        @"My arms will always be open for you, they will never close, not unless you're in them.",
                        @"A relationship with no trust is like a cell phone with no service, all you can do is play games.",
                        @"People should stop talking about their problem and start thinking about the solution.",
                        @"Dear Chuck Norris, Screw you. I can grill burgers under water. Sincerely, Spongebob Squarepants.",
                        @"My arms will always be open for you, they will never close, not unless you're in them.",
                        @"A relationship with no trust is like a cell phone with no service, all you can do is play games.",
                        @"People should stop talking about their problem and start thinking about the solution.",
                        @"Dear Chuck Norris, Screw you. I can grill burgers under water. Sincerely, Spongebob Squarepants.",
                        @"My arms will always be open for you, they will never close, not unless you're in them.",
                        nil];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tweetsArray count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * cellIdentifier = @"SettingsCell";
    Celda * celda = (Celda *)[self.tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    celda.title.text = [self.tweetsArray objectAtIndex:indexPath.row];
    celda.delegate = self;
    
    return celda;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailTable * detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"TableDetailViewController"];
    NSString * tweetString =[self.tweetsArray objectAtIndex:indexPath.row];
    detailViewController.tweet = tweetString;
    
    [self presentViewController:detailViewController animated:YES completion:nil];
}
- (void)deleteButtonTappedOnCell:(id)sender {
    NSIndexPath *indepath = [self.tableView indexPathForCell:sender];
    
    [self.tweetsArray removeObjectAtIndex:indepath.row];
    
    [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indepath]
                          withRowAnimation:UITableViewRowAnimationAutomatic];
    
}


@end
