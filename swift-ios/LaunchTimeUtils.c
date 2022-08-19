//
//  LaunchTimeUtils.c
//  bugsnag-example
//
//  Created by Rosty Sokolov on 8/25/21.
//  Copyright © 2021 Bugsnag. All rights reserved.
//
#import <sys/sysctl.h>
#include <unistd.h>
#include "LaunchTimeUtils.h"

struct timeval
bugsnagProcessStartTime() {
    size_t len = 4;
    int mib[len];
    struct kinfo_proc kp;

    sysctlnametomib("kern.proc.pid", mib, &len);
    mib[3] = getpid();
    len = sizeof(kp);
    sysctl(mib, 4, &kp, &len, NULL, 0);

    struct timeval startTime = { 0 };
    startTime = kp.kp_proc.p_un.__p_starttime;

    return startTime;
}

