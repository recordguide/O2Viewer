//
//  ContentsViewController.h
//  O2Viewer
//
//  Created by 오화종 on 10. 02. 25.
//  Copyright 2010 없음. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ContentsViewController : UIViewController {
	IBOutlet UIWebView *contentsView;
	//TODO: UITextView도 만들어서 인스턴스 변수로 한다.
	NSString *longPath;
}

-(void)setLongPath:(NSString*) aString;

@end
