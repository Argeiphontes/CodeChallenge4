//
//  AddDogViewController.h
//  Assessment4
//
//  Created by Vik Denic on 8/11/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "Person.h"
#import "Dog.h"

@interface AddDogViewController : UIViewController
@property NSManagedObjectContext *managedObjectContext;
@property Person *person;
@property Dog *dog;

@end
