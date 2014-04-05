//
//  SecondTabViewController.m
//  FootBook
//
//  Created by Marion Ano on 4/2/14.
//  Copyright (c) 2014 Marion Ano. All rights reserved.
//

#import "SecondTabViewController.h"
#import "FirstTabViewController.h"
//#import <CoreData/CoreData.h>
#import "Feeters.h"

@interface SecondTabViewController ()<UITableViewDelegate, UITableViewDataSource>

@property NSArray *feetersArray;
@property (strong, nonatomic) IBOutlet UITableView *feetersTableView;

@end
@implementation SecondTabViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self load];
}

#pragma mark -- loading feeters
-(void)load
{

//{
    
//    NSFetchRequest* request = [[NSFetchRequest alloc]initWithEntityName:@"Character"];
//    //if you want to see the predicate property work, simply uncomment the line below
//    //request.predicate = [NSPredicate predicateWithFormat:@"actor contains %@", @"Z"];
//    
//    NSSortDescriptor* sortDescriptor1 = [[NSSortDescriptor alloc]initWithKey:@"actor" ascending:YES];
//    NSSortDescriptor* sortDescriptor2 = [[NSSortDescriptor alloc]initWithKey:@"passenger" ascending:YES];
//    NSArray* sortDescriptors = [NSArray arrayWithObjects:sortDescriptor1, nil];
//    //assign the request to the properties "sortDescriptors"
//    request.sortDescriptors = sortDescriptors;
    //self.charactersArray = [self.managedObjectContext executeFetchRequest:request error:nil];
    
    //      NSArray *characters = [self.managedObjectContext executeFetchRequest:request error:nil];
    //      if (characters.count)
    //      {
    //       self.charactersArray = characters;
    //      }
    //[self.lostTableVlew reloadData];
    
    
   //BOOL isCoreDataEmpty = self.charactersArray.count == 0;
//    BOOL isFirstRun= ![[NSUserDefaults standardUserDefaults] boolForKey:@"hasRunOnce"];
//    if(isFirstRun)
//    {
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        //[userDefaults setBool:YES forKey:@"hasRunOnce"];
        [userDefaults synchronize];
//        
//        
//        // get (from internet) array of dictionaries that represent lost characters

        NSURL *url = [NSURL URLWithString:@"http://s3.amazonaws.com/mobile-makers-assets/app/public/ckeditor_assets/attachments/4/friends.json"];
    
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError)
    {
            
        //NSMutableArray *mutableArray = [NSMutableArray new];
            NSError *error;
            
       NSMutableArray* array = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        
        NSMutableArray *tempArray = [NSMutableArray new];
        
            for (NSString *name in array)
            {
//               
//                // Convert each NSDictionary into a Character object
                Feeters* person = [NSEntityDescription insertNewObjectForEntityForName:@"Feeters" inManagedObjectContext:self.managedObjectContext];
                                person.name = name;

                [tempArray addObject:person];
                
                [self.managedObjectContext save:nil];
               //NSLog(@"%@", array);
           }
    
            self.feetersArray = tempArray;

            [self.feetersTableView reloadData];
        
        }];
      
}

#pragma mark -- tableviewcell delegate methods

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.feetersArray.count;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    Feeters* person = self.feetersArray[indexPath.row];
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"SecondCellID"];
    //cell.textLabel.text = self.feetersArray[indexPath.row];
    cell.textLabel.text = person.name;
    return cell;
}

@end
