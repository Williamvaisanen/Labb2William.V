

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TodoData : NSObject

@property (nonatomic) NSString* date;
@property (nonatomic) NSString* task;

@property (nonatomic) int state;   // 0 Prioritize,1 regular,2 done.

@property (nonatomic) enum taskStates;



enum taskStates;


typedef enum : NSUInteger {
    priority = 0,
    regular = 1,
    done = 2,
} taskStates;

+(NSDictionary*) makeDictionary:(TodoData *)todoData;

+(TodoData*) makeTodoData:(NSDictionary *)fromDictionary;



- (instancetype) initWithDate: (NSString *)date andTask: (NSString *)task;
 
@end

NS_ASSUME_NONNULL_END

