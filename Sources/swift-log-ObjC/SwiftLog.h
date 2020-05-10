#import <Foundation/Foundation.h>
#import "swift_log_ObjC-Swift.h"


typedef NS_ENUM(NSInteger, LogLevel)
{
    Trace = 1,
    Debug = 2,
    Info = 3,
    Notice = 4,
    Warning = 5,
    Error = 6,
    Critical = 7,
};

#define trace_log(log, format, ...) logger(log, Trace, format, ##__VA_ARGS__)
#define debug_log(log, format, ...) logger(log, Debug, format, ##__VA_ARGS__)
#define info_log(log, format, ...) logger(log,Info, format, ##__VA_ARGS__)
#define warning_log(log, format, ...) logger(log, Notice, format, ##__VA_ARGS__)
#define error_log(log, format, ...) logger(log, Error, format, ##__VA_ARGS__)
#define critical_log(log, format, ...) logger(log, Critical, format, ##__VA_ARGS__)

SwiftLogger* initLogger(NSString* label, BOOL errorStream);
void logger(SwiftLogger* log, NSInteger level, NSString* format, ...)NS_FORMAT_FUNCTION(3,4) NS_NO_TAIL_CALL;

