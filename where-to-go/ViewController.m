//
//  ViewController.m
//  where-to-go
//
//  Created by Admin on 22.05.16.
//  Copyright (c) 2016 student. All rights reserved.
//

#import "ViewController.h"
#import "DBManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.dbManager = [[DBManager alloc] initWithDatabaseRestaurant:@"Restaurant.db"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
