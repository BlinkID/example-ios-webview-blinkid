# Microblink iOS WebView Test

## Intro
This repo shows a basic POC for running Microblink's [BlinkID In-Browser SDK](https://github.com/BlinkID/blinkid-in-browser) using SwiftUI and `SFSafariViewController` 

- The application only consists of the [SFSafariViewController](https://developer.apple.com/documentation/safariservices/sfsafariviewcontroller) (`SafariViewController.swift`) and the Conent view (`ConentView.swift`) which displays it.
- Loads the BlinkID In-Browser SDK into the `SFSafariViewController` (a valid URL needs to be provided).
- Asks for camera permission when entering the scanning process and makes sure that the scanning and extraction process works.

## Requirements
For the SFSafariViewController to work, you only need to add the [NSCameraUsageDescription](https://developer.apple.com/documentation/bundleresources/information-property-list/nscamerausagedescription) to your `Info.plist` file. This is important as the camera scanning will not work if the end-user declines the alert pop-up.

No additional setup is required. The implementation of the `SFSafariViewController` can be viewed in the `SafariViewController.swift` file.

## Additional notes
 The `SFSafariViewController` is designed to behave like a sandboxed version of Safari, and Apple intentionally restricts apps from accessing or intercepting events such as camera or microphone permissions. These restrictions ensure user privacy and security. All of the permission actions need to be handled on the browser application's end.

## Additional assistance
If you have any additional questions, please [reach out](https://microblink.com/contact-us/) to us, and we'll be happy to help.
