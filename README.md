# LJTool

### [LJTool](https://github.com/ljcoder2015/LJTool)简介
在开发过程中，有一些常用扩展每次都会用到，每次拷贝来拷贝去，有点烦了，就封装成了一个工具库，使用pod来管理，方便多了。LJTool主要分成三大块：
1. 配色类，封装了一些常用的颜色。
2. 控件初始化，把控件的创建和常用的属性设置封装了一下，并且加了一些占位符
3. 其它，包括图片的创建和button的内容排列方式
	
### 安装
在`Podfile`加入
```
pod 'LJTool'
```
然后执行下面命令即可
```
pod install
```

### 基本使用
**1. UIColor 类**
根据RGB创建UIColor
```swift
UIColor.lj.color(r: 10, g: 10, b: 10)
```
根据16进制创建UIColor
```swift
UIColor.lj.color(0x123456, alpha: 1)
```
一些常用颜色的用法，查看`LJColorViewController`文件

![lJTool](http://image.ljcoder.com/WechatIMG42.jpeg)

**2. UI Create**
可看demo中`LJTool_UICreateViewController`中的用法，创建完后默认会有占位符。

![LJTool](http://image.ljcoder.com/WechatIMG41.jpeg)

- UITableView
```swift
fileprivate lazy var tableView: UITableView = {
    let tableView: UITableView = UITableView.lj.tableView(dataSource: self, delegate: self)
    tableView.backgroundColor = UIColor.lj.background
    tableView.register(LJTableViewCell.self, forCellReuseIdentifier: kLJTableViewCell)
    return tableView
}()
```
- CollectionView
```swift
fileprivate lazy var imageCollectionView: UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    let collection = UICollectionView.lj.collectionView(layout: layout, dataSource: self, delegate: self)
    collection.register(LJCollectionViewCell.self, forCellWithReuseIdentifier: kLJCollectionViewCell)
    return collection
}()
```
- UILabel，推荐使用fontStyle方法，详情请查看[Building Apps with Dynamic Type](https://developer.apple.com/videos/play/wwdc2017/245/)
```swift
fileprivate lazy var userNameLabel: UILabel = {
    let label = UILabel.lj.label(textColor: UIColor.lj.text, fontStyle: UIFontTextStyle.headline)
    return label
}()
```
- UIImage
```swift
fileprivate lazy var logoImageView: UIImageView = {
    let imageView = UIImageView.lj.imageView()
    return imageView
}()
```
- UIButton
```swift
fileprivate lazy var commentButton: UIButton = {
    let button = UIButton.lj.button(title: "20", titleColor: UIColor.lj.gray999, fontSize: 14, image: #imageLiteral(resourceName: "icon_评论"))
    return button
}()
```
- UITextField
```swift
fileprivate lazy var textField: UITextField = {
        let textField: UITextField = UITextField.lj.textField(placeholder: "placeholder", leftView: nil, rightView: nil)
        return textField
    }()
```

3. 创建图片
创建图片主要有两个方法，一个是根据颜色值创建图片，一个是创建二维码图片
```
let QRImage = UIImage.lj.QRImage("test")
let colorImage = UIImage.lj.image(with: UIColor.red)
```
4. UIButton 内容排列
```
commentButton.lj.alignImageRightTitleLeft()
collectionButton.lj.alignImageUpTitleDown()
```
![enter image description here](http://image.ljcoder.com/WechatIMG43.jpeg)

5. 正则匹配
```
string.lj.matchingRegExp("^\\+?(?:[1-9]\\d*(?:\\.\\d{1,2})?|0\\.(?:\\d[1-9]|[1-9]\\d))$")
```
### 联系我
有好的建议或者反馈可发Issues


