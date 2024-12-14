# Aspen for macOS
### Made by the community, for the community!
Aspen is a free, open collection of tools which hopes to improve your macOS experience in one way or another.

## But, why?
In 2022, I ([Stryxus](https://github.com/Stryxus)) bought my first macOS product, the M1 iMac. Prior to this, I had many short experiences with the Intel iMac's and I was not impressed until the overhaul when Apple Silicon invaded the desktops.
Well, this pretty much indoctrinated me into the Apple ecosystem and now I have one of most products, consequentially allowing me to study macOS greater in-depth due to things like my increasing reliance on the entire iCloud suite.

Well, as I studied macOS more, a realisation hit me, macOS is like a template almost, heck even some of the apps are (like the Health app and Fitness), so many helpful features are missing while the API's and such are there. I then began looking for apps to fill in these many voids but, suprise to me, **A LOT** of them were behind subscriptions or pretty steep paywalls, many of them feeling like they are deliberatly fragmented to milk money from the consumer and, almost all of them lacking features you would think would be obvious to implement but, strangely, still are missing.

So, this is where the need came into play, for a unified yet entirely modular app that provides as much granularity as possible while remaining simple for the... Not so tech savy...

## Project Standards
#### Aspen just wants you to have the best experience that YOU want to have on macOS.
### User-Facing Standards
- Aspen will ALWAYS be free and completely open-source.
- Aspen will NEVER collect any data at all, even 'anonymous' data.
- Aspen will ALWAYS be optimised for energy effeciency aka, as much performance per watt as possible.
- Aspen will NEVER be intrusive, like spamming you with notifications or popups, or requesting excessive amounts of permissions until they are absolutely needed for a feature to work, to name some examples.
- Aspen will ALWAYS be open to new ideas and suggestions.
- Aspen will NEVER host ads or anything like it.
- Aspen will ALWAYS be as lightweight as possible when it comes to storage and RAM usage.
### Technical Standards
- ONLY support macOS versions supported by Apple (The 'v1' release will only support the latest macOS onward)
- ONLY Swift and Rust can be used.
- ONLY use the latest version of Swift and Rust when building for a public build unless there is good reason not to do so.
- ONLY use 3rd party code/projects/packages when necessary. Foe example, [swift-bridge](https://github.com/chinedufn/swift-bridge), or something like [libavif](https://github.com/AOMediaCodec/libavif) or say, Swift didnt have native JSON handling so, we may need a package/library.
## Q/A
### Why not support iOS/iPadOS/watchOS/tvOS/Other?
This is because Aspen is not for-profit and is managed by a single person ([Stryxus](https://github.com/Stryxus)). In order to support other platforms, the first step would be aquiring a developers account which costs money. Perhaps in the future if Aspen garners enough support to justify it.

The second step would be figuring out what can actually be done since these are closed systems, apps do not have anywhere near the amount of freedom that apps do on macOS.

The third step would be figuring out a way to communicate across devices reliably and in real-time, there are some ideas for features which may require such a thing.
