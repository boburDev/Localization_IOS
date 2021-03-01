//
//  ContentView.swift
//  Localization
//
//  Created by Boburmirzo on 3/1/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var wecome = "str_welcome".localized()
    
    var body: some View {
        VStack{
            VStack{
                Text(wecome)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            HStack(spacing:0){
                
                VStack{
                    Button(action: {
                        Bundle.setLanguage(lang: "en")
                        wecome = "str_welcome".localized()
                    }, label: {
                        Text("English")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .foregroundColor(.white)
                            .background(Color.red)
                    })
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                VStack{
                    Button(action: {
                        Bundle.setLanguage(lang: "ru")
                        wecome = "str_welcome".localized()
                    }, label: {
                        Text("Russian")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .foregroundColor(.white)
                            .background(Color.blue)
                    })
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                VStack{
                    Button(action: {
                        Bundle.setLanguage(lang: "uz")
                        wecome = "str_welcome".localized()
                    }, label: {
                        Text("Uzbek")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .foregroundColor(.white)
                            .background(Color.green)
                    })
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                VStack{
                    Button(action: {
                        Bundle.setLanguage(lang: "fr")
                        wecome = "str_welcome".localized()
                    }, label: {
                        Text("Franch")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .foregroundColor(.white)
                            .background(Color.yellow)
                    })
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(maxWidth: .infinity, maxHeight: 70)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.locale, .init(identifier: "ru"))
    }
}
