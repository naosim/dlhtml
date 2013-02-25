//
//  SBJsonParser+Download.h
//  dlhtml
//
//  Created by 藤田　直 on 2013/02/25.
//  Copyright (c) 2013年 Naosim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SBJsonParser.h"
@interface SBJsonParser(Download)
/// JSONをWebから同期で取得する
- (id)objectWithURL:(NSURL *)url;
/// JSONをWebから非同期で取得する
- (void)asyncLoadWithURL:(NSURL*)url completionHandler:(void (^)(NSURLResponse* res, id result, NSError* err))handler;
@end
