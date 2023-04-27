import Foundation

public class Example {
  public init(closure: (Example) throws -> Bool = { _ in true }) {}

  public func f<T>(_ expr: @autoclosure () throws -> T) rethrows -> T {
    let val = try expr()
    return val
  }

  public func g() {}
}
