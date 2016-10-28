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
