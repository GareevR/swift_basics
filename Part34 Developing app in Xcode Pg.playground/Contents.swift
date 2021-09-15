import UIKit

//open class SomePublicClass {}
//internal class SomeInternalClass {}
//fileprivate class SomePrivateClass {}
//public var somePublicVar = 0
//private var somePrivateLet = 0
//internal func someInternalFunc() {}

public class SomePublicClass { // public class
    public var somePublicProperty = 0 // public property
    var someInternalProperty = 0 // internal property
    fileprivate func somePrivateMethod() {} // fileprivate method
}
class SomeInternalClass { // internal class
    var someInternalProperty = 0 // internal property
    private func somePrivateMethod() {} // private method
}
private class somePrivateClass { // private class
    var somePrivateProperty = 0 // private property
    func somePrivateMethod() {} // private method
}

/*
private func someFunction() -> (SomeInternalClass, somePrivateClass) {
    //
}
*/
