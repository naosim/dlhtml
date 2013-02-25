//
//  SBJsonParser+Download.m
//  dlhtml
//
//  Created by 藤田　直 on 2013/02/25.
//  Copyright (c) 2013年 Naosim. All rights reserved.
//

#import "SBJsonParser+Download.h"

@implementation SBJsonParser(Download)
- (id)objectWithURL:(NSURL *)url{
    return [self objectWithData:[NSData dataWithContentsOfURL:url]];
}
- (void)asyncLoadWithURL:(NSURL*)url completionHandler:(void (^)(NSURLResponse* res, id result, NSError* err))handler {
    [NSURLConnection sendAsynchronousRequest:[NSURLRequest requestWithURL:url] queue:nil completionHandler:^void(NSURLResponse* res, NSData* data, NSError* err){
        handler(res, [self objectWithData:data], err);
        
    }];
}
@end
