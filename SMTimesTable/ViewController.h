//
//  ViewController.h
//  SMTimesTable
//
//  Created by Mac on 21/01/17.
//  Copyright © 2017 Swapnil Magar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *multiplierArray, *answerArray;
    int number, limit;
}
@property (weak, nonatomic) IBOutlet UITextField *multiplicandText;

@property (weak, nonatomic) IBOutlet UITextField *multiplierText;

- (IBAction)displayTableButton:(id)sender;

@property (weak, nonatomic) IBOutlet UITableView *myTableView;
- (IBAction)clearButton:(id)sender;

@end

