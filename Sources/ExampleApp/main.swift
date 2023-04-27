import Foundation
import ExampleLib

func testA(_ i: Int) -> Int {
  return i + 1
}

let array = [0, 1, 2]

#example()
//Example {
//  $0.f($0.f(array).map { testA($0) }) == []
//}
//.g()
