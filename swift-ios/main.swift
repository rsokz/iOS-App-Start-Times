//
//  main.swift
//  bugsnag-example
//
//  Created by Rosty Sokolov on 10/6/21.
//  Copyright © 2021 Bugsnag. All rights reserved.
//

import UIKit

var preMainTime = 0

let currentTime = CFAbsoluteTimeGetCurrent() + kCFAbsoluteTimeIntervalSince1970
let startupTime = currentTime - LaunchTime().processStartTimestamp
let startupTimeMS = Int(startupTime.truncatingRemainder(dividingBy: 1) * 1000)

preMainTime = startupTimeMS
//print("Pre-main time: \(startupTimeMS)")

UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, NSStringFromClass(AppDelegate.self))
