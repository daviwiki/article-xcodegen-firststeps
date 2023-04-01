
import Foundation
import Factory

extension Container {
    
    var employeeRepository: Factory<EmployeeRepository> {
        Factory(self) { EmployeeRepositoryDefault() }
    }
    
    public var employeeViewModel: Factory<EmployeesViewModel> {
        Factory(self) { EmployeesViewModel() }
    }
}
