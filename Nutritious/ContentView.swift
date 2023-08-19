//
//  ContentView.swift
//  Nutritious
//
//  Created by Sophie Cheng on 8/6/23.
//dBLUE: Color(red: 0.22, green: 0.65, blue: 0.72)

import SwiftUI

struct CircularTextView: View {
    @State var letterWidths: [Int:Double] = [:]
    
    @State var title: String
    
    var lettersOffset: [(offset: Int, element: Character)] {
        return Array(title.enumerated())
    }
    var radius: Double
    
    var body: some View {
        ZStack {
            ForEach(lettersOffset, id: \.offset) { index, letter in // Mark 1
                VStack {
                    Text(String(letter))
                        .kerning(10)
                        .background(LetterWidthSize()) // Mark 2
                        .onPreferenceChange(WidthLetterPreferenceKey.self, perform: { width in  // Mark 2
                            letterWidths[index] = width
                        })
                    Spacer() // Mark 1
                }
                .rotationEffect(fetchAngle(at: index)) // Mark 3
            }
        }
        .rotationEffect(.degrees(58))
    }
    
    func fetchAngle(at letterPosition: Int) -> Angle {
        let times2pi: (Double) -> Double = { $0 * 2 * .pi }
        
        let circumference = times2pi(radius)
                        
        let finalAngle = times2pi(letterWidths.filter{$0.key <= letterPosition}.map(\.value).reduce(0, +) / circumference)
        
        return .radians(finalAngle)
    }
}

struct WidthLetterPreferenceKey: PreferenceKey {
    static var defaultValue: Double = 0
    static func reduce(value: inout Double, nextValue: () -> Double) {
        value = nextValue()
    }
}

struct LetterWidthSize: View {
    var body: some View {
        GeometryReader { geometry in // using this to get the width of EACH letter
            Color
                .clear
                .preference(key: WidthLetterPreferenceKey.self,
                            value: geometry.size.width)
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.white)
                    .ignoresSafeArea()
                VStack{
                    ZStack{
                        Text("ESTEE LAUDER")
                            .font(.custom("JGDRFE+OptimaEL-Roman", size: 28))
                            .fontWeight(.black)
                            .foregroundColor(Color(red: 0.86, green: 0.11, blue: 0.27))
                            .font(.title2)
                        
                        HStack{
                            ZStack{
                                Link(destination: URL(string: "https://www.esteelauder.com/products/26393/product-catalog/skin-care/skin-care-collections/nutritious")!) {
                                    Image(systemName: "bag.circle.fill")
                                        .resizable(resizingMode: .stretch)//*
                                        .aspectRatio(contentMode: .fit)
                                        .imageScale(.large)
                                        .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.42))
                                        .frame(width: 40, height: 40)
                                }
                                Circle()
                                    .frame(width: 35, height: 35)
                                    .foregroundColor(.white)
                                    .zIndex(-1)
                            }
                            .padding(.leading, 40)
                            Spacer()
                            
                        }
                    }
                    ScrollView{
                        ZStack{
                            LinearGradient(gradient: Gradient(colors: [.white, Color(red: 0.53, green: 0.81, blue: 0.8), Color(red: 0.8, green: 0.8, blue: 0.7)]), startPoint: .top, endPoint: .bottom)
                                .ignoresSafeArea()
                            VStack {
                                /*Spacer()
                                 Text("n u t r i t i o u s")
                                 .font(.custom("JGDRFE+OptimaEL-Roman", size: 30))
                                 .fontWeight(.black)
                                 .foregroundColor(Color(red: 0.949, green: 0.35, blue: 0.42))
                                 .shadow(color: Color(red: 0.53, green: 0.81, blue: 0.8), radius:15)*/
                                
                                ZStack(alignment: .topLeading){
                                    Image("5wave")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .zIndex(2)
                                    ZStack{
                                        Image("37")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(500)
                                            .shadow(color: Color.white, radius: 15)
                                            .padding([.leading, .trailing], 30)
                                        CircularTextView(title: "N U T R I T I O U S".uppercased(), radius: 120)
                                            .font(.custom("JGDRFE+OptimaEL-Roman", size: 30))
                                            .shadow(color: .white, radius: 30)
                                            .foregroundColor(Color(red: 0.91, green: 0.39, blue: 0.5))
                                            .frame(width: 350, height: 350)
                                            .padding()
                                            .zIndex(3)
                                        Circle()
                                            .foregroundColor(.white)
                                            .zIndex(-1)
                                            .shadow(color: .white, radius:15)
                                    }
                                }
                                Text("SEE THE GLOW.")
                                    .font(.custom("Optima", size: 25))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.91, green: 0.39, blue: 0.52))
                                    .foregroundColor(Color(red: 0.4, green: 0.5, blue: 0.72))
                                    .shadow(color: .white, radius: 10)
                                    
                                //.foregroundColor(Color(red: 0.4, green: 0.5, blue: 0.72))
                                    .shadow(color: .white, radius:50)
                                    .padding()
                                ZStack{
                                    Image("36")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(500)
                                        .padding(40)
                                    CircularTextView(title: "Mask. Cleanser. Lotion.".uppercased(), radius: 120)
                                        .font(.custom("Optima", size: 25))
                                        .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.42))
                                        .fontWeight(.semibold)
                                        .frame(width: 350, height: 367)
                                        .padding()
                                        .zIndex(3)
                                        .rotationEffect(.degrees(200))
                                    Circle()
                                        .foregroundColor(.white)
                                        .zIndex(-1)
                                        .shadow(color: .white, radius:15)
                                }
                                    Image("1algae")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                ZStack{
                                    Text("FROM GRUMPY\nTO GLOWY SKIN.\nNUTRI-9 ENHANCED.")
                                        .font(.custom("AkzidenzGroteskBQ-Bold", size: 23))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .foregroundColor(Color(red: 0.91, green: 0.39, blue: 0.52))
                                    .shadow(color: Color(red: 0.91, green: 0.39, blue: 0.52), radius: 15)
                                    .zIndex(1)
                                    Image("15")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(500)
                                        .shadow(color: Color(red: 0.971, green: 0.936, blue: 0.78), radius: 15)
                                        .padding(30)
                                    Circle()
                                        .foregroundColor(.white)
                                        .zIndex(-1)
                                        .padding(30)
                                        .shadow(color:.white, radius:15)
                                }
                                ZStack{
                                    Text("SWEET KELP.\nCOCONUT WATER.\nRED ALGAE.")
                                        .font(.custom("AkzidenzGroteskBQ-Bold", size: 23))
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .foregroundColor(Color(red: 0.91, green: 0.39, blue: 0.52))
                                        .shadow(color: Color(red: 0.91, green: 0.39, blue: 0.52), radius: 15)
                                        .zIndex(1)
                                    ZStack(alignment: .topLeading){
                                        Image("10")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(500)
                                            .shadow(color: Color(red: 0.971, green: 0.936, blue: 0.78), radius: 15)
                                            .padding(30)
                                        Circle()
                                            .foregroundColor(.white)
                                            .zIndex(-1)
                                            .padding(30)
                                            .shadow(color:.white, radius:15)
                                    }
                                    Image("3kelp")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                }
                                ZStack{
                                    Text("SUSTAINABLE.\nEWG VERIFIED.\nRESPONSIBLY MADE.")
                                        .font(.custom("AkzidenzGroteskBQ-Bold", size: 23))
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .foregroundColor(Color(red: 0.91, green: 0.39, blue: 0.52))
                                        .shadow(color: Color(red: 0.91, green: 0.39, blue: 0.52), radius: 15)
                                        .zIndex(1)
                                        
                                    ZStack(alignment: .topLeading){
                                        Image("9")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(500)
                                            .shadow(color: Color(red: 0.971, green: 0.936, blue: 0.78), radius: 15)
                                            .padding(30)
                                        Circle()
                                            .foregroundColor(.white)
                                            .padding(30)
                                            .zIndex(-1)
                                            .shadow(color:.white, radius:15)
                                    }
                                }
                                NavigationLink(destination: InfoView()) {
                                    ZStack{
                                    Text("LEARN MORE.")
                                        .font(.custom("AkzidenzGroteskBQ-Bold", size: 23))
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .foregroundColor(Color(red: 0.91, green: 0.39, blue: 0.52))
                                        .shadow(color: Color(red: 0.91, green: 0.39, blue: 0.52), radius: 15)
                                        .zIndex(1)
                                    Image("1algae")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                } .navigationBarBackButtonHidden(true)
                            }
                                Image("6wave")
                                    .resizable(resizingMode: .stretch)
                                    .frame(height: 100)
                            }
                            
                        }
                    }.cornerRadius(25)
                        .ignoresSafeArea()
                        /*.toolbar {
                            ToolbarItemGroup(placement: .status){
                                ZStack{
                                    /*Color(.white)
                                        .frame(height: 100)
                                        .ignoresSafeArea()*/
                                    HStack(alignment: .center){
                                        NavigationLink(destination: InfoView()) {
                                            Image(systemName: "book.circle.fill")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.42))
                                                .frame(width: 50, height: 50)
                                                .navigationBarTitleDisplayMode(.inline)
                                                .navigationBarBackButtonHidden(true)
                                        }
                                        NavigationLink(destination: ContentView()) {
                                            Image(systemName: "house.circle.fill")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.42))
                                                .frame(width: 50, height: 50)
                                                .navigationBarBackButtonHidden(true)
                                            
                                        }
                                        Link(destination: URL(string: "https://www.esteelauder.com/products/26393/product-catalog/skin-care/skin-care-collections/nutritious")!) {
                                            Image(systemName: "cart.circle.fill")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.42))
                                                .frame(width: 50, height: 50)
                                                .navigationBarTitleDisplayMode(.inline)
                                        }
                                    }
                                }
                            }
                        } .padding()*/
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
}
/*VStack(alignment: .center){
 Spacer()
 Text("sweet kelp. coconut water.")
     .font(.custom("AkzidenzGroteskBQ-Bold", size: 20))
     .foregroundColor(.white)
 Text("red algae.")
     .font(.custom("AkzidenzGroteskBQ-Bold", size: 20))
     .foregroundColor(.white)
 .padding()
 Spacer()
}*/
