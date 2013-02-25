//
//  WebFileLoader.m
//  dlhtml
//
//  Created by 藤田　直 on 2013/02/25.
//  Copyright (c) 2013年 Naosim. All rights reserved.
//

#import "WebFileLoader.h"

@implementation WebFileLoader
- (void)loadWithBaseURL:(NSString*)baseUrl dirs:(NSArray*)dirs {
    
//    NSArray* path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//	NSString* dbPathStr = path[0];
//    
//	return [dbPathStr stringByAppendingPathComponent:@"imageCache.db"];
    
    for(Dir* dir in dirs) {
        for(WebFile* webFile in dir.files) {
            NSString* url = [WebFileLoader urlWithBaseURL:baseUrl dirPath:dir.path webFilePath:webFile.url];
            NSData* data = [NSData dataWithContentsOfURL:[NSURL URLWithString:url]];
            [data writeToFile:@"" atomically:YES];
        }
    }
    
    
}

//- (void)loadWithBaseURL:(NSString*)url dir:(Dir*)dir webFile:(WebFile*)webFile {
//    NSURL* url = [NSURL URLWithString:[NSString stringWithFormat:<#(NSString *), ...#>]];
//    [NSData dataWithContentsOfURL:<#(NSURL *)#>]
//}

+ (NSString*)urlWithBaseURL:(NSString*)url dirPath:(NSString*)dirPath webFilePath:(NSString*)webFilePath {
    if(![url hasSuffix:@"/"]) {
        url = [url stringByAppendingString:@"/"];
    }
    
    if([dirPath hasPrefix:@"./"]) {
        dirPath = [dirPath substringFromIndex:2];
    }
    if(![dirPath hasSuffix:@"/"]) {
        dirPath = [dirPath stringByAppendingString:@"/"];
    }
    
    if([webFilePath hasPrefix:@"./"]) {
        webFilePath = [webFilePath substringFromIndex:2];
    }
    
    return [NSString stringWithFormat:@"%@%@%@", url, dirPath, webFilePath];
}
@end
