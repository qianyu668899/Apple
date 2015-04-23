Omnia
=========
Everything your projects need to know

How to use it
--
Import `Omnia.h` and you're good to to.

Omnia provides you with lots of methods for runtime version checking, device information, capability, ...

Example 1: Runtime
```
if ([Omnia isiOS7_0OrAbove]) {
    NSLog(@"Safe to use iOS 7 APIs");
} else {
    NSLog(@"Try to use pre iOS 7 APIS");
}
```

Example 2: Macro
```
@interface FTGUserManager : NSObject
OMNIA_SINGLETON_H(sharedManager)
@end

@implementation FTGUserManager
OMNIA_SINGLETON_M(sharedManager)
@end
```

Licence
--
This project is released under the MIT license. See LICENSE.md.

Reference
--
1. [DDDeviceDetection](https://github.com/ddeville/DDDeviceDetection)
2. [uidevice-extension](https://github.com/erica/uidevice-extension)
3. [DeviceHelper](https://github.com/MugunthKumar/DeviceHelper)
