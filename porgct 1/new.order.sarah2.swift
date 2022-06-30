//
//  new.order.sarah2.swift
//  Habhoob
//
//  Created by sarah hemood  on 01/12/1443 AH.
//

import SwiftUI


struct new_order_sarah2: View {
    
    @State var shouldGoToWhatEverPage55: Bool = false
    @StateObject private var viewModel = ContentViewModel()
    
    
    @State private var sourceType: UIImagePickerController.SourceType
    = .camera
    @State private var checkbox2: Bool = false
    
    //    @EnvironmentObject var appState: AppState
    
    var body: some View {
        ZStack{
            ZStack{
                Color("Color3")
                    .ignoresSafeArea()
            }
           
                ZStack{
                    Rectangle()
                        .frame(width: .infinity, height: 670)
                        .foregroundColor(Color("Color1"))
                        .cornerRadius(20)
                        .offset(y:48)
            
                    VStack{
            HStack{
                
                StepsOfOrder()
            }
            ZStack{
                location1()
            }
            ZStack{
                image1()
                
            }
          
                HStack(spacing:33){
                    size1()
                    
                }
                HStack{
                    size2()
                    
                }
                textfield()
                ZStack{
                    
                    Schedule()
                }
                ZStack{
                    Toggle(isOn: $checkbox2){
                        Text("I accept the terms & conditions")
                    }.toggleStyle(CheckboxToggleStyle(isReversed: true))
                        .foregroundStyle(.mint)
                        .font(.system(size: 16, weight: .semibold, design: .serif))
                    
                }
                ButtonNewOrder
                
            }
          
        }
    }
}
}
struct CheckboxToggleStyle: ToggleStyle {
    var isReversed = false
    func makeBody(configuration: Configuration) -> some
    View {
        HStack {
            if !isReversed {
                configuration.label
            }
            Button {
                configuration.isOn.toggle()
            } label: {
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                
                
            }
            .padding(5)
            .accentColor(Color(UIColor.label))
            if isReversed {
                configuration.label
            }
        }
        
    }
}


struct new_order_sarah2_Previews: PreviewProvider {
    static var previews: some View {
        new_order_sarah2()
    }
}