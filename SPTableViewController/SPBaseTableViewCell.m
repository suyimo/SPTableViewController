//
//  ZZBaseTableViewCell.m
//  Ours
//
//  Created by iMac on 16/7/14.
//  Copyright © 2016年 Eric. All rights reserved.
//

#import "SPBaseTableViewCell.h"

@implementation SPBaseTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)configData:(id)data
{
    if ([data isKindOfClass:[NSString class]]) {
        self.textLabel.text = data;
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
