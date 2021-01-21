//
//  TestContentView.m
//  TestTiledLayerDealloc
//
//  Created by Piao Piao on 2021/1/21.
//

#import "TestContentView.h"

@interface TestSubLayer : CALayer

@end

@implementation TestSubLayer

- (void)dealloc
{
    NSLog(@"TestSubLayer dealloc" );
}

@end



@implementation TestSubView
- (void)didMoveToSuperview
{
    [super didMoveToSuperview];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1*NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [self doItAsysn];
    });
}
- (void)print {
    NSLog(@"self:%@",self);
}
- (void)doItAsysn
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1*NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [self print];
    });
}

+ (Class)layerClass
{
    return [TestSubLayer class];
}
@end


@implementation TestContentView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+ (Class)layerClass
{
    return [CATiledLayer class];
}
@end
