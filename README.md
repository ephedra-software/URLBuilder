# URLBuilder [![Build Status](https://dev.azure.com/ksaltykov0246/URLBuilder/_apis/build/status/ephedra-software.URLBuilder?branchName=master)](https://dev.azure.com/ksaltykov0246/URLBuilder/_build/latest?definitionId=4&branchName=master) [![Version](https://img.shields.io/cocoapods/v/URLBuilder.svg?style=flat)](https://cocoapods.org/pods/URLBuilder) [![codecov](https://codecov.io/gh/ephedra-software/URLBuilder/branch/master/graph/badge.svg)](https://codecov.io/gh/ephedra-software/URLBuilder)

Simple abstraction for URLComponents for ease to use

### CocoaPods

For URLBuilder, use the following entry in your Podfile:

```rb
pod 'URLBuilder', '~> 1.0'
```

Then run `pod install`.

### SwiftPM (Accio)

For install URLBuilder with Accio (or SwiftPM from Xcode 11) add this line to Package.swift
```swift
.package(url: "https://github.com/ephedra-software/URLBuilder.git", .upToNextMajor(from: "1.0"))
```

Then run `accio install` or `accio update`.

In any file you'd like to use URLBuilder in, don't forget to
import the framework with `import URLBuilder`. 😉

## Usage

Using URLBuilder is really simple. You can access an API like this:

```swift
let url = URLBuilder
    .scheme(.https)
    .user(custom: "john.doe")
    .host(custom: "www.example.com")
    .port(custom: 123)
    .path(custom: "/forum/questions")
    .query(items: ("tag", "networking"), ("order", "order"))
    .fragment(custom: "top")
    .url

print(url ?? "nil") // https://john.doe@www.example.com:123/forum/questions?tag=networking&order=order#top
```

This is a very simple example. Don't do that 😄

## License

URLBuilder is released under an MIT license. See [LICENSE](https://github.com/ephedra-software/URLBuilder/blob/master/LICENSE) for more information.