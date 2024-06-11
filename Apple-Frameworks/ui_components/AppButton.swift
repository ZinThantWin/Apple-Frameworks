import Foundation
import SwiftUI

struct AppButton: View {
    var onTap : () -> Void
    let text: String
    var body: some View{
        Button(action: onTap){
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.semibold)
                .frame(width: 280, height: 50)
                .background(Color.blue.gradient)
                .foregroundColor(.white)
                .cornerRadius(5)
        }
    }
}

#Preview {
    AppButton(onTap: {}, text: "Learn More")
}
