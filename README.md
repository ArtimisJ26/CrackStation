# CrackStation, a Decrypter implementation

A library to crack passwords of up to three alphanumeric characters encrypted with SHA1 or SHA256 encryption.

# Overview

When the function is passed in with a SHA1 or SHA256 hash, the equivalent alpha-numeric password will be returned!!
The hash dictionary file in the repository contains the hashes for all one, two and three-digit combinations from which the package will look up and find the correct match.
A python program builds the SHA-hash dictionary for the package. Note: This package can only crack unsalted passwords.

# Mission Statement

This project is an attempt to spread awareness about secure passwords and spreading knowledge about the crackstations that exist on the web. During the process of developing this API, I have learned how important it is to setup a secure password. Otherwise cracking it is as easy as implementing this little CrackStation. Every password can be cracked, the only restriction is time. Decide your password with complicated characters so that it will take the crackstation a long time and the session to enter the password will time out.

# Installation

## Swift Package Manager

The [Swift Package Manager](https://www.swift.org/package-manager/) is "a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies."

Once you have your Swift package set up, add CrackStation to the list of dependencies in your `Package.swift` file:

```swift
dependencies: [
  .package(url: "git@github.com:ArtimisJ26/CrackStation.git", .upToNextMajor(from: "1.0.0"))
]
```

# Usage

## The API

Initializes the hash dictionary at the start of the program
```swift
public required init()
```

Loads the .json into the `LookupTable` dictionary and returns the dictionary to the initializing function
```swift
static func loadDictionaryFromDisk() throws -> [String : String]
```

Looks up the required hash in the dictionary and returns the value to the calling function
```swift
public func decrypt(shaHash: String) -> String? 
```


## An example

Here the `shaHash` is the hash to be decrypted, `crackStationInstance` initializes the CrackStation Package Function, `crackStationInstance.decrypt(shaHash: shaHash)` returns the decrypted value to the hash
```swift
let shaHash = "46874106f9ac7f3b68a422895aa223e1ea5ed0db860f179f6362cb166c65f8ca"
let crackStationInstance = CrackStation()
let answer = try crackStationInstance.decrypt(shaHash: shaHash)
```

# Author

Juily Yogesh Deshpande
