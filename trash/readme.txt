*************************************************************************
*																		*
*  Roteiro para instalação e uso de um hello world com gleam e NodeJS	*
*																		*
*************************************************************************

- instale o gleam

- crie um projeto com o comando (o projeto será criado no diretório em que você esteja)
gleam new <projeto01>

- entre no projeto
cd projeto01

- instale o Node.js (contém o npm que é um gerenciador de pacotes)

- na raiz do projeto execute
npm init -y
npm install readline-sync 

- Se ainda não tiver configurado o projeto para o backend JS, abra o arquivo gleam.toml
e adicione ou edite esta linha (depois da linha que contém version):
target = "javascript"

- Edite o arquivo package.json, em <"scripts": {> adicione a linha
	"start": "gleam run -t javascript"	

- entre no diretório scr e modifique o arquivo projeto01.gleam colocando o seguinte código
import gleam/io

@external(javascript, "../readline_bridge.mjs", "question")
pub fn question(prompt: String) -> String

pub fn main() {
  let nome = question("Qual é o seu nome? ")
  io.println("Olá, " <> nome <> "!")
}
- salve o arquivo

- Execute os comandos
gleam build -t javascript

gleam run -t javascript

- ao executar os comandos anteriores irá aparecer a execução do código
C:\tmp\teste\projeto01>gleam run -t javascript
  Compiling projeto01 // é o nome do arquivo que contém o método main()
   Compiled in 0.06s
    Running projeto01.main
Qual ├® o seu nome? Roger de Melo
Olá, Roger de Melo!
