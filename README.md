# swift-log-objc

A (Obj)C(++) logging backend for SwiftLog for logging in mixed ObjC/C/C++/Swift targets.


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
 
 ## Installation
 
 This project has Apple's SwiftLog as dependency. This project can be used as a single point of logging for 
 all the mixed source files in your project.
 
 This project by default emits a static library containing Apple's SwiftLog plus the (Obj)C(++) shim.
 
 This project can be configured in following ways as well:
 1. A dynamic target can be added. This includes SwiftLog for Swift and ObjC/C/C++ log backend.
 2. If Apple's SwiftLog is already present in your project then:
    Include the below files in to your project.
      -- swift_log_objc.swift
      -- SwiftLog.h
      -- SwiftLog.m
 3. Further other suitable targets can also be added to this project.
 
 Swift Package Manager configured for this project throwed "mixed-source" error. This needs analysis and 
 until then i felt this static/dynamic library target would be suitable.
 
 ## TODO
 - [ ] Investigate if this project can have SPM
 - [ ] Analyze performace for this front end

## Contributing 
Feel free to contribute to this project.

## Licence
MIT

## Contact
[Nikhil]: https://twitter.com/nikhil38036647

 
