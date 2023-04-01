
import SwiftUI
import Core
import Factory

@main
struct ILoveXcodeGenApp: App {
    
    @Injected(\.employeeViewModel) private var employeeVM
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(employeeVM)
        }
    }
}

struct ContentView: View {
	
    @EnvironmentObject private var employeeVM: EmployeesViewModel
    
	var body: some View {
        VStack {
            ForEach(employeeVM.employees, id: \.self) { employee in
                HStack {
                    Image("profile_photo", bundle: .core)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 64)
                        .cornerRadius(32)
                    Text("Employee: \(employee.name)")
                        .foregroundColor(
                            Color("AccentColor", bundle: .core)
                        )
                }
            }
        }
        .task {
            await employeeVM.loadEmployees()
        }
	}
}

struct ContentView_Previews: PreviewProvider {
    
    @Injected(\.employeeViewModel) static private var employeeVM
    
    static var previews: some View {
        ContentView()
            .environmentObject(employeeVM)
    }
}
