//
//  ReadNWrite.h
//  test
//
//  Created by MASUD RANA on 4/27/11.
//  Copyright 2011 __MASUD RANA__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ReadNWrite : NSObject {

}
+(void)writeToDucumentDirectory:(NSString*)arrayName :(NSMutableArray*)array;
+(NSMutableArray*)readFromDoucmentDirectory:(NSString*)fileName;
+ (void)deletePList:(NSString*)fileName;
@end
