TODO: Implementar estado e regras puras
// Exploração:
pub fn explorar(ambiente: Ambiente, jogador: Jogador) -> String { 
  let objetos_txt = list.map(ambiente.objetos, fn(obj) { obj.nome }) 
  let saidas_txt = list.map(ambiente.saidas, fn(s) { s }) 
  string.join([ 
    ambiente.descricao, 
    "\nObjetos: " <> string.join(objetos_txt, ", "), 
    "\nSaídas: " <> string.join(saidas_txt, ", ") 
  ], "\n") 
}

// Interação: 
pub fn interagir(objeto: Objeto, jogador: Jogador) -> Jogador { 
  objeto.interacao(jogador) 
} 

// Resolução de Enigmas: 
pub fn resolver_enigma(enigma: Enigma, resposta: String, jogador: Jogador) -> 
Jogador { 
  case resposta == enigma.solucao { 
    True -> enigma.efeito(jogador) 
    False -> jogador 
  } 
}