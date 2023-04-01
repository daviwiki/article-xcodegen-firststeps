
import Foundation

public protocol EmployeeRepository {
    
    /// Return the list of employees
    func employees() async -> [Employee]
}

class EmployeeRepositoryDefault: EmployeeRepository {
    
    func employees() async -> [Employee] {
        return [
            .maria, .laura
        ]
    }
}
