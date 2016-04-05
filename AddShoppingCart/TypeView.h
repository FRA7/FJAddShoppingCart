//
//  TypeView.h
//  AddShoppingCart
//
//  Created by FRAJ on 15/9/26.
//  Copyright © 2015年 FRAJ. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol TypeSeleteDelegete <NSObject>

-(void)btnindex:(int) tag;

@end
@interface TypeView : UIView
@property(nonatomic)float height;
@property(nonatomic)int seletIndex;
@property (nonatomic,retain) id<TypeSeleteDelegete> delegate;

-(instancetype)initWithFrame:(CGRect)frame andDatasource:(NSArray *)arr :(NSString *)typename;
@end
