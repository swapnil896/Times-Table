//
//  ViewController.m
//  SMTimesTable
//
//  Created by Mac on 21/01/17.
//  Copyright © 2017 Swapnil Magar. All rights reserved.
//

#import "ViewController.h"
#import "TimesTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)displayTableButton:(id)sender {
    
    multiplierArray = [[NSMutableArray alloc] init];
    answerArray = [[NSMutableArray alloc] init];
    
    _multiplierText.clearButtonMode = UITextFieldViewModeWhileEditing;
    _multiplicandText.clearButtonMode = UITextFieldViewModeWhileEditing;

    
    number = self.multiplicandText.text.intValue;
    limit = self.multiplierText.text.intValue;
    
    for(int index = 1; index <= limit; index++){
        
        int answer = number * index;
        [multiplierArray addObject:[NSString stringWithFormat:@"%d", index]];
        [answerArray addObject:[NSString stringWithFormat:@"%d", answer]];
    }
    
    [self.myTableView setHidden:NO];
    [_myTableView reloadData];
}

//-(BOOL)textFieldShouldReturn:(UITextField *)textField{
//    
//    [textField resignFirstResponder];
//    return YES;
//}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return limit;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    TimesTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"timesTableCell"];
    
    cell.label1.text = self.multiplicandText.text;
    cell.label2.text = [multiplierArray objectAtIndex:indexPath.row];
    cell.label3.text = [answerArray objectAtIndex:indexPath.row];
    
    return cell;
}
- (IBAction)clearButton:(id)sender {
    
    self.multiplicandText.text = @"";
    self.multiplierText.text = @"";
    [self.myTableView setHidden:YES];
}
@end
