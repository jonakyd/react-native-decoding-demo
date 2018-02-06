//
//  ViewController.m
//  Decoding Demo
//
//  Created by Jonathan Dang on 6/2/18.
//  Copyright © 2018 Jonathan Dang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSURL *path = [NSBundle.mainBundle URLForResource:@"drawsWithoutLineBreaks" withExtension:@"data"];
    NSData *rawData = [NSData dataWithContentsOfURL:path];
    NSString *encodedString = [[NSString alloc] initWithData:rawData encoding:NSUTF8StringEncoding];
    
    NSLog(@"%lu %lu", rawData.length, encodedString.length);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
