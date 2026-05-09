# infra-linux

```markdown
# Infraestrutura como Código - Usuários, Grupos e Permissões

Este projeto automatiza a criação de **usuários, grupos, diretórios e permissões** em máquinas Linux utilizando um script Bash.  
A ideia é facilitar a configuração inicial de novas máquinas virtuais, garantindo que toda a infraestrutura esteja pronta para uso após a execução do script.

---

## Funcionalidades
- Criação automática de grupos de usuários (`admins`, `devs`, `guests`)
- Criação de usuários com diretório home e shell configurado
- Definição de senhas iniciais
- Criação de diretórios específicos para cada grupo
- Configuração de permissões de acesso (rwx para dono e grupo)

---

## Estrutura criada
- **Grupos:** `admins`, `devs`, `guests`
- **Usuários:** `carlos`, `maria`, `roberto`
- **Diretórios:** `/empresa/admins`, `/empresa/devs`, `/empresa/guests`
- **Permissões:** apenas dono e grupo têm acesso total (rwx)

```
---

## Como usar

1. Clone este repositório:
   ```bash
   git clone https://github.com/seu-usuario/infra-users-permissions.git
   cd infra-users-permissions
   ```

2. Dê permissão de execução ao script:
   ```bash
   chmod +x infra.sh
   ```

3. Execute o script como **root**:
   ```bash
   sudo ./infra.sh
   ```

---

## Observações
- As senhas definidas no script são apenas exemplos (`1234`).  
  Recomenda-se alterá-las imediatamente após a criação dos usuários:
  ```bash
  passwd nome_do_usuario
  ```
- O script pode ser adaptado para diferentes cenários, adicionando novos grupos, usuários ou regras de permissão.

---

## Contribuições
Contribuições são bem-vindas!  
Sinta-se à vontade para abrir **issues** e enviar **pull requests** com melhorias.

---

## Licença
Este projeto está sob a licença MIT.  
Você pode usar, modificar e distribuir livremente, desde que mantenha os créditos.
```
