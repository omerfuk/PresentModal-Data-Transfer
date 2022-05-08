//
//  ContentView.swift
//  SwiftUIDosyaYapisi
//
//  Created by Ömer Faruk Kılıçaslan on 8.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sayfaAcilsinMi:Bool = false
    
    var body: some View {
        
        Button(action:{
            self.sayfaAcilsinMi = true
            
        }){
            Text("Modal Göster")
        }.sheet(isPresented:$sayfaAcilsinMi ){
            YeniSayfa(gelenVeri:"Merhaba")
        }
        
            
    }
}

struct YeniSayfa: View {
    
    @Environment(\.presentationMode) var sunumModu
    
    var gelenVeri:String?
    
    var body: some View {
        
        VStack{
            
            Text("Veri : \(gelenVeri!)")
            Button(action:{
                self.sunumModu.wrappedValue.dismiss()
            }){
                Text("Kapat")
            }
            Text("Yeni Sayfaya Hoş Geldiniz")
        }
            
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
       
    }
}
