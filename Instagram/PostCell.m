//
//  PostCell.m
//  Instagram
//
//  Created by Jocelyn Tseng on 6/28/22.
//

#import "PostCell.h"

@implementation PostCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)setPost:(Post *)post {
    
//    NSLog(@"set post");
    
    _post = post;
    
    UIImage* img = [UIImage imageWithData:[post[@"image"] getData]];
    [self.postImageView setImage:img];
    
    PFUser *user = post.author;
    [user fetchIfNeeded];
    
    self.captionLabel.text = post.caption;
    
    self.usernameLabel.text = user.username;
}

@end
