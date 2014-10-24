//
//  DogsViewController.m
//  Assessment4
//
//  Created by Vik Denic on 8/11/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import "DogsViewController.h"
#import "AddDogViewController.h"
#import "Dog.h"

@interface DogsViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *dogsTableView;
@property NSArray *dogsArray;

@end

@implementation DogsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Dogs";
    self.dogsArray = [NSArray new];
}

#pragma mark - UITableView Delegate Methods

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dogsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"dogCell"];
    Dog *dog = self.dogsArray[indexPath.row];
    cell.textLabel.text = dog.name;
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString: @"AddDogSegue"])
    {
        AddDogViewController *viewController = segue.destinationViewController;
//        NSIndexPath *ip = [self.dogsTableView indexPathForSelectedRow];
//        viewController.dog = self.dogsArray[ip.row];
        viewController.person = self.person;
        viewController.managedObjectContext = self.managedObjectContext;
    }
    else
    {

    }
}

-(void)showDogs
{


//    NSFetchRequest *coreDataRequest = [NSFetchRequest fetchRequestWithEntityName:@"Person"];
//    self.dogsArray = [self.managedObjectContext executeFetchRequest:coreDataRequest error:nil];
//
//    Person *dogsOwned = [
//    for (NSString *dogsOwned in <#collection#>) {
//        <#statements#>
//    }
//}



@end
