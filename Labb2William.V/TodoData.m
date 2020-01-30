
#import "TodoData.h"

@implementation TodoData

- (instancetype) initWithDate:(NSString *)date andTask:(NSString *)task{
    self = [super init];
    
    if(self){
        self.date = date;
        self.task = task;
        self.state = regular;
    
    
    }
    
    
    
    
    return self;
}

+(NSDictionary*) makeDictionary :(TodoData *)todoData{
    NSMutableDictionary *dictonary = [[NSMutableDictionary alloc] init];
    
    NSLog(@"%@ %@", todoData.date,todoData.task);
    
    [dictonary setObject:todoData.date forKey:@"date"];
    
    [dictonary setObject:todoData.task forKey:@"task"];
    
    [dictonary setObject:[NSNumber numberWithInt:todoData.state] forKey:@"state"];
 
    return dictonary;
}

+(TodoData*) makeTodoData :(NSDictionary *)fromDictionary{
    TodoData *todoData = [[TodoData alloc] init];
    
    todoData.date = [fromDictionary objectForKey:@"date"];
    todoData.task = [fromDictionary objectForKey:@"task"];
    todoData.state = [[fromDictionary objectForKey:@"state"] intValue];
    
    
    return todoData;
}



@end

