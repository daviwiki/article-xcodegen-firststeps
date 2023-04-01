
import SwiftUI
import Factory

public class EmployeesViewModel: ObservableObject {
    
    @Injected(\.employeeRepository) private var employeeRepository
    
    @Published public var isLoading: Bool = false
    @Published public var employees: [Employee] = []
    
    public init() {
        
    }
    
    public func loadEmployees() async {
        self.employees = await employeeRepository.employees()
    }
}
