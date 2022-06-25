//
//  ViewController.m
//  GXCommonCrash
//
//  Created by 谢泽昌 on 2022/6/25.
//

#import "ViewController.h"
#import "GXBadAccessCase.h"
#import "GXUnRecognizedCase.h"
#import "GXRangeExceptionCase.h"
#import "GXSyncTaskCase.h"
#import "GXDispatchOnceCase.h"
#import "GXAssignCase.h"
#import "GXInsertNilCase.h"


@interface ViewController ()

@end

@implementation ViewController

- (IBAction)InsertNil:(id)sender {
    GXInsertNilCase* obj = [GXInsertNilCase new];
    NSLog(@"%@", obj);
}

- (IBAction)BadAccess:(id)sender {
    GXBadAccessCase *obj = [GXBadAccessCase new];
    NSLog(@"%@", obj);
}

- (IBAction)UnRecognize:(id)sender {
    GXUnRecognizedCase* obj = [[GXUnRecognizedCase alloc] initWithData:@""];
    NSLog(@"%@", obj);
}
- (IBAction)OutOfBounds:(id)sender {
    GXRangeExceptionCase* obj = [GXRangeExceptionCase new];
    NSLog(@"%@", obj);
}
- (IBAction)SyncTask:(id)sender {
    GXSyncTaskCase *obj = [GXSyncTaskCase new];
    NSLog(@"%@", obj);
}
- (IBAction)DispatchOnce:(id)sender {
    [GXDispatchOnceCase sharedInstance];
    
}
- (IBAction)Assign:(id)sender {
    
    GXAssignCase *obj = [GXAssignCase new];
    NSLog(@"%@", obj);
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


@end
