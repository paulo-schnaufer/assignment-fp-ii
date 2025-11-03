import arquivo
import gleam/io

@external(javascript, "../readline_bridge.mjs", "question")
pub fn question(prompt: String) -> String

pub fn main() {
  let nome = question("Qual é o seu nome? ")
  io.println("Olá, " <> nome <> "!")
  arquivo.le_grava()
}
