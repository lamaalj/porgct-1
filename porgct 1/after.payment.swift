//
//  after.payment.swift
//  porgct 1
//
//  Created by sarah hemood  on 24/11/1443 AH.
//

import SwiftUI

struct after_payment: View {
    @State var shouldGoToWhatEverPage11: Bool = false

    var body: some View {
        ZStack{
     ZStack{
        Color("Color3")
//                Color(Color.mint as! CGColor)
            .ignoresSafeArea()
     }
            ZStack{
                Rectangle()
                    .frame(width: 380, height: 650)
                    .foregroundColor(Color("Color1"))
                    .cornerRadius(20)
                    .offset(y:58)
                VStack(spacing:200){
                    VStack(spacing:33){
                   Image("Image16")
                        .resizable()
                        .frame(width:270 , height: 190)
                        .padding(.leading,22)
                    Text("Your request been \nsuccessfully added")
                            .font(.system(size: 23, weight: .semibold, design: .rounded))
                }
           
                Button(action: {}
                       , label: {
               
                    Text("Back to the main page")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .frame(width: 300, height:35)
                        .background(Color("Color3"))
                            .cornerRadius(5)
              
                })
                }
            }
        }
    }
}

struct after_payment_Previews: PreviewProvider {
    static var previews: some View {
        after_payment()
    }
}

//    NavigationLink(){
//        homeuser()
//
//    }
//        label:{
//   Text("go to home")
//}
