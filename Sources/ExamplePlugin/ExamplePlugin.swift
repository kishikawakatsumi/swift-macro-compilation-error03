#if canImport(SwiftCompilerPlugin)
import SwiftCompilerPlugin
import SwiftSyntaxMacros

@main
struct ExamplePlugin: CompilerPlugin {
  let providingMacros: [Macro.Type] = [
    ExampleMacro.self,
  ]
}
#endif
