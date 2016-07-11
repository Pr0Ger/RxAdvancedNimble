//
//  Created by Sergey on 09/07/16.
//


import Nimble
import RxBlocking
import RxSwift

public extension Expectation where T: ObservableType {
    public func toEmitSequence<U where U: Matcher, U.ValueType == [T.E]>(matcher: U, description: String? = nil) {
        expect { try self.expression.evaluate()?.toBlocking().toArray() }.to(matcher, description: description)
    }

    public func toEmitFirst<U where U: Matcher, U.ValueType == T.E>(matcher: U, description: String? = nil) {
        expect { try self.expression.evaluate()?.toBlocking().first() }.to(matcher, description: description)
    }

    public func toEmitLast<U where U: Matcher, U.ValueType == T.E>(matcher: U, description: String? = nil) {
        expect { try self.expression.evaluate()?.toBlocking().last() }.to(matcher, description: description)
    }

    public func toEmitSingle<U where U: Matcher, U.ValueType == T.E>(matcher: U, description: String? = nil) {
        expect { try self.expression.evaluate()?.toBlocking().single() }.to(matcher, description: description)
    }
}
