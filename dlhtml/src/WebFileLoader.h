//
//  WebFileLoader.h
//  dlhtml
//
//  Created by 藤田　直 on 2013/02/25.
//  Copyright (c) 2013年 Naosim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FileTree.h"

@interface WebFileLoader : NSObject
- (void)loadWithBaseURL:(NSString*)url dirs:(NSArray*)dirs;
+ (NSString*)urlWithBaseURL:(NSString*)url dirPath:(NSString*)dirPath webFilePath:(NSString*)webFilePath;
@end
