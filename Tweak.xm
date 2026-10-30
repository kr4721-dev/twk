%hook SpringBoard
- (void)applicationDidFinishLaunching:(id)application {
    %orig;
    // Simple iOS15‑compatible tweak: show a toast on launch
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"iOS15Tweak" message:@"Welcome to iOS 15!" preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    [keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
}
%end