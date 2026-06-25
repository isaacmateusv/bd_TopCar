# 🗄️ TopCar - Banco de Dados para Concessionária

Projeto acadêmico desenvolvido para a disciplina de **Banco de Dados**, com o objetivo de modelar e implementar um banco de dados para gerenciamento de uma concessionária de veículos. O sistema armazena informações sobre carros, clientes e vendas utilizando MySQL.

## 🚀 Tecnologias Utilizadas

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge\&logo=mysql\&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-336791?style=for-the-badge\&logo=mysql\&logoColor=white)
![Workbench](https://img.shields.io/badge/MySQL_Workbench-4479A1?style=for-the-badge\&logo=mysql\&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge\&logo=git\&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge\&logo=github\&logoColor=white)

---

## 📖 Sobre o Projeto

O projeto TopCar foi criado para solucionar problemas de controle manual de carros, clientes e vendas em concessionárias, permitindo o armazenamento e gerenciamento das informações de forma organizada e segura através de um banco de dados relacional.

---

## 📋 Funcionalidades do Banco de Dados

* Cadastro de carros

* Consulta de carros

* Atualização de carros

* Exclusão de carros

* Cadastro de clientes

* Consulta de clientes

* Atualização de clientes

* Exclusão de clientes

* Registro de vendas

* Consulta de vendas

---

## 🗂️ Entidades do Banco

### 🚗 Carro

* id_carro
* modelo
* marca
* ano
* cor
* preco
* disponivel

### 👤 Cliente

* id_cliente
* nome
* cpf
* telefone
* email

### 💰 Venda

* id_venda
* data_venda
* id_cliente
* id_carro

As entidades foram modeladas considerando os relacionamentos entre clientes, veículos e vendas.

---

## 🔗 Relacionamentos

* Um cliente pode realizar várias vendas.
* Cada venda pertence a um cliente.
* Cada venda está associada a um carro.
* Um carro pode participar de uma venda.

---

## 🎨 Protótipo de Telas

Protótipo desenvolvido no Figma para representar as telas do sistema.

🔗 https://www.figma.com/make/TFEmWAspC5sLbRT4znXL1k/Concession%C3%A1ria-TopCar-Prototipo?code-node-id=0-9&p=f&t=6826S3sUcaR8gZW5-0&fullscreen=1

---

## 🎯 Objetivos

* Aplicar conceitos de modelagem de banco de dados.
* Criar entidades e relacionamentos.
* Garantir integridade e persistência dos dados.
* Desenvolver consultas para gerenciamento das informações da concessionária.

---

## 👨‍🎓 Autor

**Isaac Mateus**

Projeto desenvolvido para a disciplina de Banco de Dados.
