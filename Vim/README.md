# Vim

###### Introdução ao .Vim

## Comandos

#### No modo de seleção
* `v ou shift+v` para entrar em modo de seleção de texto/linha
* `x` recortar texto selecionado
* `dd` delete linha (cortar)
* `y` copiar texto seleciona
* `yy` copia linha inteira
* `p e P` colar depois ou ante do cursor respectivamente
* `o e O` inserir linha abaixo ou acima do cursor
* `r+caracter` substituir caracter selecionado
* `$` vai para o final da linha
* `ctrl+v` seleciona por bloco
* `u` ctrl+z

### Ações/navegação entre arquivos
* `:q` quit
* `:q!` quit sem salvar
* `:wq` salvar e sair
* `ZZ` salvar e sair
* `:n ou nG` vá para linha 'n'
* `%s/<subs_palavra>/<por_outra_palavra>/gc` substitui palavra por outra. gc = todo arquivo e iterativo
* `/` busca no arquivo
* `vs+<nome_do_arquivo>` para splitar verticalmente um outro arquivo
* `ctrl+ww` mudar para arquivo splitado
* `ctrl+w+<direcao>` se move para a tela splitada da direcao escolhida

### Navegação/shortcuts
* `0` ir para começo de linha
* `w` próxima palavra
* `b` palavra anterior
* `/` ctrl+f no arquivo (<n> e <N> para procurar referência próxima e anterior)
* `O ou shift+O` para entrar em modo de "INSERT" na linha de cima ou de baixo respectivamente
* `gg` ir para o inicio do arquivo
* `shitf+g` ir para o fim do arquivo
* `r` replace para letra/palavra selecionada

### nail_care arquivo `.vimrc`

* `colorscheme industry` esquema de cores do editor vim
* `set tabstop=2` tamanho de tab
* `set shiftwidth=2` tamanho de tab
* `filetype plugin indent on` identifica tipo de arquivo
* `syntax on` muda a cor da sintaxe 

### Gerenciando plugins com o pathogenn

* `vim` e `:echo %HOME` para saber diretório home do vim
* Ir para o diretório do vim com `cd <home_vim>`
* Criar diretórios `autoload` e `bundle` com:
 * `mkdir -p ~/.vim/autoload ~/.vim/bundle`
* Seguir passo 'Installation" do [GitHub - Vim-Pathogen](https://github.com/tpope/vim-pathogen)
* Adicionar `execute pathogen#infect()` no arquivo `.vimrc`

### NERDTree

* `NERDTree` para iniciar
* `<arquivo_no_nerdtree>+s` splita o arquivo selecionado no NERDTree 
* `ctrl+ww` mudar para tela splitada
* `ctrl+w+h ou l` navegação entre janelas splitadas

### Links TOP

[DevHints - Vim](https://devhints.io/vim) - Tudo que tem aqui, mas mais organizado :)

