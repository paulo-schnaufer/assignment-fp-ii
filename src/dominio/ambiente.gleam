pub type Ambiente {
  Ambiente(
    nome: String,
    descricao: String,
    objetos: List(Objeto),
    saidas: List(String),
    enigmas: List(Enigma),
  )
}
