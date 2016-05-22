# HJYLabel
一个可以让Label内文字排版四角对齐的控件，继承UILabel
## 如何使用
*把项目里面的`HJYLabel.h`和`HJYLabel.m`复制到你的项目中
*`#import "HJYLabel.h"`
*其他设置和UILabel一样，但文字排版请使用`labelTextAlignment`这个属性
例如：
````
label.labelTextAlignment = LabelTextAlignmentTop | LabelTextAlignmentLeft;
````
让文字左上角对齐
    
使用错误会打印错误信息：
````
label.labelTextAlignment = LabelTextAlignmentTop | LabelTextAlignmentBotton;
````
又居上对齐，又居下对齐？这种错误会打印以下错误：
````
2016-05-22 23:51:51.682 HJYLabel[7418:2614899] 居上和居下不能同时使用
````
