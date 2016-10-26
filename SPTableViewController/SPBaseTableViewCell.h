//
//  ZZBaseTableViewCell.h
//  Ours
//
//  Created by iMac on 16/7/14.
//  Copyright © 2016年 Eric. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SPBaseTableViewCell;

@protocol SPBaseTableViewCellDelegate <NSObject>

- (void)cell:(SPBaseTableViewCell *)cell InteractionEvent:(id)clickInfo;

@end

@interface SPBaseTableViewCell : UITableViewCell

@property (nonatomic, weak) id<SPBaseTableViewCellDelegate>delegate;

- (void)configData:(id)data;


@end
