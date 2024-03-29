

#ifndef sendSMS_CTMessageCenter_h
#define sendSMS_CTMessageCenter_h

#import <Foundation/Foundation.h>

@interface CTMessageCenter : NSObject
{
}

+ (id)sharedMessageCenter;
- (id)init;
- (id)sendSMS:(id)fp8;
- (id)sendMMSFromData:(id)fp8 messageId:(unsigned int)fp12;
- (id)sendMMS:(id)fp8;
- (id)send:(id)fp8;
- (id)incomingMessageWithId:(unsigned int)fp8 telephonyCenter:(struct __CTCallCenter *)fp12 isDeferred:(BOOL)fp16;
- (int)incomingMessageCount;
- (id)allIncomingMessages;
- (void)acknowledgeIncomingMessageWithId:(unsigned int)fp8;
- (void)acknowledgeOutgoingMessageWithId:(unsigned int)fp8;
- (id)incomingMessageWithId:(unsigned int)fp8;
- (id)deferredMessageWithId:(unsigned int)fp8;
- (id)statusOfOutgoingMessages;
- (id)encodeMessage:(id)fp8;
- (id)decodeMessage:(id)fp8;
- (BOOL)isMmsEnabled;
- (BOOL)isMmsConfigured;
- (BOOL)sendSMSWithText:(id)fp8 serviceCenter:(id)fp12 toAddress:(id)fp16;

@end


#endif
