//
//  FileTree.h
//  dlhtml
//
//  Created by 藤田　直 on 2013/02/25.
//  Copyright (c) 2013年 Naosim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dir : NSObject
@property (nonatomic, strong)NSString* path;
@property (nonatomic, strong)NSArray* files;
@end

@interface WebFile : NSObject
@property (nonatomic, retain)NSString* url;
@property (nonatomic, retain)NSString* fileName;
@end
