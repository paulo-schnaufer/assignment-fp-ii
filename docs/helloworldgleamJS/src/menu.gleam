import gleam/io
import gleam/list

// 1. Tipo para representar o estado do Menu Principal (Nível 1)
pub type MainMenu {
  M1
  M2
  M3
  Exit
}

// 2. Tipo para representar o estado dos Submenus (Nível 2)
pub type SubMenu {
  // Submenu de M1
  M1A
  M1B
  // Submenu de M2
  M2A
  M2B
  // Submenu de M3
  M3A
  // Comando para retornar ao menu principal
  Back
}

/// Exibe as opções do Menu Principal, indexando pelas funções M1, M2, M3, Exit.
pub fn display_main_menu() {
  io.println("\n--- 🌐 Menu Principal (Digite a função) ---")
  io.println("Opções:")
  io.println("  m1(): Processamento de Dados")
  io.println("  m2(): Configurações do Sistema")
  io.println("  m3(): Relatórios e Logs")
  io.println("  exit(): Sair da Simulação")
}

/// Exibe as opções de um Submenu específico.
fn display_submenu(parent_menu: String, options: List(#(SubMenu, String))) {
  io.println("\n--- 🗂️ Submenu: " <> parent_menu <> " (Digite a função) ---")

  // Imprime as opções específicas
  list.each(options, fn(option) {
    let #(command, description) = option
    let command_name = case command {
      M1A -> "m1a()"
      M1B -> "m1b()"
      M2A -> "m2a()"
      M2B -> "m2b"
      M3A -> "m3a"
      Back -> "back()"
    }
    io.println("  " <> command_name <> ": " <> description)
  })
}

/// Simula a entrada na opção M1 (Processamento de Dados).
pub fn m1() -> MainMenu {
  display_submenu("Processamento de Dados", [
    #(M1A, "Executar Limpeza de Dados"),
    #(M1B, "Agendar Tarefa Noturna"),
    #(Back, "Retornar ao Menu Principal"),
  ])

  // O usuário "digitaria" M1A, M1B ou Back em seguida
  io.println("\n(Próxima simulação deve chamar M1A, M1B ou Back)")
  M1
}

/// Simula a entrada na opção M2 (Configurações do Sistema).
pub fn m2() -> MainMenu {
  display_submenu("Configurações do Sistema", [
    #(M2A, "Alterar Conexão de Banco de Dados"),
    #(M2B, "Gerenciar Usuários"),
    #(Back, "Retornar ao Menu Principal"),
  ])

  // O usuário "digitaria" M2A, M2B ou Back em seguida
  io.println("\n(Próxima simulação deve chamar M2A, M2B ou Back)")
  M2
}

/// Simula a entrada na opção M3 (Relatórios e Logs).
pub fn m3() -> MainMenu {
  display_submenu("Relatórios e Logs", [
    #(M3A, "Gerar Relatório Mensal"),
    #(Back, "Retornar ao Menu Principal"),
  ])

  // O usuário "digitaria" M3A ou Back em seguida
  io.println("\n(Próxima simulação deve chamar M3A ou Back)")
  M3
}

/// Ação: Executar Limpeza de Dados
pub fn m1a() -> SubMenu {
  io.println("\n[AÇÃO M1A] 🧹 Dados Limpos com sucesso! (Retornando ao M1)")
  Back
}

/// Ação: Agendar Tarefa Noturna
pub fn m1b() -> SubMenu {
  io.println(
    "\n[AÇÃO M1B] ⏰ Tarefa noturna agendada para 02:00h. (Retornando ao M1)",
  )
  Back
}

/// Ação: Alterar Conexão de Banco de Dados
pub fn m2a() -> SubMenu {
  io.println(
    "\n[AÇÃO M2A] 🗄️ Interface de alteração de DB iniciada. (Retornando ao M2)",
  )
  Back
}

/// Ação: Gerenciar Usuários
pub fn m2b() -> SubMenu {
  io.println(
    "\n[AÇÃO M2B] 👤 Funções de gerenciamento de usuários ativas. (Retornando ao M2)",
  )
  Back
}

/// Ação: Gerar Relatório Mensal
pub fn m3a() -> SubMenu {
  io.println("\n[AÇÃO M3A] 📊 Relatório Mensal Gerado. (Retornando ao M3)")
  Back
}

/// Função principal. Inicia a simulação.
pub fn main() {
  io.println("==============================================")
  io.println("🌟 Simulação de Menu Gleam 🌟")
  io.println("==============================================")
  io.println(
    "Instrução: Para 'navegar', você deve chamar a função correspondente.",
  )
  io.println(
    "Ex: Para ir para o submenu de Processamento de Dados, chame `m1()`.",
  )

  // Simula a primeira tela do menu principal
  display_main_menu()

  io.println("\n--- Exemplo de Chamada ---")
  io.println("Para ir para a opção 1: execute `m1()`")
  io.println("Para executar uma ação no submenu: execute `m1a()`")
}

// Funções de controle
pub fn exit() -> MainMenu {
  io.println("\n👋 Simulação de menu encerrada. Adeus.")
  Exit
}

pub fn back() -> SubMenu {
  io.println("\n⬅️ Retornando ao menu anterior.")
  // Exibir o menu principal novamente após o retorno
  display_main_menu()
  Back
}
