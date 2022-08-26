# Bootcamp linux Experience :rocket:

Arquivos de Bash Script para IaC criados no bootcamp Linux Experience da DIO.me

## Projeto 1 - Infrastructure as Code

### DESCRIÇÃO

Neste projeto iremos criar um script onde toda a infraestrutura de usuários, grupos de usuários, diretórios e permissões serão criadas automaticamente. Será realizado o upload do arquivo de script no GitHub para futuras reutilizações do script. Sendo assim, toda nova máquina virtual que for iniciada já estará pronta para uso quando o script for executado.

Linux | Git

### Fase 1 - Preparação do ambiente
  
* [X] Exclusão dos arquivos e diretórios
* [X] Exclusão dos usuários
* [X] Exclusão dos grupos

#### Excluir arquivos e diretórios criados anteriormente

* `# rm -Rf [FILE]`

#### Excluir usuários criados anteriormente

* Recuperando a lista de usuários no servidor
  * `# cat etc/passwd`

* Executando a exclusão dos usuários
  * `# userdel -r [LOGIN]`

#### Excluir grupos criados anteriormente

* Recuperando a lista de grupos do servidor
  * `# cat /etc/group`

* Executando a exclusão dos grupos
  * `# groupdel [GROUP]`

### Fase 2 - Provisionar a estrutura de diretórios, grupos e usuários

* [X] Diretórios
* [X] Grupos
* [X] Usuários

#### Criação dos diretórios

* **`mkdir`**

#### Criação dos grupos

* **`groupadd`**

#### Criação dos Usuários

* **`useradd`**

### Fase 3 - Provisionar as permissões de acesso aos usuários

* [X] O **dono** de *todos os diretórios* criados será o usuário **root**
  * **`chown root:`**

* [X] Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório
* [X] Os usuário não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos,o qual não pertençam.
  * `# chmod 770`

* [X] Todos os usuários terão permissão total dentro do diretório **público**
  * `# chmod 770`

* [X] Incluindo permissão de execução ao arquivo `iac.sh`
  * `chmod +x iac.sh`

### Fase 4 - Abrir o PR com a atualização do projeto

* [X] Subir arquivo de script criado para a conta Github

### Fase 5 - Submissão do repositório do projeto

* [X] Submeter em **`Entregar Projeto`** o link do repositório atualizado
