# CommonTools
Object-C 常用的宏定义。
使用方式：
      1.自己新建一个.h文件，然后将下面的复制过去。

            /**********************Color宏定义*************************/
            #define RGBA(r,g,b,a) [UIColor colorWithRed:((r)/255.0f) green:((g)/255.0f) blue:((b)/255.0f) alpha:(a)]
            #define RGB(r,g,b) RGBA(r,g,b,1.0f)

            //十六进位颜色转换
            #define HexRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
            //十六进位颜色转换（带alpha）
            #define HexRGBAlpha(rgbValue,a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:(a)]
            /*********************************************************/

            /************************字体*************************/
            #define MAIN_FONF_18      [UIFont systemFontOfSize:18]
            #define MAIN_FONF_17      [UIFont systemFontOfSize:17]
            #define MAIN_FONF_16      [UIFont systemFontOfSize:16]
            #define MAIN_FONF_15      [UIFont systemFontOfSize:15]
            #define MAIN_FONF_14      [UIFont systemFontOfSize:14]
            #define MAIN_FONF_13      [UIFont systemFontOfSize:13]
            #define MAIN_FONF_12      [UIFont systemFontOfSize:12]
            #define MAIN_FONF_11      [UIFont systemFontOfSize:11]
            #define MAIN_FONF_10      [UIFont systemFontOfSize:10]
            /****************************************************/

            /**************MBProgressHUD宏定义，弹出浮窗提示*************/
            //这个浮窗，需要配合MBProgressHUD使用，当有时再打开
            /*
             #define MBALERT(alertMsg) \
             dispatch_async(dispatch_get_main_queue(), ^{    \
             UIWindow *window=[UIApplication sharedApplication].keyWindow; \
             [MBProgressHUD hideAllHUDsForView:window animated:NO];\
             MBProgressHUD *ahud=[MBProgressHUD showHUDAddedTo:window animated:YES];\
             ahud.userInteractionEnabled = NO;\
             ahud.mode = MBProgressHUDModeText;\
             ahud.labelText = alertMsg;\
             [ahud hide:YES afterDelay:1];});
             */
            /*********************************************************/


            /**************************判断系统版本*************************/
            #define OSVersionIsAtLeastiOS6   ([[UIDevice currentDevice].systemVersion floatValue]>= 6.0 ? YES:NO)

            #define OSVersionIsAtLeastiOS7   ([[UIDevice currentDevice].systemVersion floatValue]>= 7.0 ? YES:NO)

            #define OSVersionIsAtLeastiOS8   ([[UIDevice currentDevice].systemVersion floatValue]>= 8.0 ? YES:NO)

            #define OSVersionIsAtLeastiOS9   ([[UIDevice currentDevice].systemVersion floatValue]>= 9.0 ? YES:NO)

            #define OSVersionIsAtLeastiOS10   ([[UIDevice currentDevice].systemVersion floatValue]>= 10.0 ? YES:NO)
            /*********************************************************/


            /***********屏幕的高度、宽度、关键keyWindow、导航栏*************/
            #define KEY_WINDOW  [[UIApplication sharedApplication]keyWindow]
            #define kScreenHeight CGRectGetHeight([[UIScreen mainScreen] bounds])
            #define kScreenWidth  CGRectGetWidth([[UIScreen mainScreen] bounds])
            #define NAVBARHEIGHT_STATUSBAR  (self.navigationController.navigationBar.frame.size.height + (OSVersionIsAtLeastiOS7?20:0))
            //iPhone4 4s机型
            #define ScreenInch4S (kScreenHeight < 568)
            #define ScreenLessThan375 (kScreenWidth < 375)

            /*********************************************************/


2.在相应的.m文件中，引用自己的建的.h。
