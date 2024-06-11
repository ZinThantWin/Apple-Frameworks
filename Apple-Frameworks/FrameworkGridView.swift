import SwiftUI

struct FrameworkGridView : View {
    @StateObject var viewModel = FrameworkGridViewModel()
    var columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),]
    
    var body : some View {
        NavigationView{
            ScrollView(){
                LazyVGrid(columns : columns) {
                    ForEach(MockData.frameworks) { eachItem in
                        EachGridItem(title: eachItem.name, icon: eachItem.imageName).onTapGesture {
                            viewModel.selectedFramework = eachItem
                            viewModel.isSelected = true
                            print(viewModel.isSelected)
                        }
                    }
                }
            }
            .navigationTitle("👾 Apple")
            .sheet(isPresented: $viewModel.isSelected, content: {
                FrameworkDetail(framework: viewModel.selectedFramework!,isSelected: $viewModel.isSelected)
            })
        }
    }
}
#Preview {
    FrameworkGridView().preferredColorScheme(.dark)
}
