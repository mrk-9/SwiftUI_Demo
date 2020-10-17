//
//  ContentView.swift
//  Test
//
//  Created by Ruzica D on 2020/8/7.
//  Copyright © 2020 RUBY MAE Brown. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //0 : deselect, 1: select
    @State private var state_cover_no:Int = 0
    @State private var state_cover_5:Int = 0
    @State private var state_cover_10:Int = 0
    @State private var state_cover_15:Int = 0
    @State private var state_cover_20:Int = 0
    @State private var state_cover_25:Int = 0
    
    //radius
    @State var radiusValue : Double = 0
    
    
    //0: reset, 1: selected, 2: excluded
    @State private var state_dress_casual:Int = 0
    @State private var state_dress_formal:Int = 0
    @State private var state_dress_themed:Int = 0
    @State private var state_dress_other:Int = 0
    
    @State private var state_include_byob:Int = 0
    @State private var state_include_dinner:Int = 0
    @State private var state_include_dry:Int = 0
    @State private var state_include_lunch:Int = 0
    @State private var state_include_snacks:Int = 0
    @State private var state_include_live:Int = 0
    
    
    let text_colors = [Color.black,Color.white,Color.white]
    let background_colors = [Color.white,Color.blue,Color.red]
    let border_colors = [Color.black,Color.blue,Color.red]
    
    @State private var state_includes:Int = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("Cover")
                    .font(.title)
                    .padding(.bottom, 10)
                HStack {
                    Button(action: {
                        self.state_cover_no = (self.state_cover_no + 1) % 2
                    }, label: {
                        Text("No Cover")
                        .padding(10)
                        .frame(width: 100, height: 40)
                        .foregroundColor(self.text_colors[self.state_cover_no])
                        .background(RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth :1)
                            .background(self.background_colors[self.state_cover_no].cornerRadius(20))
                            .foregroundColor(self.border_colors[self.state_cover_no]))
                    })
                    
                    Button(action: {
                        self.state_cover_5 = (self.state_cover_5 + 1) % 2
                    }, label: {
                        Text("$5")
                        .padding(10)
                        .frame(width: 80, height: 40)
                        .foregroundColor(self.text_colors[self.state_cover_5])
                        .background(RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth :1)
                            .background(self.background_colors[self.state_cover_5].cornerRadius(20))
                            .foregroundColor(self.border_colors[self.state_cover_5]))
                    })
                    
                    Button(action: {
                        self.state_cover_10 = (self.state_cover_10 + 1) % 2
                    }, label: {
                        Text("$10")
                        .padding(10)
                        .frame(width: 80, height: 40)
                        .foregroundColor(self.text_colors[self.state_cover_10])
                        .background(RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth :1)
                            .background(self.background_colors[self.state_cover_10].cornerRadius(20))
                            .foregroundColor(self.border_colors[self.state_cover_10]))
                    })
                    Spacer()
                }
                .padding(.bottom, 10)
                HStack {
                    Button(action: {
                        self.state_cover_15 = (self.state_cover_15 + 1) % 2
                    }, label: {
                        Text("$15")
                        .padding(10)
                        .frame(width: 80, height: 40)
                        .foregroundColor(self.text_colors[self.state_cover_15])
                        .background(RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth :1)
                            .background(self.background_colors[self.state_cover_15].cornerRadius(20))
                            .foregroundColor(self.border_colors[self.state_cover_15]))
                    })
                    
                    Button(action: {
                        self.state_cover_20 = (self.state_cover_20 + 1) % 2
                    }, label: {
                        Text("$20")
                        .padding(10)
                        .frame(width: 80, height: 40)
                        .foregroundColor(self.text_colors[self.state_cover_20])
                        .background(RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth :1)
                            .background(self.background_colors[self.state_cover_20].cornerRadius(20))
                            .foregroundColor(self.border_colors[self.state_cover_20]))
                    })
                    
                    Button(action: {
                        self.state_cover_25 = (self.state_cover_25 + 1) % 2
                    }, label: {
                        Text("$25+")
                        .padding(10)
                        .frame(width: 80, height: 40)
                        .foregroundColor(self.text_colors[self.state_cover_25])
                        .background(RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth :1)
                            .background(self.background_colors[self.state_cover_25].cornerRadius(20))
                            .foregroundColor(self.border_colors[self.state_cover_25]))
                    })
                    Spacer()
                }
            }
            .padding(20)
            
            Text("Radius : \(radiusValue, specifier: "%.2f")")
                .padding(.top, 10)
                .padding(.leading, 20)
            Slider(value: $radiusValue, in: 1...50)
                .padding(.leading, 20)
                .padding(.trailing, 20)
            
            
            VStack(alignment: .leading) {
                Text("Dress")
                    .font(.title)
                    .padding(.bottom, 10)
                HStack {
                    Button(action: {
                        self.state_dress_casual = (self.state_dress_casual + 1) % 3
                    }, label: {
                        Text("Casual")
                        .padding(10)
                        .frame(width: 120, height: 40)
                        .foregroundColor(self.text_colors[self.state_dress_casual])
                        .background(RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth :1)
                            .background(self.background_colors[self.state_dress_casual].cornerRadius(20))
                            .foregroundColor(self.border_colors[self.state_dress_casual]))
                    })
                    
                    Button(action: {
                        self.state_dress_formal = (self.state_dress_formal + 1) % 3
                    }, label: {
                        Text("Formal")
                        .padding(10)
                        .frame(width: 100, height: 40)
                        .foregroundColor(self.text_colors[self.state_dress_formal])
                        .background(RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth :1)
                            .background(self.background_colors[self.state_dress_formal].cornerRadius(20))
                            .foregroundColor(self.border_colors[self.state_dress_formal]))
                    })
                    Spacer()
                }
                .padding(.bottom, 10)
                HStack {
                    Button(action: {
                        self.state_dress_themed = (self.state_dress_themed + 1) % 3
                    }, label: {
                        Text("Themed")
                        .padding(10)
                        .frame(width: 100, height: 40)
                        .foregroundColor(self.text_colors[self.state_dress_themed])
                        .background(RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth :1)
                            .background(self.background_colors[self.state_dress_themed].cornerRadius(20))
                            .foregroundColor(self.border_colors[self.state_dress_themed]))
                    })
                    
                    Button(action: {
                        self.state_dress_other = (self.state_dress_other + 1) % 3
                    }, label: {
                        Text("Other")
                        .padding(10)
                        .frame(width: 100, height: 40)
                        .foregroundColor(self.text_colors[self.state_dress_other])
                        .background(RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth :1)
                            .background(self.background_colors[self.state_dress_other].cornerRadius(20))
                            .foregroundColor(self.border_colors[self.state_dress_other]))
                    })
                    Spacer()
                }
            }
            .padding(.leading, 20)
            .padding(.top, 10)
            
            VStack(alignment: .leading) {
                Text("Includes")
                    .font(.title)
                    .padding(.bottom, 10)
                HStack {
                    Button(action: {
                        self.state_include_byob = (self.state_include_byob + 1) % 3
                    }, label: {
                        Text("BYOB (Beverage)")
                        .padding(10)
                        .frame(width: 180, height: 40)
                        .foregroundColor(self.text_colors[self.state_include_byob])
                        .background(RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth :1)
                            .background(self.background_colors[self.state_include_byob].cornerRadius(20))
                            .foregroundColor(self.border_colors[self.state_include_byob]))
                    })
                    
                    Button(action: {
                        self.state_include_dinner = (self.state_include_dinner + 1) % 3
                    }, label: {
                        Text("Dinner")
                        .padding(10)
                        .frame(width: 100, height: 40)
                        .foregroundColor(self.text_colors[self.state_include_dinner])
                        .background(RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth :1)
                            .background(self.background_colors[self.state_include_dinner].cornerRadius(20))
                            .foregroundColor(self.border_colors[self.state_include_dinner]))
                    })
                    Spacer()
                }
                .padding(.bottom, 10)
                HStack {
                    Button(action: {
                        self.state_include_dry = (self.state_include_dry + 1) % 3
                    }, label: {
                        Text("Dry (No Alcohol)")
                        .padding(10)
                        .frame(width: 160, height: 40)
                        .foregroundColor(self.text_colors[self.state_include_dry])
                        .background(RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth :1)
                            .background(self.background_colors[self.state_include_dry].cornerRadius(20))
                            .foregroundColor(self.border_colors[self.state_include_dry]))
                    })
                    
                    Button(action: {
                        self.state_include_lunch = (self.state_include_lunch + 1) % 3
                    }, label: {
                        Text("Lunch")
                        .padding(10)
                        .frame(width: 100, height: 40)
                        .foregroundColor(self.text_colors[self.state_include_lunch])
                        .background(RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth :1)
                            .background(self.background_colors[self.state_include_lunch].cornerRadius(20))
                            .foregroundColor(self.border_colors[self.state_include_lunch]))
                    })
                    Spacer()
                }
                .padding(.bottom, 10)
                HStack {
                    Button(action: {
                        self.state_include_snacks = (self.state_include_snacks + 1) % 3
                    }, label: {
                        Text("Snacks")
                        .padding(10)
                        .frame(width: 120, height: 40)
                        .foregroundColor(self.text_colors[self.state_include_snacks])
                        .background(RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth :1)
                            .background(self.background_colors[self.state_include_snacks].cornerRadius(20))
                            .foregroundColor(self.border_colors[self.state_include_snacks]))
                    })
                    
                    Button(action: {
                        self.state_include_live = (self.state_include_live + 1) % 3
                    }, label: {
                        Text("Live Music")
                        .padding(10)
                        .frame(width: 130, height: 40)
                        .foregroundColor(self.text_colors[self.state_include_live])
                        .background(RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth :1)
                            .background(self.background_colors[self.state_include_live].cornerRadius(20))
                            .foregroundColor(self.border_colors[self.state_include_live]))
                    })
                    Spacer()
                }
            }
            .padding(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
