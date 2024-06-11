import SwiftUI

struct FrameworkGridView : View {
    var columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),]
    
    var body : some View {
        NavigationView{
            ScrollView(){
                LazyVGrid(columns : columns) {
                    ForEach(MockData.frameworks) { eachItem in
                        EachGridItem(title: eachItem.name, icon: eachItem.imageName)
                    }
                }
            }
            .navigationTitle("👾 Apple")
        }
    }
}
#Preview {
    FrameworkGridView().preferredColorScheme(.dark)
}
