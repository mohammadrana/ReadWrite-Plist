//
//  ReadNWrite.m
//  test
//
//  Created by MASUD RANA on 4/27/11.
//  Copyright 2011 MASUD RANA. All rights reserved.
//

#import "ReadNWrite.h"


@implementation ReadNWrite


+(void)writeToDucumentDirectory:(NSString*)arrayName :(NSMutableArray*)array{

	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];

	NSString *dataFilePath = [documentsDirectory stringByAppendingPathComponent:arrayName]; 
	[array writeToFile:dataFilePath atomically:YES];
}

+(NSMutableArray*)readFromDoucmentDirectory:(NSString*)fileName{
	
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];

	NSString *dataFilePath = [documentsDirectory stringByAppendingPathComponent:fileName];
	NSMutableArray *peoplesList = [[NSMutableArray alloc] initWithContentsOfFile:dataFilePath];
    dataFilePath = nil;
	return peoplesList;
}

+ (void)deletePList:(NSString*)fileName{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *path = [documentsDirectory stringByAppendingPathComponent:fileName];
    
    NSError *error;
    if(![[NSFileManager defaultManager] removeItemAtPath:path error:&error])
    {
        //TODO: Handle/Log error
        NSLog(@"NOT FOUND");
    }
    else{
        [fileManager removeItemAtPath:path error:NULL];
        NSLog(@"Delete");
    }
}

//- (void)dealloc {
//    [super dealloc];
//}


@end
