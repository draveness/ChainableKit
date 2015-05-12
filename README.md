# ChainableKit
ChainableKit is a convience way to set up UIKit component with chainable syntax.

![Version](https://img.shields.io/badge/Pod-%20v0.1.0%20-or.svg)
[![Build Status](https://travis-ci.org/Draveness/ChainableKit.svg?branch=master)](https://travis-ci.org/Draveness/ChainableKit)
![MIT License](https://img.shields.io/github/license/mashape/apistatus.svg)
![Platform](https://img.shields.io/badge/platform-%20iOS%20-lightgrey.svg)

# Installation with CocoaPods

[CocoaPods](https://cocoapods.org/) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like DKNightVersion in your projects. See the [Get Started section](https://cocoapods.org/#get_started) for more details.

## Podfile

```
pod "ChainableKit", "~> 0.1.0"
```

# How to use

Use these code to configure view's `backgroundColor`.

```objc
view.make.backgroundColor([UIColor whiteColor]);
```

Use these code to initialize a label from a class method and setup it with chainable syntax.

```objc
UIColor *red = [UIColor redColor];
UILabel.make
    .backgroundColor(red)
    .textAlignment(NSTextAlignmentCenter)
```

You can get the UIKit components back with view method.

```
UILabel *label = UILabel.make
					.backgroundColor(red)
					.textAlignment(NSTextAlignmentCenter)
					.view;
```


# Contact

- Powered by [Draveness](http://github.com/draveness)
- Personal website [DeltaX](http://deltax.me)

# License

ChainableKit is available under the MIT license. See the LICENSE file for more info.

# Todo

- Documentation
