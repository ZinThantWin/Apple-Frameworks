import SwiftUI


final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework?
    @Published var isSelected = false
}
