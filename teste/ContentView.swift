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
        .frame(width: 160, height: 180)
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
        Gadget(title: "Desempenho", description: "Monitoramento em tempo real", icon: "speedometer", color: .blue),
        Gadget(title: "Bateria", description: "Nível atual: 78%", icon: "battery.75", color: .green),
        Gadget(title: "Armazenamento", description: "15.2 GB disponíveis", icon: "externaldrive", color: .orange),
        Gadget(title: "Segurança", description: "Sistema protegido", icon: "shield", color: .purple),
        Gadget(title: "Conexões", description: "3 dispositivos conectados", icon: "antenna.radiowaves.left.and.right", color: .red),
        Gadget(title: "Notificações", description: "5 não lidas", icon: "bell.badge", color: .yellow)
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Resumo")
                    .font(.system(size: 24, weight: .semibold))
                Spacer()
                Image(systemName: "person")
            }
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

