# swift-log-ObjC

A (Obj)C(++) logging backend for SwiftLog for logging using SwiftLog for mixed ObjC/C/C++/Swift targets.


Apple's SwiftLog is simple and easy to use for logging in Swift source code. For mixed ObjC/C/C++/Swift targets, it would be better if we had a common logging format and engine that is based on SwiftLog for consistency.


## Usage

In (Obj)C(++) source files,import the header as shown below.

```C
#import "SwiftLog.h"
// configure log object
SwiftLogger* log = initLogger(@"label", TRUE);

// Start logging
info_log(log,@"This is a sample log");
```
