//
//  Structs.swift
//  Habhoob
//
//  Created by sarah hemood  on 01/12/1443 AH.
//

import Foundation
import SwiftUI

struct StepsOfOrder : View{
    var body: some View{
        ZStack{
            Image(systemName:"shippingbox")
            RoundedRectangle (cornerRadius: 10)
                .frame(width: 40, height: 40)
                .foregroundColor(Color.mint)
            Image(systemName:"shippingbox")
            
        }
        
        Image("Image12")
        
        ZStack{
            RoundedRectangle (cornerRadius: 10)
                .frame(width: 40, height: 40)
                .foregroundColor(Color.gray.opacity(0.2))
            Image(systemName:"person.text.rectangle")
        }
        Image("Image12")
        ZStack{
            Image(systemName:"doc.on.doc")
            RoundedRectangle (cornerRadius: 10)
                .frame(width: 40, height: 40)
                .foregroundColor(Color.gray.opacity(0.2))
        }
    }
}

struct image1 : View{
    @State private var image: UIImage?
    @State private var sourceType: UIImagePickerController.SourceType
    = .camera
    @State private var showSheet: Bool = false
    @State private var showImagePicker: Bool = false
    var body: some View{
        RoundedRectangle(cornerRadius: 12)
            .stroke(Color("Color2"),lineWidth: 1)
            .frame(width: 180, height: 125)
            .background(.white.opacity(0.3))
        
        VStack {
            Image(uiImage: image ?? UIImage(named: "Plus")!)
            Button("Choose Picture") {
                self.showSheet = true
            }
            .actionSheet(isPresented: $showSheet) {
                ActionSheet(title: Text("Select Photo"),
                            message: Text("Choose"), buttons: [
                                .default(Text("Photo Library")) {
                                    self.showImagePicker = true
                                    self.sourceType = .photoLibrary
                                },
                                .default(Text("Camera")) {
                                    self.showImagePicker = true
                                    self.sourceType = .camera
                                },
                                .cancel()
                            ])
            }
        }
    }
}

struct size1 : View{
    @State var showRectangle: Bool = false
    @State var showRectangle1: Bool = false
    @State var showRectangle2: Bool = false
    var body: some View{
        if showRectangle == true {
            
            Button.init(action: {
                showRectangle.toggle()
                
            }, label: {
                ZStack{
                    Rectangle()
                        .frame(width: 66, height: 55)
                        .foregroundColor(Color("Color4"))
                        .cornerRadius(10)
                    VStack{
                        Image("image 1")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                        Text("small")
                            .font(.caption2)
                        
                    }
                }
            })
        }
        else{
            Button.init(action: {
                showRectangle.toggle()
                
            }, label: {
                ZStack{
                    
                    Rectangle()
                        .frame(width: 66, height: 55)
                        .foregroundColor(Color.mint.opacity(0.2))
                        .cornerRadius(10)
                    VStack{
                        Image("image 1")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("small")
                            .font(.caption2)
                            .foregroundStyle(.white)
                            .font(.system(size: 20, weight: .bold, design: .default))
                        
                    }
                }
            })
        }
        if showRectangle1 == true {
            
            Button.init(action: {
                showRectangle1.toggle()
                
            }, label: {
                ZStack{
                    Rectangle()
                        .frame(width: 66, height: 55)
                        .foregroundColor(Color("Color4"))
                        .cornerRadius(13)
                    VStack{
                        Image("image 2")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                        Text("Medium")
                            .font(.caption2)
                    }
                }
            })
        }
        else{
            Button.init(action: {
                showRectangle1.toggle()
                
            }, label: {
                ZStack{
                    Rectangle()
                        .frame(width: 66, height: 55)
                        .foregroundColor(Color.mint.opacity(0.2))
                        .cornerRadius(13)
                    VStack{
                        Image("image 2")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Medium")
                            .font(.caption2)
                            .foregroundStyle(.mint)
                            .font(.system(size: 15, weight: .bold, design: .default))
                    }
                }
            })
        }
        if showRectangle2 == true {
            
            Button.init(action: {
                showRectangle2.toggle()
                
            }, label: {
                ZStack{
                    Rectangle()
                        .frame(width: 66, height: 55)
                        .foregroundColor(Color("Color4"))
                        .cornerRadius(13)
                    VStack{
                        Image("image 3")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("large")
                            .font(.caption2)
                    }
                }
            })
        }
        else{
            Button.init(action: {
                showRectangle2.toggle()
                
            }, label: {
                ZStack{
                    
                    Rectangle()
                        .frame(width: 66, height: 55)
                        .foregroundColor(Color.mint.opacity(0.2))
                        .cornerRadius(13)
                    VStack{
                        Image("image 3")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.red)
                        Text("large")
                            .font(.caption2)
                            .foregroundStyle(.white)
                            .font(.system(size: 15, weight: .bold, design: .default))
                    }
                }
            })
        }
    }
}
struct size2 : View{
    var body: some View{
        Text("Less than 50*50 cm")
            .font(.system(size: 8, weight: .regular, design: .rounded))
        Text("Less than 100*100 cm")
            .font(.system(size: 8, weight: .regular, design: .rounded))
        Text("Less than 100*100 cm")
            .font(.system(size: 8, weight: .regular, design: .rounded))
    }
}

struct textfield : View{
    var body: some View{
        TextField("More Details (Exp: Keep away from heat...) ", text: .constant(""))
            .font(.system(size: 13))
            .padding()
   .frame(width: 300, height: 90)

  .border(.gray.opacity(0.3))

  .background(.white.opacity(0.3))
  .cornerRadius(5)
    }
}

struct Schedule :View{
    var body: some View{
        Rectangle()
            .frame(width: 300, height: 44)
            .foregroundColor(Color.mint.opacity(0.2))
            .cornerRadius(5)
        HStack(spacing:70){
            HStack{
                Image(systemName: "calendar.badge.clock")
                    .font(.system(size: 12, weight: .regular, design: .default))
                    .foregroundColor(Color("Color3"))
                Text("Schedule Your Order")
                    .font(.system(size: 15, weight: .bold, design: .default))
                    .foregroundColor(Color("Color3"))
                
            }
            Image(systemName: "chevron.right")
                .font(.system(size: 9, weight: .bold, design: .default))
                .foregroundColor(Color("Color3"))
            
        }
    }
}


var ButtonNewOrder: some View {
    NavigationLink(){
        offer()
    } label: {
        Text("Place Order")
            .font(.system(size: 20, weight: .semibold, design: .serif))
            .foregroundColor(Color.white)
            .frame(width: 300, height: 50)
            .background(Color(UIColor.systemMint))
             .cornerRadius(10)
    }
}

struct location1 : View{
    var frameworks = ["Pick Up Location", "Riyadh", "Jeddah", "Dammam", "Tift"]
    var frameworks2 = ["Drop Of Location", "Riyadh", "Jeddah", "Dammam", "Tift"]
    @State private var selectedFrameworkIndex = ""
    var body: some View {
       
        RoundedRectangle(cornerRadius: 8)
            .stroke(Color("Color2"),lineWidth: 1)
            .frame(width: 325, height: 70)
//            .foregroundColor(Color.white)
//      .foregroundColor(.white)
//         .background(.white.opacity(0.3))
        
        HStack{
            Image("Image4-1")
                .resizable()
                .foregroundColor(Color("Color2"))
                .frame(width:35, height:42)
            
            VStack(alignment: .leading,spacing: 1){
                VStack(alignment: .leading, spacing: 1){
                    Picker(selection: $selectedFrameworkIndex, label: Text("")) {
                        ForEach(0 ..< frameworks.count) {
                            Text(self.frameworks[$0])
                        }
                    }
                    Divider()
                        .frame(width: 200)
                }
                Picker(selection: $selectedFrameworkIndex, label: Text("")) {
                    ForEach(0 ..< frameworks2.count) {
                        Text(self.frameworks2[$0])
                    }
                    
                }
            }
        }
    }
}
