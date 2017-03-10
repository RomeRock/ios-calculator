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

## Customitazion

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
calculatorView.setPrimaryColor(color: UIColor(hex: "EF4517"))
```

[![Simulator Screen Shot Feb 27, 2017, 5.27.35 PM.png](https://s27.postimg.org/e16zizz5v/Simulator_Screen_Shot_Feb_27_2017_5_27_35_PM.png)](https://postimg.org/image/a4tnn0e67/)

```swift
//set the background color for the top view and the text color for the ok button 
calculatorView.setSecondaryColor(color: UIColor(hex: "C33109"))
```

[![Simulator Screen Shot Feb 27, 2017, 5.31.03 PM.png](https://s1.postimg.org/lm8d0zgi7/Simulator_Screen_Shot_Feb_27_2017_5_31_03_PM.png)](https://postimg.org/image/5b894o40b/)

```swift
//set the background color for the Results layout, the numbers layout, the text color for the operation buttons, and the close button
calculatorView.setPanelColor(color: .red)
```

[![Simulator Screen Shot Feb 27, 2017, 5.37.01 PM.png](https://s8.postimg.org/4r55cyrbp/Simulator_Screen_Shot_Feb_27_2017_5_37_01_PM.png)](https://postimg.org/image/cwn7b4fkh/)

```swift
//set the text color for the numbers layout, clear and back button and history label
calculatorView.setPrimaryTextColor(color: .red)
```

[![Simulator Screen Shot Feb 27, 2017, 5.38.09 PM.png](https://s1.postimg.org/c9265assf/Simulator_Screen_Shot_Feb_27_2017_5_38_09_PM.png)](https://postimg.org/image/ah97ae9ff/)


## License

This project is is available under the MIT license. See the LICENSE file for more info. Attribution by linking to the [project page](https://github.com/RomeRock/ios-calculator) is appreciated.

