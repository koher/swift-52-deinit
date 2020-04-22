class Foo {
    private let deinitBody: () -> Void
    init(_ deinitBody: @escaping () -> Void) {
        self.deinitBody = deinitBody
    }
    deinit {
        deinitBody()
    }
}

var a = 42
let foo = Foo { a = -1 }
let _ = foo
print(a)
