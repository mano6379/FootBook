//
//  FirstTabViewController.m
//  FootBook
//
//  Created by Marion Ano on 4/2/14.
//  Copyright (c) 2014 Marion Ano. All rights reserved.
//

#import "FirstTabViewController.h"
#import "SecondTabViewController.h"

@interface FirstTabViewController ()<UITableViewDataSource, UITableViewDelegate>
@property NSMutableArray *footsieArray;
@property (strong, nonatomic) IBOutlet UITableView *footsieTableView;

@end


@implementation FirstTabViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [self load];
//    [self.footsieArray removeObject:[self.footsieArray lastObject]];
//    [self save];

    // Do any additional setup after loading the view.
}


#pragma mark -- tableviewcell delegate methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"FirstCellID"];
//    cell.textLabel.text = self.footsieArray[indexPath.row];
    return nil;

}

//-(void)save
//{
//    //NSURL* plist = [[self documentDirectory]URLByAppendingPathComponent:@"pastes.plist"];
//    //[adoredToothpastes writeToURL:plist atomically:YES];
//    //saves data
//    NSUserDefaults* userDefaults = [NSUserDefaults standardUserDefaults];
//    [userDefaults setObject:[NSDate date] forKey:@"last saved"];
//    [userDefaults synchronize];
//    
//    //if "adoredToothpastes" array is nil, then go ahead an create a new NSMutable Array
//}

//-(void)load
//{
//    NSURL* plist = [[self documentDirectory]URLByAppendingPathComponent:@"pastes.plist"];
//    self.footsieArray = [NSMutableArray arrayWithContentsOfURL:plist];
//    if (!self.footsieArray)
//    {
//        self.footsieArray = [NSMutableArray new];
//    }
//}
//
//
//#pragma mark -- unwind segue
//
//-(IBAction)unwindFromFeeters:(UIStoryboardSegue*)segue
//{
//    NSLog(@"I'm getting called");
//    FirstTabViewController* viewController = segue.sourceViewController;
//    
//    //create variable
//    NSIndexPath* indexPath;
//    
//    
//    //add another string to the NSMutableArray "adoredToothpaste" that came from the method call on [viewController adoredToothpaste]. the "adoredToothpaste" method is part of the ToothpastesTableView
//    [self.footsieArray addObject:[viewController footsieArray]];
//    indexPath = [NSIndexPath indexPathForRow:self.footsieArray.count - 1 inSection:0];
//    [self.footsieTableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
//    [self save];
//}
//
//

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SecondTabViewController* vc = segue.destinationViewController;
    vc.managedObjectContext = self.managedObjectContext;
}
@end
