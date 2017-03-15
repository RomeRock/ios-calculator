[![mm_header.jpg](https://s16.postimg.org/674mqlohx/mm_header.jpg)](https://postimg.org/image/dzvaikugx/)

# ios-calculator
iOS customizable simple calculator module.
This is a simple module for a calculator, make the basic arithmetic operations: (*, /, +, -)

[![Simulator_Screen_Shot_Feb_27_2017_5_44_53_PM.png](https://s24.postimg.org/il7ns2eph/Simulator_Screen_Shot_Feb_27_2017_5_44_53_PM.png)](https://postimg.org/image/9q6thjpwx/)

## Installation
Download the repository and just copy these two files

* Calculator.swift
* Calculator.xib

And paste to your project

## Customization

You can set the colors for the Calculator Layout, as you can see in the sample code, you create an object and load the nib

```swift
//Create a container (UIViewController)
let calculatorViewController:UIViewController = UIViewController()
//Load the Calculator View
let calculatorView = Bundle.main.loadNibNamed("CalculatorView", owner: nil, options: nil)?[0] as! CalculatorView

//set the Colors


//Add the Calculator View to the Container(UIViewController)
calculatorViewController.view = calculatorView

//Set the Container
calculatorView.viewController = calculatorViewController
        
//Set the transition for the UIViewController
calculatorViewController.modalPresentationStyle = .overFullScreen
calculatorViewController.modalTransitionStyle = .crossDissolve

//Present the View
present(calculatorViewController, animated: true, completion: nil)
```

then you can call the different methods to customize the layout, we also add a really cool extention, so you can create a UIColor object from the hex code of the desire color.

```swift
//set the background color for the Operations Buttons  
calculatorView.setPrimaryColor(color: UIColor(hex: "F49F0A"))
```

[![Simulator Screen Shot Mar 9, 2017, 9.50.53 PM.png](https://s14.postimg.org/vhadtsv8x/Simulator_Screen_Shot_Mar_9_2017_9_50_53_PM.png)](https://postimg.org/image/5yi1gsbot/)

```swift
//set the background color for the top view and the text color for the ok button 
calculatorView.setSecondaryColor(color: UIColor(hex: "F49F0A"))
```

[![Simulator Screen Shot Mar 9, 2017, 9.51.29 PM.png](https://s1.postimg.org/5d91450f3/Simulator_Screen_Shot_Mar_9_2017_9_51_29_PM.png)](https://postimg.org/image/pkmgwfxwb/)

```swift
//set the background color for the Results layout, the numbers layout, the text color for the operation buttons, and the close button
calculatorView.setPanelColor(color: UIColor(hex: "DFD8D8"))
```

[![Simulator Screen Shot Mar 9, 2017, 9.52.11 PM.png](https://s10.postimg.org/e50nnr1s9/Simulator_Screen_Shot_Mar_9_2017_9_52_11_PM.png)](https://postimg.org/image/rlxm6mc3p/)

```swift
//set the text color for the numbers layout, clear and back button and history label
calculatorView.setPrimaryTextColor(color: UIColor(hex: "00598A"))
```

[![Simulator Screen Shot Mar 9, 2017, 9.52.55 PM.png](https://s7.postimg.org/ugq9fk5jf/Simulator_Screen_Shot_Mar_9_2017_9_52_55_PM.png)](https://postimg.org/image/4xxx2jlzb/)


## License

This project is is available under the MIT license. See the LICENSE file for more info. Attribution by linking to the [project page](https://github.com/RomeRock/ios-calculator) is appreciated.

<div>
<a href="http://romerock.com"> <img style="max-width: 100%; margin:7" src="https://avatars3.githubusercontent.com/u/23345883?v=3&s=200=true" alt="Google Play" height="50px" /> </a><a href="https://www.facebook.com/romerockapps/?ref=page_internal"> <img style="max-width: 100%; margin:7" src="https://s18.postimg.org/6sjokzpd5/facebook_icon.png=true" alt="Google Play" height="50px" /> </a><a href="https://twitter.com/romerock_apps"> <img style="max-width: 100%; margin:7" src="https://s18.postimg.org/w2eg82w4p/twitter_icon.png=true" alt="Google Play" height="50px" /> </a><a href="https://play.google.com/store/apps/dev?id=5841338539930209563"> <img style="max-width: 100%; margin:7" src="https://s18.postimg.org/n29unw015/android_icon.png=true" alt="Google Play" height="50px" /> </a><a href="https://itunes.apple.com/us/developer/rome-rock-llc/id1190244007"> <img style="max-width: 100%; margin:7" src="https://s18.postimg.org/leap98m5l/ios_icon.png=true" alt="Google Play" height="50px" /> </a><a href="https://github.com/RomeRock"> <img style="max-width: 100%; margin:7" src="https://s18.postimg.org/wpdcxlt0p/github_icon.png=true" alt="Google Play" height="50px" /> </a><a href="https://www.youtube.com/channel/UCcSLNuTYC7qJhOKQ4CpseRA"> <img style="max-width: 100%; margin:7" src="https://s18.postimg.org/w4ybuwzs9/youtube_icon.png=true" alt="Google Play" height="50px" /> </a>
</div>
