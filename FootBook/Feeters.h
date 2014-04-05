//
//  Feeters.h
//  FootBook
//
//  Created by Marion Ano on 4/2/14.
//  Copyright (c) 2014 Marion Ano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Feeters : NSManagedObject

@property (nonatomic, retain) NSNumber * friends;
@property (nonatomic, retain) NSNumber * hairness;
@property (nonatomic, retain) NSNumber * toes;
@property (nonatomic, retain) NSString * shoeSize;
@property (nonatomic, retain) NSString * name;

@end
