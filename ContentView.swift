//
//  ContentView.swift
//  TestProject
//
//  Created by Lucas Real Dias on 04/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var toggleIcon = false
    
    var body: some View {
        
        VStack{
            
            Text("Settings")
                .font(.system(size: 36).bold())
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.top,.leading], 30)
            
            List {
                Section{
                    HStack{
                        Image("minha.foto")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 55, height: 55, alignment: .center)
                            
                        VStack{
                            Text("Lucas Real")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.system(size: 20))
                            Text("Apple ID, iCloud, Media & Purchases")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.system(size: 13))
                        }
                        Image(systemName: "chevron.right")
                            .opacity(0.4)
                    }
                }
                
                Section(){
                    HStack{
                        Image("airplane.icon")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: .center)
                            .foregroundColor(.orange)
                            .cornerRadius(3)
                        Text("Airplane Mode")
                            
                        Spacer()
                        Toggle("", isOn: $toggleIcon)
                    }
                    HStack{
                        Image(systemName: "wifi.square.fill")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: .center)
                            .foregroundColor(.blue)
                        Text("Wi-Fi")
                        Spacer()
                        Group{
                            Text("LUCAS")
                            Image(systemName: "chevron.right")
                        }
                        .opacity(0.4)
                    }
                    HStack{
                        Image("bluetooth.icon")
                            .resizable()
                            .frame(width: 22, height: 22, alignment: .center)
                        Text("Bluetooth")
                        Spacer()
                        Group{
                            Text("Not Connected")
                            Image(systemName: "chevron.right")
                        }
                        .opacity(0.4)
                    }
                    HStack{
                        Image(systemName: "antenna.radiowaves.left.and.right")
                            .padding(1.4)
                            .foregroundColor(.white)
                            .background(Color("cellular"))
                            .cornerRadius(4)
                        Text("Cellular")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .opacity(0.4)
                    }
                    HStack{
                        Image(systemName: "link")
                            .padding(1.3)
                            .foregroundColor(.white)
                            .background(Color("cellular"))
                            .cornerRadius(4)
                        Text("Personal Hotspot")
                        Spacer()
                        Group{
                            Text("Off")
                            Image(systemName: "chevron.right")
                        }
                        .opacity(0.4)
                    }
                }
                
                Section(){
                    HStack{
                        Image(systemName: "bell.square.fill")
                            .resizable()
                            .frame(width: 22, height: 22, alignment: .center)
                            .padding(1.4)
                            .foregroundStyle(.white, .red)
                            
                        Text("Notifications")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .opacity(0.4)
                    }
                    HStack{
                        Image(systemName: "speaker.wave.3.fill")
                            .font(.system(size: 15))
                            .frame(width: 13, height: 13, alignment: .center)
                            .padding(6)
                            .foregroundColor(.white)
                            .background(Color.red)
                            .cornerRadius(6)
                        Text("Sounds & Haptics")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .opacity(0.4)
                    }
                    HStack{
                        Image(systemName: "moon.fill")
                            .padding(3)
                            .foregroundColor(.white)
                            .background(Color.purple)
                            .cornerRadius(5)
                        Text("Focus")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .opacity(0.4)
                    }
                    HStack{
                        Image("sand.clock.icon")
                            .padding(.leading,-2)
                        Text("Screen Time")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .opacity(0.4)
                    }
                }
                
                Section{
                    HStack{
                        Image(systemName: "gear")
                            .padding(2)
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .cornerRadius(5)
                        Text("General")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .opacity(0.4)
                    }
                    HStack{
                        Image(systemName: "switch.2")
                            .padding(2)
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .cornerRadius(5)
                        Text("Control Center")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .opacity(0.4)
                    }
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
