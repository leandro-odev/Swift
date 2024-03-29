struct OldPost {
    var title: String {
        didSet {
            self.title = title.trimmingCharacters(in: .whitespacesAndNewlines)
        }
    }

    var body: String {
        didSet {
            self.body = body.trimmingCharacters(in: .whitespacesAndNewlines)
        }
    }
}

@propertyWrapper
struct Trimmed {
    private(set) var value: String = ""
    
    var wrappedValue: String {
        get { value }
        set { value = newValue.trimmingCharacters(in: .whitespacesAndNewlines) }
    }

    init(wrappedValue inicialValue: String) {
        self.wrappedValue = inicialValue
    }
}

struct Post {
    @Trimmed var title: String
    @Trimmed var body: String
}