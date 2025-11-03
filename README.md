# Trabalho Prático 2 - Programação Funcional com Gleam

## Tema
- Simulador de Escape Room em Gleam.

## Objetivo Geral
Implementar um simulador funcional de escape room em Gleam com as seguintes metas:
- Aplicar tipos algébricos e *pattern matching* para modelar ambientes, objetos e enigmas.
- Usar recursão e composição de funções em vez de laços imperativos.
- Explorar passagem de funções como parâmetros para generalizar ações do jogo.
- Garantir modularização e pureza funcional.

## Estrutura do Projeto
```
assignment-fp-ii/
├── assets/                      # Recursos estáticos (imagens, sons, etc.)
├── docs/                        # Documentação adicional
│   ├── helloworldgleamJS/       # Exemplo de integração Gleam + JS
│   ├── menu.gleam               # Exemplo de menu em Gleam
│   ├── README.md                # Roteiro para instalação e uso de um hello world com gleam e NodeJS
│   └── Trabalho_Pratico_2_EscapeRoom_Gleam_2025.pdf    # Especificação do trabalho
├── js/                          # Código JavaScript de suporte
│   └── gerenciador.js           # Gerenciador do jogo em JS
├── src/
│   ├── dominio/                 # Definições de tipos e estruturas de dados
│   │   ├── ambiente.gleam       # Definição do tipo Ambiente
│   │   ├── enigma.gleam         # Definição do tipo Enigma
│   │   ├── jogador.gleam        # Definição do tipo Jogador
│   │   └── objeto.gleam         # Definição do tipo Objeto
│   ├── jogo.gleam               # Lógica principal do jogo
│   ├── maze.gleam               # Definição do labirinto e lógica de navegação
│   └── menus.gleam              # Menus e interações do jogo
├── test/
│   └── testes.gleam             # Testes unitários
├── trash/                       # Pasta para código descartado (para referência)
│   ├── trash.gleam              # Código descartado em Gleam
│   └── trash.js                 # Código descartado em JavaScript
├── gleam.toml                   # Configuração do projeto Gleam
├── LICENSE                      # Licença do projeto
├── package.json                 # Configuração do npm
├── readline_bridge.mjs          # Ponte entre Gleam e readline em JS
├── README.md                    # Este arquivo
├── sgleam                       # Executável para Linux
└── sgleam.exe                   # Executável para Windows
```

## Instrução sobre JavaScript
Um ambiente JavaScript é utilizado (como o NodeJS) para simular a parte de
interação com o sistema.
Essa camada serve como um orquestrador de menus e ações, executando funções
exportadas do código Gleam compilado para JavaScript.
Assim, é utilizada uma interface CLI usando módulos JS.
(Obs.: Arquivo em docs/readme.txt explica como configurar o ambiente.)

## Equipe
- João Ricardo Melo
- Paulo Guilherme Schnaufer
- Rebeca Marini

## Tema Escolhido
- **O Labirinto do Código:** Um labirinto infinito gerado por algoritmos, onde 
  os jogadores precisam encontrar a saída resolvendo quebra-cabeças de 
  programação. Explore conceitos de algoritmos de geração de labirintos e 
  teoria dos grafos.

## Dicas para criar um escape room envolvente:
- **Combine desafios mentais:**
  - Use quebra-cabeças que envolvam tanto a 
  resolução de problemas lógicos quanto a manipulação de objetos físicos 
  (simulados no ambiente virtual).
- **Crie uma narrativa envolvente:**
  - Conte uma história que conecte os enigmas e motive os jogadores a avançar.
- **Varie os tipos de enigmas:**
  - Inclua enigmas baseados em texto, imagens, códigos e até mesmo mini-jogos. 
- **Teste os enigmas:**
  - Certifique-se de que os enigmas são desafiadores, mas
solucionáveis, e que a ordem dos desafios é lógica.

## Ciclo de Projeto das Funções
Para **cada função** implementada, documentar:
1. **Análise:** problema a resolver, entradas/saídas
2. **Especificação:** assinatura de tipo, propósito textual e exemplos
3. **Implementação:** código em Gleam
4. **Verificação:** testes unitários
5. **Revisão:** clareza, composição, generalidade

## Requisitos Técnicos Detalhados
- **Linguagem:** Gleam exclusivamente
- **Estruturas de dados:** List, Option, Result (quando aplicável)
- **Paradigma:** Funções puras, sem efeitos colaterais
- **Validações:** Mínimo 3 por tema (ex: id > 0, data válida, status coerente)
- **Testes:** Todos os módulos devem ter testes unitários
- **Estilo:** Código bem comentado, nomes claros, uso obrigatório de pattern matching

## Como Executar

### Pré-requisitos
- Gleam instalado (testado com versão 1.9.1)
- sgleam (versão de estudante 0.5.1)

### Comandos Principais
```bash
# Verificar versão e ambiente
./sgleam --version

# Verificar sintaxe e tipos
./sgleam -c src/trabajo.gleam

# Executar testes
./sgleam -t

# Formatar código
./sgleam -f

# Modo interativo (REPL)
./sgleam -i
```

## Estratégia de Testes
**Todos os módulos devem ter testes** seguindo "How to Design Programs":
- Casos de sucesso (funcionamento normal)
- Casos de falha (validações e erros)
- Casos limite (valores extremos)
- Testes de transformações (operações sobre listas)

## Apresentação Oral (em torno de 15 slides, tempo de 10 a 15 minutos)

### Estrutura Obrigatória dos Slides:
1. **Slide 1: Capa**
   - **Instituição:** UEM
   - **Curso:** Ciência da Computação
   - **Disciplina:** Programação Funcional
   - **Professor:** Wagner Igarashi

   - **Título:** "Simulador de Escape Room em Linguagem Funcional Gleam"
   - **Tema:** <Tema escolhido pela equipe>
   - **Elementos Visuais:**
     - Imagem temática de um escape room.
     - Nome dos autores, data e logo da instituição (se aplicável).

2. **Slide 2: Objetivo do Projeto**

3. **Slide 3: O Papel dos Conceitos Teóricos**
   - **Abordagem no Desenvolvimento:**
     - Integração direta de conceitos teóricos nos enigmas e na mecânica do jogo.
     - Mostrar quais conceitos de linguagens funcionais foram utilizados.
   - **Benefícios da Abordagem:**
     - Fortalecer o aprendizado prático dos conceitos.
     - Tornar o projeto educacional e divertido.

4. **Slide 4: Demonstração do código**
   - Imagem criativa do tema e demonstração da execução do código.
   - Utilizar música de fundo.

5. **Slide 5: Conclusões**

6. **Slide 6: Referências bibliográficas utilizadas no desenvolvimento**

## Critérios de Avaliação:
- **Implementação:**
- Correção e completude das funções
- Uso adequado de estruturas, documentação e organização do código.
- O código será avaliado por um programa escrito em Java que
  faz avaliação de código, levando em consideração:
  - Quantidade de linhas de código.
  - Documentação de código.
  - Testes unitários.
- **Apresentação Oral:** Capacidade de explicar o funcionamento do sistema e a
aplicação dos conceitos de programação funcional.

## Entrega

### Formato da Entrega
**E-mail com:**
- **Assunto:** `Trabalho 2 de Programação Funcional, 4, 2025`
- **Corpo:** Nome-completo-do-aluno1 RA: XXXX ... Nome-completo-do-alunoN RA: YYYY
- **Anexo:** Link para arquivo `.zip` no Google Drive.
- **Destinatário:** wigarashi@uem.br

### Conteúdo do ZIP
1. **Código Gleam** (src/, test/, gleam.toml, etc.)
2. **Slides** da apresentação (PDF ou PowerPoint)

## Equipe
- **Máximo:** 3 alunos por equipe
- **Integrantes:** João Ricardo Melo, Paulo Guilherme Schnaufer, Rebeca Marini
- **Tema escolhido:** O Labirinto do Código

## Referências
- [How to Design Programs](https://htdp.org/) — metodologia base
- [Documentação Gleam](https://gleam.run/) — sintaxe e stdlib
- [Gleam Language Tour](https://tour.gleam.run/) — tutorial interativo

## Checklist Final O Labirinto do Código
### Funcionalidades Implementadas
- [ ] Geração procedural do labirinto
- [ ] Desafios de programação variados
- [ ] Sistema de pontuação baseado em eficiência
- [ ] Narrativa integrada ao tema do labirinto
- [ ] Interface de usuário simples e intuitiva
- [ ] Testes unitários abrangentes

### Código
- [ ] Testes unitários abrangentes
- [ ] Documentação clara e completa
- [ ] Uso adequado de tipos algébricos e pattern matching
- [ ] Modularização e funções puras
- [ ] Validações implementadas conforme requisitos
- [ ] Estilo consistente e legível
- [ ] Revisão final do código feita
- [ ] Formatação do código aplicada

### Apresentação
- [ ] Slides preparados conforme estrutura obrigatória
- [ ] Demonstração do código funcionando
- [ ] Revisão dos conceitos teóricos aplicados no projeto
- [ ] Ensaios realizados para apresentação oral
- [ ] Tempo de apresentação dentro do limite (10-15 minutos)
- [ ] Revisão final dos slides feita

### Entrega
- [ ] Arquivo ZIP criado com todo o conteúdo necessário
- [ ] E-mail preparado com o formato correto
- [ ] Anexo do ZIP incluído no e-mail
- [ ] Envio do e-mail realizado antes do prazo final
