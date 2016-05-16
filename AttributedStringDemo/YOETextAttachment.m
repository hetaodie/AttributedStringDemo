//
//  YOETextAttachment.m
//  AttributedStringDemo
//
//  Created by Weixu on 16/5/16.
//  Copyright © 2016年 Netease. All rights reserved.
//

#import "YOETextAttachment.h"

@implementation YOETextAttachment

//重载此方法 使得图片的大小和行高是一样的。
- (CGRect)attachmentBoundsForTextContainer:(NSTextContainer *)textContainer proposedLineFragment:(CGRect)lineFrag glyphPosition:(CGPoint)position characterIndex:(NSUInteger)charIndex
{
    return CGRectMake(0, 0, lineFrag.size.height, lineFrag.size.height);
}

@end
