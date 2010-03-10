//
//  ContentsViewController.m
//  O2Viewer
//
//  Created by 오화종 on 10. 02. 25.
//  Copyright 2010 없음. All rights reserved.
//

#import "ContentsViewController.h"


@implementation ContentsViewController

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

-(void)setLongPath:(NSString*) aString
{
	//TODO: UITextView와 UIWebView중 적절한 것을 하나만 만든다.
	if( longPath != aString){
		[longPath release];
		longPath = aString;
		[longPath retain];
	}
	NSLog(@"%@", longPath);
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	//longPath = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"txt"];

	
//	- (void)loadRequest:(NSURLRequest *)request;
//	- (void)loadHTMLString:(NSString *)string baseURL:(NSURL *)baseURL;

	//id contents = [NSString stringWithContentsOfFile:longPath encoding:NSUTF8StringEncoding error:nil];
//	NSURL *myUrl = [NSURL URLWithString:@"http://www.naver.com"];
//	NSURLRequest *myRequest = [NSURLRequest requestWithURL:myUrl];
//	[contentsView loadRequest:myRequest];

	
	//TODO: 파일 확장자를 보고, txt면 UITextView를 다른 타입이면 UIWebView를 연다.
	
	NSData *myData = [NSData dataWithContentsOfFile:longPath];
	//NSURL *myUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"test1"ofType:@"txt"]];
	[contentsView loadData:myData MIMEType:@"text/html" textEncodingName:@"utf-8" baseURL:nil];
	//NSURLRequest *myRequest = [NSURLRequest requestWithURL:myUrl];
	//[contentsView loadRequest:myRequest];

	
	//[contentsView setText:contents];
	//[contentsView s]

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
