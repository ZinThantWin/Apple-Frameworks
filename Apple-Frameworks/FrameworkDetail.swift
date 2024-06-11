import Foundation
import SwiftUI


struct FrameworkDetail : View {
    let framework : Framework
    @Binding var isSelected: Bool
    @State private var xPresentingSafariView = false
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                   isSelected = false
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            Spacer()
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title)
            ScrollView{
                Text(framework.description)
                    .font(.system(.body))
                    .padding()
            }.padding(.vertical, 30)
            Spacer()
            AppButton(onTap: {xPresentingSafariView = true},text: "Learn More")
        }.fullScreenCover(isPresented: $xPresentingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://example.com")!)
        })
    }
}
