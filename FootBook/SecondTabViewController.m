//
//  SecondTabViewController.m
//  FootBook
//
//  Created by Marion Ano on 4/2/14.
//  Copyright (c) 2014 Marion Ano. All rights reserved.
//

#import "SecondTabViewController.h"

@interface SecondTabViewController ()<UITableViewDelegate, UITableViewDataSource>
@end


@implementation SecondTabViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark -- tableviewcell delegate methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

@end
