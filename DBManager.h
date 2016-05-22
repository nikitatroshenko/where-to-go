//
//  DBManager.h
//  where-to-go
//
//  Created by Admin on 22.05.16.
//  Copyright (c) 2016 student. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DBManager : NSObject

@property (nonatomic, strong) NSString *documentsDirectory;
@property (nonatomic, strong) NSString *databaseRestaurant;

-(instancetype)initWithDatabaseRestaurant:(NSString *)dbFilename;
-(void)copyDatabaseIntoDocumentsDirectory;

@end
