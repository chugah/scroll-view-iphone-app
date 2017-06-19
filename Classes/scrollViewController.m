//
//  scrollViewController.m
//  scroll
//
//  Created by Sami Barghshoon on 6/16/17.
//  Copyright 2017 __MyCompanyName__. All rights reserved.
//

#import "scrollViewController.h"

@implementation scrollViewController

// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor whiteColor];
	//How many pages do we want?
    int PageCount = 3;
	
    //Setup scroll view
    UIScrollView *Scroller = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 44, 320, 420)];
    Scroller.backgroundColor = [UIColor whiteColor];
    Scroller.pagingEnabled = YES;
    Scroller.contentSize = CGSizeMake(PageCount * Scroller.bounds.size.width, Scroller.bounds.size.height);
	
    //Setup Each View Size
    CGRect ViewSize = Scroller.bounds;
	
    //Setup and Add Images
    UIImageView *ImgView = [[UIImageView alloc] initWithFrame:ViewSize];
    [ImgView setImage:[UIImage imageNamed:@"icon0.png"]];
    [Scroller addSubview:ImgView];
	
    //Offset View Size
    ViewSize = CGRectOffset(ViewSize, Scroller.bounds.size.width, 0);
	
    UIImageView *ImgView2 = [[UIImageView alloc] initWithFrame:ViewSize];
    [ImgView2 setImage:[UIImage imageNamed:@"icon1.png"]];
    [Scroller addSubview:ImgView2];
	
    //Offset View Size
    ViewSize = CGRectOffset(ViewSize, Scroller.bounds.size.width, 0);
	
    UIImageView *ImgView3 = [[UIImageView alloc] initWithFrame:ViewSize];
    [ImgView3 setImage:[UIImage imageNamed:@"icon2.png"]];
    [Scroller addSubview:ImgView3];
	
	[self.view addSubview:Scroller];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
