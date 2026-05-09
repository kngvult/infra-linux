#!/bin/bash

echo "Iniciando configuração de infraestrutura..."

# 1. Criar grupos
groupadd admins
groupadd devs
groupadd guests

# 2. Criar usuários e associar aos grupos
useradd -m -s /bin/bash -G admins carlos
useradd -m -s /bin/bash -G devs maria
useradd -m -s /bin/bash -G guests roberto

# 3. Definir senhas (pode ser ajustado para uso seguro com 'passwd')
echo "carlos:1234" | chpasswd
echo "maria:1234" | chpasswd
echo "roberto:1234" | chpasswd

# 4. Criar diretórios
mkdir -p /empresa/admins
mkdir -p /empresa/devs
mkdir -p /empresa/guests

# 5. Definir permissões
chown carlos:admins /empresa/admins
chown maria:devs /empresa/devs
chown roberto:guests /empresa/guests

chmod 770 /empresa/admins
chmod 770 /empresa/devs
chmod 770 /empresa/guests

echo "Infraestrutura configurada com sucesso!"
