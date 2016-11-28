# ios-calculator
iOS customizable simple calculator module.
This is a simple module for a calculator, make the basic aritmetic operation: (*, /, +, -)

## Installation
Download the repository and just copy these two files

* Calculator.swift
* Calculator.xib

And paste to your project

## Customitazion

You can set the colors for the Calculator Layout, as you can see in the sample code, you create an object and load the nib

```swift
let calculator = Bundle.main.loadNibNamed("CalculatorView", owner: nil, options: nil)?[0] as! CalculatorView
```

then you can call the different methods 

```swift
//set the background color for the Numbers layout 
calculator.setNumbersColor(color: UIColor.red)
```
[![Simulator Screen Shot Nov 28, 2016, 12.35.39 PM.png](https://s18.postimg.org/aqxcklc7t/Simulator_Screen_Shot_Nov_28_2016_12_35_39_PM.png)](https://postimg.org/image/6uk0olr85/)

```swift
//set the background color for the Operations layout 
calculator.setOperationsColor(color: UIColor.red)
```

[![Simulator Screen Shot Nov 28, 2016, 12.38.43 PM.png](https://s14.postimg.org/my0u4tn7l/Simulator_Screen_Shot_Nov_28_2016_12_38_43_PM.png)](https://postimg.org/image/yzw7yywfx/)

```swift
//set the background color for the Results layout 
calculator.setResultsColor(color: UIColor.red)
```

[![Simulator Screen Shot Nov 28, 2016, 12.40.38 PM.png](https://s12.postimg.org/u6m25jpwt/Simulator_Screen_Shot_Nov_28_2016_12_40_38_PM.png)](https://postimg.org/image/jwjn6b015/)

```swift
//set the background color for the Clear, Back and equals layout 
calculator.setOtherButtonsColor(color: UIColor.red)
```

[![Simulator Screen Shot Nov 28, 2016, 12.44.21 PM.png](https://s21.postimg.org/gw7efix5z/Simulator_Screen_Shot_Nov_28_2016_12_44_21_PM.png)](https://postimg.org/image/jqajsyzc3/)

```swift
//set the text color for all the buttons 
calculator.setPanelTextColor(color: UIColor.red)
```

[![Simulator Screen Shot Nov 28, 2016, 12.46.13 PM.png](https://s16.postimg.org/7xtrqbr2d/Simulator_Screen_Shot_Nov_28_2016_12_46_13_PM.png)](https://postimg.org/image/fqkfiax1d/)

## License

This project is is available under the MIT license. See the LICENSE file for more info. Attribution by linking to the [project page](https://github.com/RomeRock/ios-calculator) is appreciated.

