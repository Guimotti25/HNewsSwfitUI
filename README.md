# Hacker News Reader - SwiftUI

![SwiftUI](https://img.shields.io/badge/SwiftUI-5.0-orange?logo=swift)
![Platform](https://img.shields.io/badge/Platform-iOS-blue)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

Um aplicativo iOS nativo desenvolvido em SwiftUI para listar e visualizar as principais notícias do Hacker News.

## 📱 Sobre o Projeto

Este projeto foi desenvolvido como parte dos meus estudos em SwiftUI, demonstrando:

- Consumo de API REST com URLSession
- Arquitetura MVVM com ObservableObject
- Navegação entre views
- Tratamento de erros e estados de carregamento
- Listas dinâmicas com SwiftUI
- WebView integrada

## 🔍 Sobre o Hacker News

Hacker News é um popular site de notícias sociais focado em tecnologia, startups e ciência da computação, operado pela Y Combinator. A comunidade é formada principalmente por desenvolvedores, empreendedores e entusiastas de tecnologia.

### 📊 A API do Hacker News

A API utilizada neste projeto é a oficial do Algolia, que oferece uma interface de busca para os conteúdos do Hacker News:

- **Endpoint**: `https://hn.algolia.com/api/v1/search?tags=front_page`
- **Documentação**: [Algolia Hacker News API](https://hn.algolia.com/api)

#### Estrutura básica da resposta:
```json
{
  "hits": [
    {
      "objectID": "123456",
      "title": "Título da Notícia",
      "url": "https://exemplo.com",
      "points": 42,
      "author": "usuário",
      "num_comments": 15
    }
  ]
}
```

## 🛠 Funcionalidades Implementadas

- Listagem das principais notícias (front page)
- Visualização de pontos (upvotes) e título
- Abertura de notícias completas em WebView integrada
- Pull-to-refresh para atualizar o feed
- Tratamento de erros de conexão
- Múltiplas tentativas automáticas em caso de falha

## 🏗 Estrutura do Código

```
HackerNewsReader/
├── Models/
│   ├── Post.swift       # Modelo de dados
│   └── Results.swift    # Estrutura da resposta
├── Views/
│   ├── ContentView.swift # Lista principal
│   └── DetailView.swift  # WebView de detalhes
├── Services/
│   └── NetworkManager.swift # Gerenciador de rede
└── Utils/
    └── WebView.swift     # Wrapper de WKWebView
```

## 🚀 Como Executar

1. Clone o repositório
2. Abra o projeto no Xcode 13+
3. Selecione um simulador ou dispositivo iOS 15+
4. Build e run (⌘R)

## 📚 Aprendizados

- Consumo de APIs REST com SwiftUI
- Gerenciamento de estado com ObservableObject
- Criação de WebViews nativas
- Tratamento de erros de rede
- Melhores práticas de arquitetura SwiftUI

## 🤝 Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.

## 📄 Licença

Este projeto está licenciado sob a licença MIT - veja o arquivo [LICENSE](LICENSE) para detalhes.
