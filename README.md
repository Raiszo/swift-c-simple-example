# swift-c simple example

Recently I watched Mr. Tsoding first time experience with Swift ([video](https://www.youtube.com/watch?v=LTP5c4NqA8k)) and it is a shame that there is no "simple example" to achieve swift-c interoperability.
This [article](https://www.swift.org/documentation/articles/wrapping-c-cpp-library-in-swift.html) does explain how it could be done but never presents a working example.

In the livestream a user rapidly created a [working example](https://github.com/alimpfard/swift-c) which uses a script to compile the project with 2 commands and a few flags.
And I was courious on how swift creators would like us to do it, probably using a `Package.swift`. And here it is.

## How it was done

1. Follow https://www.swift.org/documentation/articles/wrapping-c-cpp-library-in-swift.html but it doesn't work just by declaring a single target.
2. Find https://www.swift.org/documentation/cxx-interop/project-build-setup/ but this declares "products" and I don't need it (I think). However it mentions that there needs to be a umbrelly header inside an `include` folder. Similar information can be found here https://stackoverflow.com/questions/49779543/swift-package-manager-c-interop-non-system-libraries.
   I think the folder name can be customized by passing `cSettings` to target configuration.
   Also, swift code can't contain C code in the same folder passed to `Package.swift`.
3. Move C code to `CMyLib` and swift code into `Swift`
4. Declare a C target and make it a dependency of the Swift target
5. `swift run`
