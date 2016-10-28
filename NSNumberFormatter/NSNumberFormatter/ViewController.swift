//
//  ViewController.swift
//  NSNumberFormatter
//
//  Created by 彭盛凇 on 2016/10/28.
//  Copyright © 2016年 huangbaoche. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let num1 = NSNumber(value: 123456789.123456)
        
        /*
         
         public enum Style : UInt {
         
         
         case none                  // 四舍五入的整数
         
         case decimal               // 小数形式
         
         case currency              // 货币形式 -- 本地化
         
         case percent               // 百分数形式
         
         case scientific            // 科学计数
         
         case spellOut              // 朗读形式 -- 本地化
         
         @available(iOS 9.0, *)     // 序数形式 -- 本地化
         case ordinal
         
         @available(iOS 9.0, *)     // 货币形式 ISO -- 本地化
         case currencyISOCode
         
         @available(iOS 9.0, *)     // 货币形式 -- 本地化
         case currencyPlural
         
         @available(iOS 9.0, *)     // 会计计数 -- 本地化
         case currencyAccounting
         }

         */
        
        // 四舍五入的整数
        number = NumberFormatter.localizedString(from: num1, number: NumberFormatter.Style.none)
        print(number)//123456789
        
        // 小数形式
        number = NumberFormatter.localizedString(from: num1, number: NumberFormatter.Style.decimal)
        print(number)//123,456,789.123

        // 货币形式 -- 本地化
        number = NumberFormatter.localizedString(from: num1, number: NumberFormatter.Style.currency)
        print(number)//￥123,456,789.12
        // 百分数形式
        number = NumberFormatter.localizedString(from: num1, number: NumberFormatter.Style.percent)
        print(number)//12,345,678,912%

        // 科学计数
        number = NumberFormatter.localizedString(from: num1, number: NumberFormatter.Style.scientific)
        print(number)//1.23456789123456E8

        // 朗读形式 -- 本地化
        number = NumberFormatter.localizedString(from: num1, number: NumberFormatter.Style.spellOut)
        print(number)//一亿二千三百四十五万六千七百八十九点一二三四五六

        // 序数形式 -- 本地化
        number = NumberFormatter.localizedString(from: num1, number: NumberFormatter.Style.ordinal)
        print(number)//第1,2345,6789

        // 货币形式 ISO -- 本地化
        number = NumberFormatter.localizedString(from: num1, number: NumberFormatter.Style.currencyISOCode)
        print(number)//CNY123,456,789.12

        // 货币形式 -- 本地化
        number = NumberFormatter.localizedString(from: num1, number: NumberFormatter.Style.currencyPlural)
        print(number)//123,456,789.12人民币
        
        // 会计计数 -- 本地化
        number = NumberFormatter.localizedString(from: num1, number: NumberFormatter.Style.currencyAccounting)
        print(number)//￥123,456,789.12


        /*

         // ==================== 定制 ====================
         
         NSNumberFormatter *numberFormatter = [NSNumberFormatter new];
         
         numberFormatter.numberStyle = NSNumberFormatterDecimalStyle;
         
         // 格式宽度
         numberFormatter.formatWidth = 15;
         
         // 填充符
         numberFormatter.paddingCharacter = @"?";
         
         // 填充位置
         numberFormatter.paddingPosition = kCFNumberFormatterPadBeforeSuffix;
         numberFormatter.positiveSuffix = @"元";
         
         NSLog(@"%@",[numberFormatter numberFromString:@"10000000元"]);  // 10000000
         
         // 缩放因子,你可以将一个数缩放指定比例,然后给其添加后缀,如传入一个3000,你希望表示为3千,就要用到这个属性
         // 防止影响后面的测试,故注掉
         //    numberFormatter.multiplier = @1000;
         
         //    NSLog(@"%@千",[numberFormatter numberFromString:@"1000"]);  // 1千
         
         //    numberFormatter.multiplier     = @0.001;
         //    numberFormatter.positiveSuffix = @"千";
         //    NSLog(@"%@",[numberFormatter stringFromNumber:@10000]);    // 10千
         
         // 机制不明确,负号,正号
         //    numberFormatter.negativeFormat = @"^";
         //    numberFormatter.positiveFormat = @"~0";
         
         // 貌似没什么用
         numberFormatter.allowsFloats = NO;
         numberFormatter.alwaysShowsDecimalSeparator = NO;
         numberFormatter.maximum = @1000;
         numberFormatter.minimum = @100;
         
         // 小数点样式
         numberFormatter.decimalSeparator = @".";
         
         // 零的样式
         numberFormatter.zeroSymbol       = @"-";
         
         // 前缀和后缀
         numberFormatter.positivePrefix = @"!";
         numberFormatter.positiveSuffix = @"元";
         numberFormatter.negativePrefix = @"@";
         numberFormatter.negativeSuffix = @"亏";
         
         // 指定符号,与我们在前面类方法中说明的一致
         NSLog(@"货币代码%@",numberFormatter.currencyCode);                     // 货币代码USD
         NSLog(@"货币符号%@",numberFormatter.currencySymbol);                   // 货币符号$
         NSLog(@"国际货币符号%@",numberFormatter.internationalCurrencySymbol);   // 国际货币符号USD
         NSLog(@"百分比符号%@",numberFormatter.percentSymbol);                   // 百分比符号%
         NSLog(@"千分号符号%@",numberFormatter.perMillSymbol);                   // 千分号符号‰
         NSLog(@"减号符号%@",numberFormatter.minusSign);                         // 减号符号-
         NSLog(@"加号符号%@",numberFormatter.plusSign);                          // 加号符号+
         NSLog(@"指数符号%@",numberFormatter.exponentSymbol);                    // 指数符号E
         
         // 整数最多位数
         numberFormatter.maximumIntegerDigits = 10;
         
         // 整数最少位数
         numberFormatter.minimumIntegerDigits = 2;
         
         // 小数位最多位数
         numberFormatter.maximumFractionDigits = 3;
         
         // 小数位最少位数
         numberFormatter.minimumFractionDigits = 1;
         
         // 数字分割的尺寸
         numberFormatter.groupingSize = 4;
         
         // 除了groupingSize决定的尺寸外,其他数字位分割的尺寸
         numberFormatter.secondaryGroupingSize = 2;
         
         // 最大有效数字个数
         numberFormatter.maximumSignificantDigits = 12;
         
         // 最少有效数字个数
         numberFormatter.minimumSignificantDigits = 3;
         
         NSLog(@"正数%@,负数%@",[numberFormatter stringFromNumber:@(+12135230.2346)],[numberFormatter stringFromNumber:@(-12135231.2346)]);  // 正数!12,13,5230.2346元,负数@12,13,5231.2346亏
         NSLog(@"零 = %@",[numberFormatter stringFromNumber:@(0)]); //  零 = -
         
         // 舍入值,比如以10为进位值,那么156就进位为160,154进位为150
         numberFormatter.roundingIncrement = @10;
         
         // 舍入方式
         numberFormatter.roundingMode = kCFNumberFormatterRoundHalfUp;
         NSLog(@"%@",[numberFormatter stringFromNumber:@123456.7890]);  // !12,3460元
         */

    }
}

