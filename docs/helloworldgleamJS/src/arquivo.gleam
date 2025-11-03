import gleam/io
import simplifile
import gleam/string

/// Função que testa a gravação e leitura de arquivos
pub fn le_grava() {
  let caminho = "teste.txt"
  let conteudo = "Olá, mundo em Gleam com Simplifile!"

  case simplifile.write(caminho, conteudo) {
    Ok(_) -> io.println("✅ Arquivo teste.txt gravado com sucesso!")
    Error(e) -> io.println("❌ Erro ao gravar: " <> string.inspect(e))
  }

  case simplifile.read(caminho) {
    Ok(texto) -> io.println("📄 Conteúdo lido: " <> texto)
    Error(e) -> io.println("❌ Erro ao ler: " <> string.inspect(e))
  }
}