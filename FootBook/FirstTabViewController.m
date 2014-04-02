//
//  FirstTabViewController.m
//  FootBook
//
//  Created by Marion Ano on 4/2/14.
//  Copyright (c) 2014 Marion Ano. All rights reserved.
//

#import "FirstTabViewController.h"

@interface FirstTabViewController ()<UITableViewDataSource, UITableViewDelegate>
@end


@implementation FirstTabViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
