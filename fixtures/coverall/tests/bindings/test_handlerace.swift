import Foundation
import coverall

final class MyDelegate: CoverallsDelegate {
    func doSomething() {}
}

DispatchQueue.concurrentPerform(iterations: 10) { idx in
    let coveralls = Coveralls(name: "Coverall \(idx)")
    coveralls.setDelegate(delegate: MyDelegate())
}