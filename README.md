### Cello for iOS

The Cello SDK for iOS enables you to add sharing into your iOS app. With a plug-n-play mobile sharing component, your users can easily share their invite link with their friends and network using mobile sharing options convenient for them.

Note, that you will still need to provide access to full featured Cello Referral Component through your web app for your users to be able to claim their rewards.

## Installation

You can install Cello for iOS through Swift Package Manager or Manually. Cocoapods will be available in the future. A basic installation takes around 15 minutes but will take a little longer if you want to customize the way the Cello Referral Component is launched.

To install Cello for iOS, you will need an API key, which you will be provided during onboarding.

### Compatibility

Cello for iOS is compatible with iOS 15 and up.

### Setup

Install Cello to see and give your users the option to spread the word from your iOS app. The Cello for iOS library supports iOS 15+ and requires Xcode 14 to build.

### Install Cello

## Option 1: Swift Package Manager

Add https://github.com/getcello/cello-ios-sp as a Swift Package Repository in Xcode and follow the instructions to add CelloSDK as a Swift Package.

### Option 2: Install Cello manually

- Download Cello for iOS and extract the zip. [(👉 Cello iOS zip download)](https://github.com/getcello/cello-ios-sp/releases/download/0.9.0/CelloSDK.xcframework.zip)
- Drag CelloSDK.xcframework into your project. Make sure "Copy items if needed" is selected and click Finish.
- In the target settings for your app, set the CelloSDK.xcframework to “Embed & Sign”. This can be found in the “Frameworks, Libraries, and Embedded Content” section of the “General” tab.

## Example app

There are example app provided [here](https://github.com/getcello/cello-ios/tree/master/Examples).

## React Native Support

Looking for React Native support? We have a [React Native Plugin](https://github.com/getcello/cello-react-native) for Cello Referral component 🎉