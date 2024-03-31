#import "TSRootViewController.h"
#import "TSAppTableViewController.h"
#import "TSSettingsListController.h"
#import <TSPresentationDelegate.h>

@implementation TSRootViewController

- (void)loadView {
	[super loadView];

	TSAppTableViewController* appTableVC = [[TSAppTableViewController alloc] init];
	appTableVC.title = @"Ứng dụng";

	TSSettingsListController* settingsListVC = [[TSSettingsListController alloc] init];
	settingsListVC.title = @"Cài đặt";

	UINavigationController* appNavigationController = [[UINavigationController alloc] initWithRootViewController:appTableVC];
	UINavigationController* settingsNavigationController = [[UINavigationController alloc] initWithRootViewController:settingsListVC];
	
	appNavigationController.tabBarItem.image = [UIImage systemImageNamed:@"square.stack.3d.up.fill"];
	settingsNavigationController.tabBarItem.image = [UIImage systemImageNamed:@"gear"];

	self.title = @"Root View Controller";
	self.viewControllers = @[appNavigationController, settingsNavigationController];
}

- (void)viewDidLoad
{
	[super viewDidLoad];

	TSPresentationDelegate.presentationViewController = self;
}

@end
