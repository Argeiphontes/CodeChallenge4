//
//  Person.h
//  Assessment4
//
//  Created by Christopher on 10/24/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Dog;

@interface Person : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet *dog;
@end

@interface Person (CoreDataGeneratedAccessors)

- (void)addDogObject:(Dog *)value;
- (void)removeDogObject:(Dog *)value;
- (void)addDog:(NSSet *)values;
- (void)removeDog:(NSSet *)values;

@end
