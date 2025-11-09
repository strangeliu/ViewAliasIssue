import SwiftUI
import Engine
import Atoms

struct SomeAlias: ViewAlias {
    
    var defaultBody: some View {
        Text("Not working 🥲")
    }
}

public struct ContentView: View {
    
    public var body: some View {
        AtomRoot {
            AtomRoot {
                ZStack {
                    SomeAlias()
                }
            }
            .viewAlias(SomeAlias.self) {
                Text("It works! 😎")
            }
        }
    }
}
