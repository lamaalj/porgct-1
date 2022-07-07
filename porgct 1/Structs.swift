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
struct section : View {
    var body: some View {
        
        
        ZStack{
            Rectangle()
                .frame(width: 325, height:200)
                .foregroundColor(.white)
                .cornerRadius(15)
            
            VStack( spacing: 3){
                Image("Image1-1")
                    .resizable()
                    .frame(width: 250, height:25)
                HStack(spacing:190){
                    Text("Taif")
                        .font(.callout)
                        .fontWeight(.semibold)
                    
                    Text("Riyadh")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                }
                VStack(spacing: 8){
                    HStack(spacing:66){
                        VStack(alignment: .leading){
                            Text("Starting:")
                                .font(.footnote)
                                .fontWeight(.regular)
                                .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                            
                            HStack{
                                Image(systemName: "calendar.badge.clock")
                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                
                                Text("Sun, June 5(8 -11AM)")
                                    .font(.caption)
                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                
                            }
                            Text("Arrival:")
                                .font(.footnote)
                                .fontWeight(.regular)
                                .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                            
                            HStack{
                                Image(systemName: "calendar.badge.clock")
                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                
                                Text("Fri, June 3(8 -11AM)")
                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                    .font(.caption)
                                
                            }
                            
                        }
                        VStack{
                            ZStack(alignment:.bottom){
                                Image("Image2-1")
                                    .resizable()
                                    .frame(width: 57, height:55)
                                
                                ZStack(alignment: .center){
                                    Rectangle()
                                        .frame(width: 40, height:15)
                                        .cornerRadius(5)
                                    
                                        .foregroundColor(Color("Color1"))
                                    
                                    HStack(alignment: .center){
                                        Text("4.9")
                                            .font(.caption)
                                            .fontWeight(.medium)
                                        
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.orange)
                                            .frame(width:5.0 , height: 10)
                                        
                                    }
                                }
                                
                            }
                            Text("OMER SALEH")
                                .font(.footnote)
                        }
                    }
                    Button(action: {}, label: {
                        Text("Request")
                            .foregroundColor(Color.white)
                            .font(.system(size: 18, weight: .semibold, design: .serif))
                    })
                    .frame(width: 300, height:35)
                    .background(.orange)
                    .cornerRadius(5)
                    
                }
            }
        }
    }
}

struct NavigationUserCard :View{
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 325, height:140)
                .foregroundColor(.white)
                .cornerRadius(15)
            VStack(spacing:15){
                ZStack{
                    Rectangle()
                        .frame(width: 310, height:20)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.955))
                        .cornerRadius(10)
                    Text("This captain gives you an offer (100 SR) for your order number 7778887")
                        .font(.system(size: 8.5, weight: .regular, design: .rounded))
                        .foregroundColor(.orange)
                }
                HStack(spacing:30){
                    HStack{
                        Image("Image3-1")
                            .resizable()
                            .frame(width: 50, height: 50)
                        VStack{
                            HStack{
                                Image("Image11")
                                Text("Your captain")
                                    .font(.system(size: 10, weight:.bold, design: .default))
                                    .foregroundColor(Color("Color3"))
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color.orange)
                                    .frame(width:10.0 , height: 22)
                                    .font(.system(size: 12, weight: .bold, design: .default))
                                Text("4.9")
                                    .font(.caption)
                                    .fontWeight(.medium)
                            }
                            Text("Abdulmalik Qasim ")
                                .font(.system(size: 11, weight:.bold, design: .default))
                                .offset(x:-11)

                        }
                    }
                    HStack{
                        ZStack{
                            Circle()
                                .frame(width:40, height: 36)
                                .foregroundColor(Color.mint.opacity(0.2))
                            Image(systemName:"phone")
                                .foregroundColor(Color("Color3"))
                            .font(.system(size: 12, weight:.bold, design: .default))                        }
                        ZStack{
                            Circle()
                                .frame(width:40, height:36 )
                                .foregroundColor(Color.mint.opacity(0.2))
                            Image("Image10")
                                .resizable()
                                .frame(width: 17, height: 17)

                        }
                    }
                }
                HStack{
                    Button(action: {}, label: {
                        Text("Accept")
                    
                            .foregroundColor(Color.white)
                            .font(.system(size: 18, weight: .semibold, design: .serif))
                    })
                    .frame(width: 135, height:26)
                    .background(.green)
                    .cornerRadius(5)
                    Rectangle()
                        .frame(width:2, height:26)
                 
                        .foregroundColor(.black)
                        .opacity(0.8)
                    

                    Button(action: {}, label: {
                        Text("Decline")
                            
                            .foregroundColor(Color.white)
                            .font(.system(size: 18, weight: .semibold, design: .serif))
                    })
                    .frame(width: 135, height:26)
                    .background(.red)
                    .cornerRadius(5)


                }
                }
            }
    }
}

struct NavigationDriverCard : View{
    var body: some View{
        ZStack{
        Rectangle()
            .frame(width: 325, height:220)
            .foregroundColor(.white)
            .cornerRadius(10)
        VStack{
            Image("Image1-1")
                .resizable()
                .frame(width: 250, height:25)
            HStack(spacing:190){
                Text("Taif")
                    .font(.callout)
                    .fontWeight(.semibold)
                Text("Riyadh")
                    .font(.footnote)
                    .fontWeight(.semibold)
            }
            
            HStack(spacing:35){
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "calendar.badge.clock")
                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                            .font(.system(size: 12))
                        Text("Sun, June 5(8 -11AM)")
                            .font(.system(size: 12))
                        
                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.gray,lineWidth: 1)
                            .frame(width: 170, height: 65)
                        HStack{
                            VStack(alignment:.leading ,spacing: 22){
                                Text("Note:")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                Text("Baby walker.")
                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                            }
                            Image("Image9")
                            
                        }
                    }
                }
                VStack{
                    ZStack(alignment:.bottom){
                        Image("Image2-1")
                            .resizable()
                            .frame(width: 57, height:55)
                        
                        ZStack{
                            Rectangle()
                                .frame(width: 33, height:15)
                                .cornerRadius(5)
                            
                                .foregroundColor(Color("Color1"))
                            
                            HStack{
                                Text("4.9")
                                    .font(.caption)
                                    .fontWeight(.medium)
                                
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color.orange)
                                    .frame(width:10.0 , height: 22)
                                
                            }
                        }
                        
                    }
                    Text("OMER SALEH")
                        .font(.footnote)
                }
                
            }
            HStack{
                Button(action: {}, label: {
                    Text("Accept")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    
                })
                .frame(width: 140, height:30)
                .background(.green)
                .cornerRadius(5)
                
                
                Button(action: {}, label: {
                    Text("Decline")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    
                })
                .frame(width: 140, height:30)
                .background(.red)
                .cornerRadius(5)
                
            }
        }
        }
    }
}
///
///PROFILE.PAGE
struct UserProfile : View{
    @State var toggleIsOn: Bool = false
    var body: some View {
        VStack(spacing:40){
    HStack(spacing:100){
    HStack{
    Image("Image3-1")
        .resizable()
        .frame(width: 50, height: 50)
        VStack{
    HStack{
     Text("Nasser Ali")
            .font(.system(size: 15, weight:.bold, design: .default))
            .foregroundColor(Color("Color3"))
        Image(systemName: "star.fill")
            .foregroundColor(Color.orange)
            .frame(width:10.0 , height: 22)
            .font(.system(size: 12, weight: .bold, design: .default))
        Text("4.9")
            .font(.caption)
            .fontWeight(.medium)
    }
        Text("Balance :300 SAR")
                .font(.system(size: 13, weight:.regular, design: .default))

        }
    }
        Image(systemName: "square.and.pencil")
            .foregroundColor(Color("Color3"))
            .font(.system(size: 16, weight:.bold, design: .default))

    }
   
            ZStack{
            Rectangle()
                .frame(width: 300, height:150)
                .foregroundColor(.white)
                .cornerRadius(15)
                VStack(alignment:.leading, spacing: 19){
                    Text("Account")
                        .font(.system(size: 15, weight:.bold, design: .default))
                    HStack(spacing:170){
                    HStack{
                Image(systemName: "person")
                    .foregroundColor(Color("Color3"))
                    Text("My Orders")
                        .font(.system(size: 14, weight: .regular, design: .default))
                    }
                    Image(systemName: "chevron.right")
                  
                    }
                    HStack(spacing:175){
                    HStack{
                Image(systemName: "equal.square")
                    .foregroundColor(Color("Color3"))
                    Text("Feedback")
                        .font(.system(size: 14, weight: .regular, design: .default))
                    }
                    Image(systemName: "chevron.right")
                  
                    }
                    HStack(spacing:170){
                    HStack{
                Image("Image2-2")
                    .foregroundColor(Color("Color2"))
                    Text("Contact us")
                        .font(.system(size: 13, weight: .regular, design: .default))
                    }
                    Image(systemName: "chevron.right")
                  
                    }
                }
                
            }
            ZStack{
            Rectangle()
                .frame(width: 300, height:150)
                .foregroundColor(.white)
                .cornerRadius(15)
                VStack(alignment:.leading, spacing: 19){
                    Text("Other")
                        .font(.system(size: 15, weight:.bold, design: .default))
                    HStack(spacing:140){
                    HStack{
                Image(systemName: "power")
                    .foregroundColor(Color("Color3"))
                    Text("Driver Account")
                        .font(.system(size: 14, weight: .regular, design: .default))
                    }
                    Image(systemName: "chevron.right")
                            
                  
                    }
                    HStack(spacing:170){
                    HStack{
                Image("Image4-2")
                    .foregroundColor(Color("Color3"))
                    Text("Language")
                        .font(.system(size: 14, weight: .regular, design: .default))
                    }
                    Image(systemName: "chevron.right")
                  
                    }
                  
                }
                
            }
            
                    ZStack{
                    Rectangle()
                        .frame(width: 300, height:100)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                       
                    

                            Toggle(isOn: $toggleIsOn,
                                   label:{
                                Text("Driver Mood")
                                    .font(.system(size: 16, weight: .bold, design: .default))
                            })
                            .toggleStyle(SwitchToggleStyle(tint: Color("Color3")))
                                
                            .padding(50)
                            
                    
                        
                    }
           
}
    }
}

///DRIVER.PROFILE
///
struct DriverProfile :View{
    @State var toggleIsOn: Bool = false
    var body: some View{
        VStack(spacing:40){

    HStack(spacing:100){
    HStack{
    Image("Driver")
        .resizable()
        .frame(width: 50, height: 50)
        .clipShape(Circle())
        VStack{
    HStack{
     Text("Omar saleh")
            .font(.system(size: 15, weight:.bold, design: .default))
            .foregroundColor(Color("Color3"))
        Image(systemName: "star.fill")
            .foregroundColor(Color.orange)
            .frame(width:10.0 , height: 22)
            .font(.system(size: 12, weight: .bold, design: .default))
        Text("4.9")
            .font(.caption)
            .fontWeight(.medium)
    }
        Text("Balance :300 SAR")
                .font(.system(size: 13, weight:.regular, design: .default))

        }
    }
        Image(systemName: "square.and.pencil")
            .foregroundColor(Color("Color3"))
            .font(.system(size: 16, weight:.bold, design: .default))

    }
   
            ZStack{
            Rectangle()
                .frame(width: 300, height:180)
                .foregroundColor(.white)
                .cornerRadius(15)
                VStack(alignment:.leading, spacing: 19){
                    Text("Account")
                        .font(.system(size: 15, weight:.bold, design: .default))
                    HStack{
                    HStack(spacing:190){
                        
                        Button(action: {}, label: {
                Image(systemName: "person")
                    .foregroundColor(Color("Color3"))
                    Text("My Orders")
                        .font(.system(size: 14, weight: .regular, design: .default))
                        Image(systemName: "chevron.right")
                                       })
                    }
                  
                    }
                    HStack(spacing:172){
                    HStack{
                Image(systemName: "equal.square")
                    .foregroundColor(Color("Color3"))
                    Text("Feedback")
                        .font(.system(size: 14, weight: .regular, design: .default))
                    }
                    Image(systemName: "chevron.right")
                    }
                    HStack(spacing:176){
                    HStack{
                Image("Image1-2")
                    .foregroundColor(Color("Color3"))
                    Text("Coupons")
                        .font(.system(size: 14, weight: .regular, design: .default))
                    }
                    Image(systemName: "chevron.right")
                  
                    }
                    HStack(spacing:169){
                    HStack{
                Image("Image2-2")
                    .foregroundColor(Color("Color2"))
                    Text("Contact us")
                        .font(.system(size: 13, weight: .regular, design: .default))
                    }
                    Image(systemName: "chevron.right")
                  
                    }
                }
                
            }
            ZStack{
            Rectangle()
                .frame(width: 300, height:150)
                .foregroundColor(.white)
                .cornerRadius(15)
                VStack(alignment:.leading, spacing: 19){
                    Text("Other")
                        .font(.system(size: 15, weight:.bold, design: .default))
                    HStack(spacing:140){
                    HStack{
                Image(systemName: "power")
                    .foregroundColor(Color("Color3"))
                    Text("Driver Account")
                        .font(.system(size: 14, weight: .regular, design: .default))
                    }
                    Image(systemName: "chevron.right")
                  
                    }
                    HStack(spacing:170){
                    HStack{
                Image( "Image4-2")
                    .foregroundColor(Color("Color2"))
                    Text("Language")
                        .font(.system(size: 14, weight: .regular, design: .default))
                    }
                    Image(systemName: "chevron.right")
                  
                    }
                  
                }
                
            }
            
                    ZStack{
                    Rectangle()
                        .frame(width: 300, height:100)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                       
                    

                            Toggle(isOn: $toggleIsOn,
                                   label:{
                                Text("Driver Mood")
                                    .font(.system(size: 16, weight: .bold, design: .default))
                            })
                            .toggleStyle(SwitchToggleStyle(tint: Color("Color3")))
                                
                            .padding(50)
                            
                    
                        
                    }
}
    }
}

///PAYMENT.BAGE
///
struct PaymentPage : View{
    @State var showRectangle: Bool = false
    var body: some View{
        VStack(spacing:44){
            HStack{
                ZStack{
                Image(systemName:"shippingbox")
            RoundedRectangle (cornerRadius: 10)
                .frame(width: 40, height: 40)
                .foregroundColor(Color.gray.opacity(0.2))
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
                RoundedRectangle (cornerRadius: 10)
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color.mint)
                    Image(systemName:"doc.on.doc")

                }
            }
            ZStack{
Rectangle()
            .frame(width:350 , height: 450 )
            .cornerRadius(8)
            .foregroundColor(.white)
        
                VStack(spacing:22){
            HStack{
            Image(systemName:"stopwatch")
                .renderingMode(.template)
                .foregroundColor(Color("orange1"))
            
                HStack(spacing:44){
                Text("IN PROGRESS")
                    .font(.callout)
                    .fontWeight(.bold)
                    .foregroundColor(Color("orange1"))
            Text("Fri, June, 2022 8:00 PM")
                .font(.footnote)
                .fontWeight(.regular)
                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.611))
            
        }
        }
           Divider()
                .frame(width: 330)
//                VStack{
                   
            Text("Order Number : 237")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color("Color3"))
                .offset(x:-55)
                    VStack{
            Text("Note :")
      .font(.system(size: 20, weight: .semibold, design: .rounded))
            .foregroundColor(Color("orange1"))
            .offset(x:-130)

                    HStack(spacing:55){
//                    Image(systemName:"square.and.pencil")
            Text("My order needs care because it is \n breakable.")
                
         .font(.system(size: 15, weight: .semibold, design: .rounded))
            Image(systemName:"square.and.pencil")
//                    .padding(.trailing,55)
                    }
            }
           Text("Your Receipt")
                .underline()
                .font(.system(size: 17, weight: .bold, design: .rounded))
                .foregroundColor(Color("orange1"))
            ZStack{
                Rectangle()
                    .foregroundColor(Color("gray1"))
                    .frame(width: 300, height: 65)
                    .cornerRadius(10)
                VStack{
                    Image("Image1-1")
//                        .resizable()
//                        .frame(width:250 , height: 30 )
                HStack(spacing:170){
                Text("Riyadh")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    Text("Dammam")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                }
            }

            HStack(spacing:150){
                Text("Total :")
                    .fontWeight(.black)
                    .foregroundColor(Color("Color3"))
                Text("89.64 SR")
                    .fontWeight(.bold)
                    .foregroundColor(Color("orange1"))

            }
            HStack(spacing:33){
                ZStack{
                Rectangle()
                    .foregroundColor(Color("gray1"))
                    .frame(width: 55, height: 50)
                    .cornerRadius(10)
                    Image("Image22")
                }
                ZStack{
                Rectangle()
                    .foregroundColor(Color("gray1"))
                    .frame(width: 55, height: 50)
                    .cornerRadius(10)
                    Image("Image33")
                }
                if showRectangle == true {
                    
                    Button.init(action: {
                        showRectangle.toggle()
                        
                    }, label: {
                        ZStack{
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(width: 55, height: 50)
                                .cornerRadius(13)
                            
                                Text("Cash")
                                    .font(.caption2)
                                    .foregroundColor(.black)
                                
                           
                        }
                    })
                }
                else{
                    Button.init(action: {
                        showRectangle.toggle()
                        
                    }, label: {
                        ZStack{
                            
                            Rectangle()
                                .foregroundColor(Color("gray1"))
                                .frame(width: 55, height: 50)
                                .cornerRadius(13)
                            
                                Text("Cash")
                                    .font(.caption2)
                                    .foregroundStyle(.black)
                                    .font(.system(size: 20, weight: .bold, design: .default))
                                
                          
                        }
                    })
                }
//
            }
//
            }
            }
            NavigationLink(){
                after_payment()
            } label: {
                Text("Done")
                    .font(.system(size: 18, weight: .semibold, design: .serif))
                    .foregroundColor(Color.white)
                    .frame(width: 300, height: 50)
                    .background(Color(UIColor.systemMint))
                     .cornerRadius(10)
            }
        
        }
    }
}

//OrderDriver
struct OrderDriver1 :View{
    @State private var checkbox2: Bool = false
    var frameworks = ["Pick Up Location", "Riyadh", "Jeddah", "Dammam", "Tift"]
    var frameworks2 = ["Drop Of Location", "Riyadh", "Jeddah", "Dammam", "Tift"]
    @State private var selectedFrameworkIndex = ""
    var body: some View{
        ZStack{
        RoundedRectangle(cornerRadius: 8)
            .stroke(Color("Color2"),lineWidth: 1)
            .frame(width: 300, height: 60)
            .background(.white.opacity(0.3))
            
        
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
        TextField("More Details (Exp: Keep away from heat...) ", text: .constant(""))
            .font(.system(size: 13))
            .padding()
   .frame(width: 300, height: 90)
//                   .foregroundColor(Color.gray.opacity(0.2))
  .border(.gray.opacity(0.3))
//             .background(Color("Color2"))
  .background(.white.opacity(0.3))
  .cornerRadius(5)
        
        ZStack{
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
                        .fontWeight(.bold)
                        .font(.system(size: 15, weight: .semibold, design: .serif))
                        .foregroundColor(Color("Color3"))
                    
                }
                Image(systemName: "chevron.right")
                    .font(.system(size: 9, weight: .bold, design: .default))
                    .foregroundColor(Color("Color3"))
                
            }
        }
        Toggle(isOn: $checkbox2){
            Text("I accept the terms & conditions")
        }.toggleStyle(CheckboxToggleStyle(isReversed: true))
            .foregroundStyle(.gray)
            .font(.system(size: 15, weight: .semibold, design: .serif))
        NavigationLink(){
            offer()
        } label: {
            Text("Done")
//                                .font(.title3)
                .foregroundColor(Color.white)
                .font(.system(size: 20, weight: .semibold, design: .serif))
                .frame(width: 300, height: 50)
                .background(Color(UIColor.systemMint))
                 .cornerRadius(10)
        }

    }
}
///Offer.Page
struct OfferCard : View{
    @State var Sarah3: Bool = false
    var body: some View{
        Rectangle()
            .frame(width: 325, height:140)
            .foregroundColor(.white)
            .cornerRadius(15)
        VStack(spacing:15){
            ZStack{
                Rectangle()
                    .frame(width: 310, height:30)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.955))
                    .cornerRadius(10)
                Text("""
This captain gives you an offer (100 SR)
for your order ?
""")
                .font(.system(size: 12, weight: .semibold, design: .rounded))
                .foregroundColor(.black)
            }
            HStack(spacing:30){
                HStack{
                    Image("Driver")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    VStack{
                        HStack{
                            Image("Image11")
                            Text("Your captain")
                                .font(.system(size: 10, weight:.bold, design: .default))
                                .foregroundColor(Color("Color3"))
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.orange)
                                .frame(width:10.0 , height: 22)
                                .font(.system(size: 12, weight: .bold, design: .default))
                            Text("4.9")
                                .font(.caption)
                                .fontWeight(.medium)
                        }
                        Text("Omar Saleh ")
                            .font(.system(size: 11, weight:.bold, design: .default))
                            .offset(x:-10)
                        
                    }
                }
                
                HStack{
                    ZStack{
                        Circle()
                            .frame(width:40, height: 36)
                            .foregroundColor(Color.mint.opacity(0.2))
                        Image(systemName:"phone")
                            .foregroundColor(Color("Color3"))
                        .font(.system(size: 12, weight:.bold, design: .default))                        }
                    ZStack{
                        Circle()
                            .frame(width:40, height:36 )
                            .foregroundColor(Color.mint.opacity(0.2))
                        Image("Image10")
                            .resizable()
                            .frame(width: 17, height: 17)
                        
                    }
                }
            }
            HStack(spacing:10){
                NavigationLink(isActive: $Sarah3, destination: {
                    after_payment()
                }, label: {
                    
                })
                Button(action: {
                    Sarah3.toggle()
                }, label: {
                    Text("Accept")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    
                })
                .frame(width: 140, height:26)
                .background(.green)
                .cornerRadius(5)
                Rectangle()
                    .frame(width:2, height:26)
                //                                Divider()
                //                                    .background(Color.black)
                    .foregroundColor(.black)
                    .opacity(0.8)
                //                                    .frame(height: 22)
                
                Button(action: {}, label: {
                    Text("Decline")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    
                })
                .frame(width: 140, height:26)
                .background(.red)
                .cornerRadius(5)
                
                
                
            }
        }
    }
}
