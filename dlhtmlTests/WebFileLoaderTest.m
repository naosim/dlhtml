//
//  WebFileLoaderTest.m
//  dlhtml
//
//  Created by 藤田　直 on 2013/02/25.
//  Copyright (c) 2013年 Naosim. All rights reserved.
//

#import "WebFileLoaderTest.h"
@implementation WebFileLoaderTest

- (void)test_urlWithBaseURL_dir_webFile {
    const NSString* exp = @"http://hogehoge.com/img/img.png";
    NSString* act = nil;
    
    
    NSArray* baseURLs = [NSArray arrayWithObjects:@"http://hogehoge.com/", @"http://hogehoge.com", nil];
    NSArray* dirPathes = [NSArray arrayWithObjects:@"img", @"./img", @"img/", @"./img/", nil];
    NSArray* webFilePathes = [NSArray arrayWithObjects:@"img.png", @"./img.png", nil];
    
    // 正常系を全通りテスト
    for(NSString* baseURL in baseURLs) {
        for(NSString* dirPath in dirPathes) {
            for (NSString* webFilePath in webFilePathes) {
                act = [WebFileLoader urlWithBaseURL:baseURL dirPath:dirPath webFilePath:webFilePath];
                STAssertTrue([exp isEqualToString:act], [NSString stringWithFormat:@"URLが正しいこと exp:%@, act:%@", exp, act]);

            }
        }
    }    
}

@end
