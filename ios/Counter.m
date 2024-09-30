//
//  Counter.m
//  testnativemodul
//
//  Created by Zeyad Albazlamit on 26/09/2024.
//

#import <Foundation/Foundation.h>

#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(Counter, NSObject)

RCT_EXTERN_METHOD(getCount)
//RCT_EXTERN_METHOD(increment) //without callback
RCT_EXTERN_METHOD(increment:(RCTResponseSenderBlock)callback)//WITHCALLBACK
RCT_EXTERN_METHOD(decrement:
    (RCTPromiseResolveBlock)resolve
    reject:(RCTPromiseRejectBlock) reject)//promisies
@end
