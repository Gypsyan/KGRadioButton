# KGRadioButton


[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Swift3 Compatible](https://img.shields.io/badge/KGRadioButton-Swift3-brightgreen.svg)](https://img.shields.io/badge/KGRadioButton-Swift3-brightgreen.svg)

`KGRadioButton` is a custom radio button.

# Installation

## Cocoapods

Install Cocoapods if need be.

```bash
$ gem install cocoapods
```

Add `KGRadioButton` in your `Podfile`.

```ruby
use_frameworks!

pod 'KGRadioButton'
```

Then, run the following command.

```bash
$ pod install
```
## Carthage

Install Carthage if need be.

```bash
$ brew update
$ brew install carthage
```

Add `KGRadioButton` in your `Cartfile`.

```ruby
github "Gypsyan/KGRadioButton"
```

Run `carthage` to build the framework and drag the built `KGRadioButton.framework` into your Xcode project.

# Usage

## Using Story board
Add a button to your Interface builder and set the class name as `KGRadioButton` in the `identity inspector`. Provide the module name as `KGRadioButton`.

Come to the `attribute inspector` and add the feature,

  * Outer Circle Color
  * Inner Circle Color
  * Outer Circle Line width
  * Inner Circle Gap

  Add an action for the button,

  ```
  @IBAction func didPressButton(_ sender: KGRadioButton) {


       sender.isSelected = !sender.isSelected

       if sender.isSelected {
           label.text = "Selected"
       } else{
           label.text = "Not Selected"
       }
   }
  ```

## Add it programmatically

Add the Radio button using the following ,

  ```
  let button = KGRadioButton(frame: CGRect(x: 20, y: 170, width: 50, height: 50))
  button.addTarget(self, action: #selector(manualAction(sender:)), for: .touchUpInside)
  self.view.addSubview(button)
  ```

  Add an action for the button,

  ```
  func manualAction (sender: KGRadioButton) {
         sender.isSelected = !sender.isSelected
        if sender.isSelected {
            label2.text = "Selected"
        } else{
            label2.text = "Not Selected"
        }
    }
  ```
# License

Copyright 2016 Ananth.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
