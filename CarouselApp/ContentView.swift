//
//  ContentView.swift
//  CarouselApp
//
//  Created by iOS Developer on 29/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    @State var menu = 0
    @State var page = 0
    var body: some View {
        ZStack{
            LinearGradient(colors: [.accent,.backgroundColor2], startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            
            VStack{
                
                ZStack{
                    
                    HStack{
                        
                        Button(action: {
                            
                        }) {
                            Image("menu")
                                .renderingMode(.original)
                                .padding()
                        }
                        .background(Color.white)
                        .cornerRadius(10)
                        
                        Spacer()
                        
                        Image("travel")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .cornerRadius(12)
                    }
                    .padding(.horizontal)
                    
                    Text("Places")
                        .font(.system(size:40))
                }
                
                HStack(spacing: 15){
                    
                    Button(action: {
                        
                        self.menu = 0
                        
                    }) {
                        
                        Text("Guatemala")
                            .foregroundColor(self.menu == 0 ? .white : . black)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                    }
                    .background(self.menu == 0 ? Color.black : Color.white)
                    .clipShape(Capsule())
                    
                    
                    Button(action: {
                        
                        self.menu = 1
                        
                    }) {
                        
                        Text("Caribbean")
                            .foregroundColor(self.menu == 1 ? .white : . black)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                    }
                    .background(self.menu == 1 ? Color.black : Color.white)
                    .clipShape(Capsule())
                    
                    Button(action: {
                        
                        self.menu = 2
                        
                    }) {
                        
                        Text("maldives")
                            .foregroundColor(self.menu == 2 ? .white : . black)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                    }
                    .background(self.menu == 2 ? Color.black : Color.white)
                    .clipShape(Capsule())
                    
                    
                }
                .padding(.top, 35)
                
                GeometryReader{g in
                    
                    Carousel(width: UIScreen.main.bounds.width, page: self.$page, height: g.frame(in: .global).height)
                    
                }
            }
            .padding(.vertical)
        }
    }
}

struct List : View {
    var body: some View{
        
        HStack(spacing: 0){
            
            ForEach(info){i in
                
                Card(width: UIScreen.main.bounds.width, data: i)
            }
        }
    }
}


struct Card : View {
    var width: CGFloat
    var data : infoLocation
    
    var body: some View{
        VStack{
            
            VStack{
                
                Text(self.data.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top,10)
                
                Text(self.data.info)
                    .foregroundColor(.gray)
                    .padding(.top)
                
                Spacer(minLength: 0)
                
                Text(self.data.rate)
                    .fontWeight(.bold)
                    .font(.title)
                    .padding(.top, 20)
                
                Image(self.data.image)
                    .resizable()
                    .frame(width: self.width - 100, height: 250)
                    .cornerRadius(20)
                
                Button(action: {
                    
                }) {
                    
                    Text("Mais Informações")
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                }
                .background(Color.button)
                .clipShape(Capsule())
                .padding(.top, 20)
                
                Spacer(minLength: 0)
                
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 25)
            .background(Color.white)
            .cornerRadius(20)
            
        }
        .frame(width: self.width)
    }
}

struct Carousel : UIViewRepresentable {
    
    var width: CGFloat
    @Binding var page: Int
    var height: CGFloat
    
    
    func updateUIView(_ uiView: UIScrollView, context: Context) {
    }
    
    
    func makeUIView(context: Context) -> UIScrollView{
        
        let total = width * CGFloat(info.count)
        let view = UIScrollView()
        view.isPagingEnabled = true
        view.contentSize = CGSize(width: total, height: 1.0)
        view.bounces = true
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        
        let view1 = UIHostingController(rootView: List())
        view1.view.frame = CGRect(x: 0, y: 0, width:  total, height: self.height)
        
        view1.view.backgroundColor = .clear
        
        view.addSubview(view1.view)
        
        return view
    }
    
}
    
    
    
    
#Preview {
    ContentView()
}

