//
//  TableViewController.h
//  EjemploHerencia
//
//  Created by Jaime  Acevedo Cerna on 12-07-14.
//  Copyright (c) 2014 Jaime  Acevedo Cerna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailTable.h"
#import "CeldaDelegate.h"


@interface TableViewController : UIViewController<UITableViewDataSource, UITableViewDelegate,CeldaDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *tweetsArray;

@end
