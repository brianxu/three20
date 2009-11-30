#import "AppDelegate.h"
#import "CatalogController.h"
#import "PhotoTest1Controller.h"
#import "PhotoTest2Controller.h"
#import "ImageTest1Controller.h"
#import "TableImageTestController.h"
#import "YouTubeTestController.h"
#import "TableItemTestController.h"
#import "TableControlsTestController.h"
#import "TableTestController.h"
#import "TableWithShadowController.h"
#import "SearchTestController.h"
#import "MessageTestController.h"
#import "ActivityTestController.h"
#import "ScrollViewTestController.h"
#import "LauncherViewTestController.h"
#import "StyledTextTestController.h"
#import "StyledTextTableTestController.h"
#import "StyleTestController.h"
#import "ButtonTestController.h"
#import "TabBarTestController.h"

@implementation AppDelegate

///////////////////////////////////////////////////////////////////////////////////////////////////
// UIApplicationDelegate

- (void)applicationDidFinishLaunching:(UIApplication*)application {
  TTNavigator* navigator = [TTNavigator navigator];
  navigator.supportsShakeToReload = YES;
  navigator.persistenceMode = TTNavigatorPersistenceModeNone;

  TTURLMap* map = navigator.URLMap;
  [map from:@"*" toViewController:[TTWebController class]];
  [map from:@"tt://catalog" toViewController:[CatalogController class]];
  [map from:@"tt://photoTest1" toViewController:[PhotoTest1Controller class]];
  [map from:@"tt://photoTest2" toViewController:[PhotoTest2Controller class]];
  [map from:@"tt://imageTest1" toViewController:[ImageTest1Controller class]];
  [map from:@"tt://tableTest" toViewController:[TableTestController class]];
  [map from:@"tt://tableItemTest" toViewController:[TableItemTestController class]];
/* TODO: CLEANUP  [map from:@"tt://tableControlsTest" toViewController:[TableControlsTestController class]];*/
/* TODO: CLEANUP  [map from:@"tt://styledTextTableTest" toViewController:[StyledTextTableTestController class]];*/
/* TODO: CLEANUP  [map from:@"tt://tableWithShadow" toViewController:[TableWithShadowController class]];*/
/* TODO: CLEANUP  [map from:@"tt://composerTest" toViewController:[MessageTestController class]];*/
/* TODO: CLEANUP  [map from:@"tt://searchTest" toViewController:[SearchTestController class]];*/
  [map from:@"tt://activityTest" toViewController:[ActivityTestController class]];
  [map from:@"tt://styleTest" toViewController:[StyleTestController class]];
/* TODO: CLEANUP  [map from:@"tt://styledTextTest" toViewController:[StyledTextTestController class]];*/
  [map from:@"tt://buttonTest" toViewController:[ButtonTestController class]];
  [map from:@"tt://tabBarTest" toViewController:[TabBarTestController class]];
  [map from:@"tt://youTubeTest" toViewController:[YouTubeTestController class]];
/* TODO: CLEANUP  [map from:@"tt://imageTest2" toViewController:[TableImageTestController class]];*/
  [map from:@"tt://scrollViewTest" toViewController:[ScrollViewTestController class]];
  [map from:@"tt://launcherTest" toViewController:[LauncherViewTestController class]];

  if (![navigator restoreViewControllers]) {
    [navigator openURLAction:[TTURLAction actionWithURLPath:@"tt://tableItemTest"]];
  }
}

- (BOOL)application:(UIApplication*)application handleOpenURL:(NSURL*)URL {
  [[TTNavigator navigator] openURLAction:[TTURLAction actionWithURLPath:URL.absoluteString]];
  return YES;
}

@end
