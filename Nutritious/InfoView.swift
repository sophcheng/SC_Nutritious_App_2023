//
//  InfoView.swift
//  Nutritious
//
//  Created by Sophie Cheng on 8/18/23.
//

import SwiftUI

struct InfoView: View {
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
                            .padding(.leading, 20)
                            Spacer()
                        }
                    }
                    Spacer()
                    ScrollView{
                        ZStack{
                            Color(.white)
                                .ignoresSafeArea()
                            VStack{
                                ZStack{
                                    Color(red: 0.98, green: 0.84, blue: 0.89)
                                    VStack{
                                        Image("34")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(40)
                                            .padding()
                                            Text("MASK MOISTURIZER")
                                                .font(.custom("Optima", size: 24))
                                                .fontWeight(.black)
                                                .foregroundColor(Color(red: 0.86, green: 0.11, blue: 0.27))
                                                .font(.title2)
                                        Text("Enhances skin moisture & strength.\nSweet kelp helps minimize\npores & oiliness.")
                                            .font(.custom("Optima", size: 17))
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color(red: 0.86, green: 0.11, blue: 0.27))
                                            .font(.title2)
                                            
                                        ZStack{
                                        Image("20")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 200)
                                            .cornerRadius(500)
                                            .shadow(color: .white, radius:15)
                                            .frame(height: 200)
                                            .padding()
                                            Link(destination: URL(string: "https://www.esteelauder.com/product/688/112202/product-catalog/skincare/moisturizer/nutritious/melting-soft-crememask-moisturizer?size=1.7_oz.")!) {
                                                Text("SHOP NOW\n$48.00")
                                                    .font(.custom("AkzidenzGroteskBQ-Bold", size: 23))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .foregroundColor(Color(red: 0.91, green: 0.39, blue: 0.52))
                                                    .shadow(color: Color(red: 0.91, green: 0.39, blue: 0.52), radius: 15)
                                                    .zIndex(1)
                                            }}}}.cornerRadius(25)
                                ZStack{
                                    Color(.white)
                                    VStack{
                                        Image("33")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(40)
                                            .shadow(color: Color(red: 0.98, green: 0.84, blue: 0.89), radius:15)
                                            .padding()
                                        Text("2-IN-1 FOAM CLEANSER")
                                            .font(.custom("Optima", size: 24))
                                            .fontWeight(.black)
                                            .foregroundColor(Color(red: 0.86, green: 0.11, blue: 0.27))
                                            .font(.title2)
                                        Text("Revitalizing cleanser, balancing yet elevating your skin.\nCoconut water ferment grants hydrating nourishment.")
                                            .font(.custom("Optima", size: 17))
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color(red: 0.86, green: 0.11, blue: 0.27))
                                            .font(.title2)
                                        ZStack{
                                            Image("17")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .frame(height: 200)
                                                .cornerRadius(500)
                                                .shadow(color: Color(red: 0.98, green: 0.84, blue: 0.89), radius:15)
                                                .padding()
                                            Link(destination: URL(string: "https://www.esteelauder.com/product/684/112204/product-catalog/skincare/cleanser-makeup-remover/nutritious/2-in-1-foam-cleanser?size=4.2_oz.")!) {
                                                Text("SHOP NOW\n$27.00")
                                                    .font(.custom("AkzidenzGroteskBQ-Bold", size: 23))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .foregroundColor(Color(red: 0.91, green: 0.39, blue: 0.52))
                                                    .shadow(color: Color(red: 0.91, green: 0.39, blue: 0.52), radius: 15)
                                                    .zIndex(1)
                                            }}}}.cornerRadius(25)
                                ZStack{
                                    Color(red: 0.98, green: 0.84, blue: 0.89)
                                    VStack{
                                        Image("31")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(40)
                                            .padding()
                                        Text("RADIANT ESSENCE LOTION")
                                            .font(.custom("Optima", size: 24))
                                            .fontWeight(.black)
                                            .foregroundColor(Color(red: 0.86, green: 0.11, blue: 0.27))
                                            .font(.title2)
                                        Text("Softens and moisturizes skin, leaving\na refreshing finish.\nRed algae ferment aids in quelling\nredness and irritation.")
                                            .font(.custom("Optima", size: 17))
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color(red: 0.86, green: 0.11, blue: 0.27))
                                            .font(.title2)
                                        ZStack{
                                            Image("22")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .cornerRadius(500)
                                                .frame(height: 200)
                                                .shadow(color: .white, radius:15)
                                                .padding()
                                            Link(destination: URL(string: "https://www.esteelauder.com/product/26389/112200/product-catalog/skincare/toner-treatment-lotion/nutritious/radiant-essence-treatment-lotion?size=6.7_oz.")!) {
                                                Text("SHOP NOW\n$42.00")
                                                    .font(.custom("AkzidenzGroteskBQ-Bold", size: 23))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .foregroundColor(Color(red: 0.91, green: 0.39, blue: 0.52))
                                                    .shadow(color: Color(red: 0.91, green: 0.39, blue: 0.52), radius: 15)
                                                    .zIndex(1)
                                            }}}}.cornerRadius(25)
                            
                        }
                    }.cornerRadius(25)
                    
                }
                .toolbar {
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
                    }
                } .padding()
            }
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
