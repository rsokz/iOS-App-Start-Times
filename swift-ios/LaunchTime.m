#import "LaunchTime.h"
#import "LaunchTimeUtils.h"
#import <Foundation/Foundation.h>
#import <sys/sysctl.h>

@implementation LaunchTime

- (CFTimeInterval)processStartTimestamp
{
    struct timeval startTime = bugsnagProcessStartTime();

    return startTime.tv_sec + startTime.tv_usec / 1e6;
}

@end
