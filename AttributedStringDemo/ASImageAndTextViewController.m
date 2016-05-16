//
//  ASImageAndTextViewController.m
//  AttributedStringDemo
//
//  Created by Weixu on 16/5/16.
//  Copyright © 2016年 Netease. All rights reserved.
//

#import "ASImageAndTextViewController.h"
#import "YOETextAttachment.h"

@interface ASImageAndTextViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) NSString * imageText;
@end

@implementation ASImageAndTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageText = self.textView.text;
       NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc]initWithString:self.imageText];
    self.textView.attributedText = attrStr;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


- (IBAction)addImagePress:(id)sender {
 
    //获取textView的富文本,并转换成可变类型
    NSMutableAttributedString *mutaAttrStr = [self.textView.attributedText mutableCopy];
    
    UIImage *image = [UIImage imageNamed:@"1"];
    NSTextAttachment *attachment = [[NSTextAttachment alloc]init];
    attachment.image = image;
    attachment.bounds = CGRectMake(0, 0, 30, 30);
    
    //获取光标的位置
    NSRange range = self.textView.selectedRange;
    
    
    NSAttributedString *attrStr1 = [NSAttributedString attributedStringWithAttachment:attachment];
//    [attrStr appendAttributedString:attrStr1];
    
    [mutaAttrStr insertAttributedString:attrStr1 atIndex:range.location];
    self.textView.attributedText = mutaAttrStr;
    
}


- (IBAction)addImageAndChangePress:(id)sender {
    
    //获取textView的富文本,并转换成可变类型
    NSMutableAttributedString *mutaAttrStr = [self.textView.attributedText mutableCopy];
    
    UIImage *image = [UIImage imageNamed:@"1"];
    YOETextAttachment *attachment = [[YOETextAttachment alloc]init];
    attachment.image = image;
    attachment.bounds = CGRectMake(0, 0, 30, 30);
    
    //获取光标的位置
    NSRange range = self.textView.selectedRange;
    
    
    NSAttributedString *attrStr1 = [NSAttributedString attributedStringWithAttachment:attachment];
    //    [attrStr appendAttributedString:attrStr1];
    
    [mutaAttrStr insertAttributedString:attrStr1 atIndex:range.location];
    self.textView.attributedText = mutaAttrStr;
    
    
    
}
- (IBAction)addUrlButtonPress:(id)sender {
    
    self.textView.editable = NO;
    NSMutableAttributedString *attrStr =[self.textView.attributedText mutableCopy];
    [attrStr addAttribute:NSLinkAttributeName value:[NSURL URLWithString:@"http://www.baidu.com"] range:[attrStr.string rangeOfString:@"你"]];
    self.textView.attributedText = attrStr;
    

}

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange
{
    
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
