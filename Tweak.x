#import <UIKit/UIKit.h>
#import <AdSupport/ASIdentifierManager.h>

%hook ASIdentifierManager
- (NSUUID *)advertisingIdentifier {
    return [NSUUID UUID];
}
- (BOOL)isAdvertisingTrackingEnabled {
    return YES;
}
%end
