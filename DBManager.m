//
//  DBManager.m
//  where-to-go
//
//  Created by Admin on 22.05.16.
//  Copyright (c) 2016 student. All rights reserved.
//

#import "DBManager.h"

@implementation DBManager

-(instancetype)initWithDatabaseRestaurant:(NSString *)dbRestaurant{
    self = [super init];
    if (self) {
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        self.documentsDirectory = [paths objectAtIndex:0];
        
        self.databaseRestaurant = dbRestaurant;
        [self copyDatabaseIntoDocumentsDirectory];
        
    }
    return self;
}

-(void)copyDatabaseIntoDocumentsDirectory{
    NSString *destinationPath = [self.documentsDirectory stringByAppendingPathComponent:self.databaseRestaurant];
    if (![[NSFileManager defaultManager] fileExistsAtPath:destinationPath]) {
        NSString *sourcePath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:self.databaseRestaurant];
        NSError *error;
        [[NSFileManager defaultManager] copyItemAtPath:sourcePath toPath:destinationPath error:&error];
        
        if (error != nil) {
            NSLog(@"%@", [error localizedDescription]);
        }
    }
}

@end
