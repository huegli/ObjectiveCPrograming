//
//  Document.h
//  TahDoodle
//
//  Created by Nikolai Schlegel on 10/16/23.
//

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument <NSTableViewDataSource>

@property (nonatomic) NSMutableArray *tasks;

@property (nonatomic) IBOutlet NSTableView *taskTable;

- (IBAction)addTask:(id)sender;
- (IBAction)delTask:(id)sender;

@end

