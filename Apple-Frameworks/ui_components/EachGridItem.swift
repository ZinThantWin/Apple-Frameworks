import Foundation
import SwiftUI

struct EachGridItem : View {
    
    let title: String
    let icon: String 
    
    var body : some View {
        VStack{
            Image(icon)
                .resizable()
                .frame(width : 80, height : 80)
            
                Text(title)
                .font(.system(.caption))
                    .scaledToFit().minimumScaleFactor(0.6)
        
        }.padding()
    }
    
}
