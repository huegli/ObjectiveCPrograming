//
//  Speakable.h
//  speakable
//
//  Created by Nikolai Schlegel on 10/20/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (Speakable)
- (NSString *)encodeAsSpeakableString;
+ (NSData *)dataWithSpeakableString:(NSString *)s
                              error:(NSError **)e;
@end

NS_ASSUME_NONNULL_END
