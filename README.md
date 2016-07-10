# RxAdvancedNimble

Nimble extensions that make unit testing with RxSwift easier

# Why

RxSwift includes a really nifty little library called [RxBlocking](http://cocoapods.org/pods/RxBlocking) which provides convenience functions for peeking in on Observable instances. 
Also, there is a library called [RxNimble](https://github.com/RxSwiftCommunity/RxNimble) which provides some operator overloads for equality checking.
But sometimes we need more complicated matching than just equality, so this is why I created this library.

Currently you type something like this:

    let observable = Observable.of(0, 1, 2, 3)
    expect { try observable.toBlocking().last() }.to(equal(3))


Now you can only type:
    
    let observable = Observable.of(0, 1, 2, 3)
    expect(observable).toEmitLast(equal(3))
    
# License

[MIT](License)
