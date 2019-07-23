# Promptintro
###### ԅ(≖‿≖ԅ) Prompt intro 	ԅ(≖‿≖ԅ)

## Comandos

#### Navegação entre diretórios
* `mkdir` criar pasta
* `rmdir` remover diretório
* `cd <pasta>` mudar de pasta

#### Ações para arquivos/diretórios
* `copy` copiar
* `del` deletar
* `rename` renomear
* `echo` imprime mensagem no terminal
* `>` criar arquivos
* `type` ver o conteúdo do arquivo
* `move` mover  
* `xcopy` copia pastas e sub-pastas (`/E` copia todas sub-pastas)

## Scripts .bat
Todos comando podem ser organizados em um único arquivo **.bat** de modo que ele execute uma cadeia de comandos.
* `echo off` faz com que comandos não apareça no terminal
* `pause` espera interação usuário no terminal

## Sobre configurar variáveis no cmd
* A variável **PATH** exibe caminhos onde o sistema usa para procurar scripts(.bat/.exe) diretamente do terminal
* Diretório **/bin** geralmente são usados para guardar scripts para serem executados diretamente do terminal
* `set` exibe todas variáveis do sistema
* `set PATH` ou `echo %PATH%` para exibir uma variável
* `setx PATH "%PATH%;<caminho_bin>" /M` comando para alterar variável do sistema permanentemente. (Obs: Este comando deve ser executado no terminal padrão do Windows em modo administrativo).
* Algumas ferramentas precisam da variável de ambiente **JAVA_HOME** para encontrar as bibliotecas do Java. Alguns exemplos de ferramentas são: ANT, Maven, Gradle ou Tomcat.

## [Chocolatey](https://chocolatey.org/) (gerenciador de pacotes)

Todos comandos do chocolatey e instalação devem ser feitos em modo administrativo.
* `choco install <nome_do_pacote> -y` para instalar um pacote e aceita confirmações automaticamente
* `choco list -l` lista pacotes instalados
* `choco uninstall <nome_do_pacote>` desinstala pacote
Abaixo seguem os comandos para instalar as plataformas mais comuns de desenvolvimento.
  * `choco install -y jdk8`
  * `choco install -y jdk7`
  * `choco install -y ruby rubygems`
  * `choco install railsinstaller`
  * `choco install -y git`
  * `choco install atom`
  * `choco install cmder`
  * `choco install cmdermini`
  * `choco install steam`

