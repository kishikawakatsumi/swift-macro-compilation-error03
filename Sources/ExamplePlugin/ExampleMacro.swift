import SwiftSyntax
import SwiftSyntaxMacros

public struct ExampleMacro: ExpressionMacro {
  public static func expansion(
    of node: some FreestandingMacroExpansionSyntax,
    in context: some MacroExpansionContext
  ) -> ExprSyntax {
    return ExprSyntax(
      stringLiteral: """
      Example() {
        $0.f($0.f(array).map { testA($0) }) == []
      }
      .g()
      """
    )
    .with(\.leadingTrivia, node.leadingTrivia)
  }
}
