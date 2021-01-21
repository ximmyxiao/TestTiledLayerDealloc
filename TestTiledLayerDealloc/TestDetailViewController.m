//
//  TestDetailViewController.m
//  TestTiledLayerDealloc
//
//  Created by Piao Piao on 2021/1/21.
//

#import "TestDetailViewController.h"
#import "TestContentView.h"

@interface TestDetailViewController ()

@property (weak, nonatomic) IBOutlet TestContentView *contentView;
@end

@implementation TestDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    TestSubView* subView = [[TestSubView alloc] initWithFrame:CGRectMake(0,0,40,40)];
    subView.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:subView];
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
