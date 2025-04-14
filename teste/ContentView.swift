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

struct ContentView: View {
    let sampleGadgets = [
        Gadget(title: "Leitura", description: "Acompanhe sua leitura e progresso atual", icon: "books.vertical.fill", color: .blue),
        Gadget(title: "Seu progresso", description: "Acompanhe agora sua posição no ranking", icon: "brain.head.profile", color: .green),
        Gadget(title: "Doe cultura", description: "Participe do programa de doação de livros!", icon: "heart.fill", color: .orange)
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Resumo")
                    .font(.system(size: 24, weight: .semibold))
                Spacer()
                Image(systemName: "person.circle")
                    .font(.system(size:25))
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
            
            Spacer()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

