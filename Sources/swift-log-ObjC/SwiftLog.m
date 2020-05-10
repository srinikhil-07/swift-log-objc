#import <Foundation/Foundation.h>
#import "SwiftLog.h"

SwiftLogger* initLogger(NSString* label, BOOL errorStream) {
    return [[SwiftLogger alloc] init:label with:errorStream];
}

void logger(SwiftLogger* log, NSInteger level, NSString* format, ...) {
    //SwiftLogger* log = [[SwiftLogger alloc] init:@"default" with:TRUE];
    va_list args;
    va_start(args, format);
    NSString *logMsg = [[NSString alloc] initWithFormat:format arguments:args];
    va_end(args);
    if(level == Info) {
        [log infoWithMessage:logMsg];
    } else if(level == Trace) {
        [log traceWithMessage:logMsg];
    } else if(level == Debug) {
        [log debugWithMessage:logMsg];
    } else if(level == Notice) {
        [log noticeWithMessage:logMsg];
    } else if(level == Warning) {
        [log warningWithMessage:logMsg];
    } else if(level == Critical) {
        [log criticalWithMessage:logMsg];
    } else if(level == Error) {
        [log errorWithMessage:logMsg];
    }
}
