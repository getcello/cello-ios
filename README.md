### Cello for iOS

The Cello SDK for iOS enables you to add sharing into your iOS app. With a plug-n-play mobile sharing component, your users can easily share their invite link with their friends and network using mobile sharing options convenient for them.

Note, that you will still need to provide access to full featured Cello Referral Component through your web app for your users to be able to claim their rewards.

## Installation

Cello for iOS supports iOS 15 and up. To install it you need the product ID and token you get during onboarding.

### Option 1: Swift Package Manager (recommended)

Add `https://github.com/getcello/cello-ios-sp` as a Swift Package Repository in Xcode and follow the instructions to add `CelloSDK` as a Swift Package.

### Option 2: CocoaPods

CocoaPods trunk became read-only on 2 December 2026, so `pod 'CelloSDK'` on its own stops at 0.16.1. Pin the release you want from this repository instead:

```ruby
target 'YourTargetName' do
  pod 'CelloSDK', :git => 'https://github.com/getcello/cello-ios.git', :tag => '0.16.1'
end
```

Every release is tagged here. Change the tag to upgrade, then run `pod install`.

### Option 3: Install manually

- Download `CelloSDK.xcframework.zip` from the [latest release](https://github.com/getcello/cello-ios-sp/releases/latest) and extract it.
- Drag `CelloSDK.xcframework` into your project. Make sure "Copy items if needed" is selected and click Finish.
- In the target settings for your app, set `CelloSDK.xcframework` to "Embed & Sign" in the "Frameworks, Libraries, and Embedded Content" section of the "General" tab.

## Example app

An example app is provided [here](https://github.com/getcello/cello-ios/tree/main/Examples).

## React Native Support

Looking for React Native support? We have a [React Native Plugin](https://github.com/getcello/cello-react-native) for Cello Referral component 🎉