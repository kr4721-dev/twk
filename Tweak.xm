%hook SpringBoard
- (void)applicationDidFinishLaunching:(id)application {
    %orig;
    NSLog(@"iOS 15 Tweak loaded successfully");
}
%end