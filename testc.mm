//
//  testc.m
//  WuKongDuoBao
//
//  Created by zbj on 16/5/19.
//  Copyright © 2016年 wangyun. All rights reserved.
//

#import "testc.h"
#include <string>

@implementation testc

class Solution {
public:
    std::string reverseString(std::string s) {
        char temp;
        for(int i = 0; i < s.length()/2; i++) {
            temp = s[i];
            s[i] = s[s.length() - 1 - i];
            s[s.length() - 1 - i] = temp;
        }
        return s;
    }
};

+ (NSString *)testReverStr:(NSString *)str
{
    Solution *ha = new Solution();
    const char *destStr = [str UTF8String];
    std::string test = ha->reverseString(destStr);
    return [NSString stringWithCString:test.c_str() encoding:[NSString defaultCStringEncoding]];
    
}

@end
