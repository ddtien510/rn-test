//#import "Pushdy.h"

//@implementation Pushdy
//
//RCT_EXPORT_MODULE()

//RCT_EXPORT_METHOD(sampleMethod:(NSString *)stringArgument numberParameter:(nonnull NSNumber *)numberArgument callback:(RCTResponseSenderBlock)callback)
//{
//    // TODO: Implement some actually useful functionality
//    callback(@[[NSString stringWithFormat: @"numberArgument22: %@ stringArgument: %@", numberArgument, stringArgument]]);
//}

//@end


/**
 * Change to use Swift instead of Objective-C
 * This guide might be useful for you:
 * https://teabreak.e-spres-oh.com/swift-in-react-native-the-ultimate-guide-part-1-modules-9bb8d054db03#f662
 */
// ====== Expose Class and function to JS ========
#import <React/RCTBridgeModule.h>
#import "React/RCTEventEmitter.h"

// Expose to JS as Pushdy instead of RNPushdy
// Objective-C type in Swift: https://www.natashatherobot.com/swift-the-deceptively-simple-programming-language/

@interface RCT_EXTERN_MODULE(RNPushdy, RCTEventEmitter)

RCT_EXTERN_METHOD(
                  sampleMethod: (NSString *)stringArgument
                  numberArgument: (nonnull NSNumber *)numberArgument
                  resolve: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )


RCT_EXTERN_METHOD(
                  initPushdy: (NSDictionary *)options
                  resolve: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )

RCT_EXTERN_METHOD(
                  getDeviceToken: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )

RCT_EXTERN_METHOD(
                  registerForPushNotifications: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )

RCT_EXTERN_METHOD(
                  isRemoteNotificationRegistered: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )

RCT_EXTERN_METHOD(
                  isNotificationEnabled: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )

RCT_EXTERN_METHOD(
                  setPushBannerAutoDismiss: (BOOL)autoDismiss
                  resolve: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )

RCT_EXTERN_METHOD(
                  setPushBannerDismissDuration: (nonnull NSNumber *)seconds
                  resolve: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )

RCT_EXTERN_METHOD(
                  setCustomPushBanner: (NSString *)viewType
                  resolve: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )

RCT_EXTERN_METHOD(
                  setCustomMediaKey: (NSString *)mediaKey
                  resolve: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )

RCT_EXTERN_METHOD(
                  setDeviceId: (NSString *)deviceId
                  resolve: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )

RCT_EXTERN_METHOD(
                  getDeviceId: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )

RCT_EXTERN_METHOD(
                  getPendingNotification: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )

RCT_EXTERN_METHOD(
                  getPendingNotifications: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )

RCT_EXTERN_METHOD(
                  setAttribute: (NSString *)attr
                  value:(NSString *)value
                  resolve: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )


RCT_EXTERN_METHOD(
                  pushAttribute: (NSString *)attr
                  values:(NSArray *)values
                  resolve: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )

RCT_EXTERN_METHOD(
                  getPlayerID: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )

/**
 Swift: Calling Swift functions from Objective-C
 https://ericasadun.com/2014/08/21/swift-calling-swift-functions-from-objective-c/
 */
//+ (void)initWithContext:(NSString*)clientKey
//            delegate:(UIApplication *)delegate
//            didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
//{
//    NSLog(@"OK initWithContext!");
//    // [Pushdy initWithContext:clientKey delegate:delegate launchOptions:launchOptions];
//}

/**
 Test
 import
 */
+(void)doSthFoo:(NSString*)message {
    NSLog(@"OK doSthFoo! %@", message);
}

@end
