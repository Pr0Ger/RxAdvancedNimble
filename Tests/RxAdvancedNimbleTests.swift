//
//  Created by Sergey on 07/07/16.
//

import Nimble
import RxSwift
import XCTest
@testable import RxAdvancedNimble

class RxAdvancedNimbleTests: XCTestCase {
    func testExpectSequence() {
        let observable = Observable.of(0, 1, 2, 3)

        expect(observable).toEmitSequence(haveCount(4))
        expect(observable).toEmitSequence(equal([0, 1, 2, 3]))
    }

    func testExpectFirst() {
        let observable = Observable.of(0, 1, 2, 3)

        expect(observable).toEmitFirst(equal(0))
    }

    func testExpectLast() {
        let observable = Observable.of(0, 1, 2, 3)

        expect(observable).toEmitLast(equal(3))
    }

    func testExpectSingle() {
        let observable = Observable.just(5)

        expect(observable).toEmitSingle(equal(5))
    }
}
