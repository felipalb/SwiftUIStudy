import SwiftUI

struct Gadget: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let icon: String
    let color: Color
}
    
struct GadgetCard: View {
    let gadget: Gadget
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: gadget.icon)
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
            }
            
            Text(gadget.title)
                .font(.headline)
                .foregroundColor(.white)
            
            Text(gadget.description)
                .font(.subheadline)
                .foregroundColor(.white.opacity(0.8))
                .lineLimit(2)
        }
        .padding()
        .frame(width: 215, height: 160)
        .background(gadget.color)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 5)
    }
}

struct GadgetCarousel: View {
    let gadgets: [Gadget]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(gadgets) { gadget in
                    GadgetCard(gadget: gadget)
                }
            }
            .padding()
        }
    }
}

// explorar
// troca e doacao

// estrutura para tabbar

struct TabBar: View {
    @State var selectedTab = 0
    var body: some View{
        
        TabView{
            Color.clear
                .tabItem{
                    Image(systemName: "house")
                        .font(.system(size:25))
                    Text("Home")
                }
                .tag(0)
            
            Color.clear
                .tabItem{
                    Image(systemName: "globe")
                        .font(.system(size:25))
                    Text("Explorar")
                }
                .tag(1)
            
            Color.clear
                .tabItem{
                    Image(systemName: "heart.fill")
                        .font(.system(size:25))
                    Text("Doação")
                }
                .tag(2)
            
            Color.clear
                .tabItem{
                    Image(systemName: "person.circle")
                        .font(.system(size:25))
                    Text("Perfil")
                }
                .tag(3)
        }
        .foregroundColor(.black)
    }
}

struct AltZstack: View{
    var body: some View{
        ZStack{
            VStack{
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.orange)
                    .frame(width: 343, height: 140)
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.2), radius: 10, x: 5, y: 0)

            }
        }
    }
}


struct ContentView: View {
    let sampleGadgets = [
        Gadget(title: "Leitura", description: "Acompanhe sua leitura e progresso atual", icon: "books.vertical.fill", color: .blue),
        Gadget(title: "Seu progresso", description: "Acompanhe agora sua posição no ranking", icon: "brain.head.profile", color: .green),
        Gadget(title: "Doe cultura", description: "Participe do programa de doação de livros!", icon: "heart.fill", color: .orange)
    ]
    
    var body: some View {
        //ScrollView{
        VStack{
            ScrollView{
                HStack {
                    //ScrollView{
                    Text("Resumo")
                        .font(.system(size: 30, weight: .semibold))
                    Spacer()
                }
                .padding()
                .padding(.horizontal)
                
                
                // Carrossel corrigido
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(sampleGadgets) { gadget in
                            GadgetCard(gadget: gadget)
                        }
                    }
                    .padding(.horizontal)  // Adiciona padding nas laterais
                    .frame(height: 200)    // Altura fixa para o conteúdo
                }
                .frame(height: 220)        // Altura fixa para o ScrollView
            //ScrollView{
                VStack {
                    HStack {
                        Text("Grupos")
                            .font(.system(size: 25, weight: .semibold))
                        Spacer()
                        Text("Veja todos")
                            .font(.system(size: 12, weight: .light))
                            .foregroundColor(.blue)
                            .padding()
                    }
                }
                .padding()
                .padding(.horizontal)
                
                FakeListStructure(book: ["Shreck", "TVD", "Faz o urro"])

                //AltZstack()
//                Spacer()
                TitleStructure(title: "Comentários")
                FakeListStructure(book: ["O Shreck não faz o urro", "Gato de botas é zika do baile", "Lord farcry é poggers"])
            }
            TabBar()
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

