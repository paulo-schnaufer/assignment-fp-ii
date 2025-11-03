pub type Enigma {
  Enigma(
    descricao: String,
    solucao: String,
    pistas: List(String),
    efeito: fn(Jogador) -> Jogador,
  )
}
