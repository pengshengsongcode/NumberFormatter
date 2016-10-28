# NumberFormatter
Xcode8.1 + iOS 10.1 + swift3.0   NumberFormatter 处理数字的一些方法

```

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

```
```
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
```
