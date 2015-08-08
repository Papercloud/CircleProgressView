# CircleProgressView
Circular progress view developed in swift


Installation:
```
pod 'CircleProgressView', :git => 'https://github.com/bphenriques/CircleProgressView.git', :tag => '0.9.10'
```

Usage:

Add UIView in your storyboard and change class to CircleProgressView

You can configure the UIView directly in the storyboard using these IBInspectable variables:

```
@IBInspectable public var circleColor: UIColor = UIColor(hex: 0xE3C79B)
@IBInspectable public var progressColor: UIColor = UIColor(hex: 0xE46D71)
@IBInspectable public var clockWise: Bool = true
@IBInspectable public var lineWidth: CGFloat = 4.0
@IBInspectable public var valueProgress: Float = 0
```

In your UIViewController subclass:

```
@IBOutlet weak var loadingGraphView: CircleProgressView!

//value between 0 and 100
func update(progress: Float) {
  self.loadingGraphView!.valueProgress = progress
}
```

Screenshot:

![alt tag](https://raw.githubusercontent.com/bphenriques/CircleProgressView/master/Screenshots/screenshot.png)

I will make this repo public soon. For feedback or suggestions submmit an issue.
