# LotR-Eric_Vargas-SDK

[![Version](https://img.shields.io/cocoapods/v/LotR-Eric_Vargas-SDK.svg?style=flat)](https://cocoapods.org/pods/LotR-Eric_Vargas-SDK)
[![License](https://img.shields.io/cocoapods/l/LotR-Eric_Vargas-SDK.svg?style=flat)](https://cocoapods.org/pods/LotR-Eric_Vargas-SDK)
[![Platform](https://img.shields.io/cocoapods/p/LotR-Eric_Vargas-SDK.svg?style=flat)](https://cocoapods.org/pods/LotR-Eric_Vargas-SDK)

## Overview

This is an iOS library that allows to use the endpoints in [The One API](https://the-one-api.dev/).

The One API contains information about The Lord of the Rings world. This includes information about its characters, movies, books and memoral quotes.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

This example installs the repo from the local repository instead of fetching remotely from Cocoapods.

This app currently doesn't show any UI, but shows results fetched from The One API in the Xcode console. You can modify what is called in [LREVViewController](https://github.com/rcvrgs/LotR-Eric_Vargas-SDK/blob/main/Example/LotR-Eric_Vargas-SDK/LREVViewController.m).

## Installation

LotR-Eric_Vargas-SDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'LotR-Eric_Vargas-SDK'
```

## API Key

The One API requires an API key for most of its endpoints. Make sure to get yours from their [website](https://the-one-api.dev/sign-up). This library manages adding it for you, but you still need to provide it to the API.

[LREVInitService](https://github.com/rcvrgs/LotR-Eric_Vargas-SDK/blob/main/LotR-Eric_Vargas-SDK/Classes/LREVInitService.h) is a singleton to which you provide your API key. 

The Example app shows how to do it in [LREVAppDelegate](https://github.com/rcvrgs/LotR-Eric_Vargas-SDK/blob/main/Example/LotR-Eric_Vargas-SDK/LREVAppDelegate.m#L17).

## How to use

This library contains Client classes that represent the endpoints shown in [The One API docs](https://the-one-api.dev/documentation).

The One API returns JSON values, in this library expect to receive objects representing these JSON values.

One example is [LREVMovie](https://github.com/rcvrgs/LotR-Eric_Vargas-SDK/blob/main/LotR-Eric_Vargas-SDK/Classes/LREVMovie.h), which contains all the properties that describe a movie.

Use an instance of [LREVMovieClient](https://github.com/rcvrgs/LotR-Eric_Vargas-SDK/blob/main/LotR-Eric_Vargas-SDK/Classes/LREVMovieClient.h) to make movie requests. It contains several methods to retrieve movies from The One API. Some of the methods allow adding query parameters. 

## Author

Eric Vargas

## License

LotR-Eric_Vargas-SDK is available under the Apache 2.0 license. See the LICENSE file for more info.
