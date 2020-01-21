# Cordova ios vibrations

## Installation

Will only vibrate on iOS >= 10

`cordova plugin add com.dtech.cordova.ios.vibrate`

alternatively

`cordova plug add https://github.com/redolent/cordova-plugin-ios-vibrate`

## Usage

``` Javascript
Vibrate.vibrate('heavy');
Vibrate.vibrate('light');
Vibrate.vibrate('medium');
Vibrate.vibrate('rigid');
Vibrate.vibrate('soft');
Vibrate.vibrate('success');
Vibrate.vibrate('warning');
Vibrate.vibrate('error');
Vibrate.vibrate('selectionChanged');
```

## See also

https://developer.apple.com/documentation/uikit/uiimpactfeedbackgenerator/feedbackstyle
