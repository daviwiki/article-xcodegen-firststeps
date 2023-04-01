
import XCTest
@testable import Core

final class EmployeeRepositoryTest: XCTestCase {

    func test_should_return_employees() throws {
        let sut = EmployeeRepositoryDefault()
        Task {
            let employees = await sut.employees()
            
            XCTAssertEqual(2, employees.count)
            XCTAssertEqual(.maria, employees[0])
            XCTAssertEqual(.laura, employees[1])
        }
    }
}
