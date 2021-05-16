#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    if([array count] == 0 || array == nil || ![array[0] isKindOfClass:[NSArray class]]){
        return @[];
    }
    NSMutableArray *number = [[NSMutableArray alloc] init];
    NSMutableArray *string = [[NSMutableArray alloc] init];
    for(id item in array){
        for(id el in item){
            if([item isKindOfClass:NSString.class]){
                [string addObject:el];
            }else{
                [number addObject:el];
            }
        }
    }

    [number sortUsingSelector:@selector(compare:)];
    [string sortUsingSelector:@selector(compare:)];
    if(number.count==0){
        return string;
    }else if (string.count == 0){
        return number;
    }
    
    return [NSArray arrayWithObjects:number,string, nil];
}

@end
