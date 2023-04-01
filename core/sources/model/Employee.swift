
import Foundation

public struct Employee: Hashable {
    
    public let name: String
    
    public init(name: String) {
        self.name = name
    }
}

extension Employee {
    static let maria: Employee = Employee(name: "Maria")
    static let laura: Employee = Employee(name: "Laura")
}

extension Employee: Equatable {
    
    public static func == (lhs: Employee, rhs: Employee) -> Bool {
        return lhs.name == rhs.name
    }
}
