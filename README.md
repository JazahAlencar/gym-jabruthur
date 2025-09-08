# Gym Jabruthur - Projeto de Academia

## Descrição
O **Gym Jabruthur** é um projeto completo de site para academia, com páginas de cadastro de alunos, planos, treinos e pagamentos.  
O projeto foi desenvolvido com **HTML, CSS e JavaScript**, seguindo boas práticas de organização de arquivos e estética consistente em todas as páginas.

O objetivo é permitir que alunos façam matrículas, visualizem planos, acompanhem treinos e efetuem pagamentos.

---

## Funcionalidades

- Cadastro de alunos com informações completas:
  - Nome, telefone, CPF, endereço, data de nascimento, peso e altura.
- Visualização de planos com detalhes de preço e duração.
- Formulários para matrículas e pagamentos integrados ao banco de dados.
- Página de treinos com cards para cada grupo muscular e treino personalizado.
- Ficha de treino por aluno, podendo incluir objetivos e exercícios específicos.
- Pagamentos com status (PAGO, PENDENTE, ATRASADO) e valor do plano já preenchido.

---

## Estrutura de Pastas
gym-jabruthur/
├─ index.html # Página inicial
├─ planos.html # Página de planos
├─ treinos.html # Página de treinos
├─ pagamentos.html # Página de pagamentos
├─ css/
│ └─ style.css # Arquivo CSS principal
├─ js/
│ └─ main.js # Scripts JavaScript
├─ img/ # Imagens usadas no site
│ └─ logo.png
└─ forms/ # Formulários separados

---

## Banco de Dados

O projeto utiliza **MySQL** com as seguintes tabelas:

- `alunos` → cadastro de alunos  
- `planos` → planos disponíveis e seus valores  
- `matriculas` → vínculo aluno-plano  
- `pagamentos` → registro de pagamentos com status  
- `fichas_treino` → objetivos e datas de criação da ficha  
- `exercicios` → exercícios disponíveis  
- `treino_exercicios` → associação de exercícios às fichas  
- `presencas` → controle de frequência dos alunos  

O script completo para criação do banco está no arquivo `academia_jabruth.sql`.

---

## Como usar

1. Abra o arquivo `index.html` no navegador para visualizar a página inicial.  
2. Navegue entre **Planos**, **Treinos** e **Pagamentos** usando o menu.  
3. Utilize os formulários para:
   - Matricular alunos  
   - Registrar pagamentos  
   - Criar treinos personalizados  

> **Observação:** Para funcionalidade completa de banco de dados, é necessário conectar a um servidor MySQL e adaptar os formulários com backend (PHP, Node.js, etc.).

---

## Tecnologias Utilizadas

- HTML5  
- CSS3  
- JavaScript (vanilla)  
- MySQL (para o banco de dados)  

---

## Contato

- Desenvolvido por **Jazah**  
- E-mail: contato@gymjabruthur.com  

---

## Licença

Este projeto é **livre para estudo e uso pessoal**.


