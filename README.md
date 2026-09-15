# 🎓 Curso Programador Full Stack - Senac

<div align="center">

![Senac Banner](https://img.shields.io/badge/Senac-Educa%C3%A7%C3%A3o%20Profissional-orange?style=for-the-badge&logo=school)
![Full Stack](https://img.shields.io/badge/Forma%C3%A7%C3%A3o-Full%20Stack-blue?style=for-the-badge&logo=code)
![Status](https://img.shields.io/badge/Status-Em%20Andamento-brightgreen?style=for-the-badge)

**Repositório Oficial de Aulas, Exercícios e Projetos do Curso de Programador Full Stack**

[Módulos do Curso](#-grade-curricular--módulos) • [Ambiente & Recursos](#-ambiente--recursos-úteis) • [Como Usar](#-como-utilizar-este-repositório) • [Projeto Integrador](#-projeto-integrador)

</div>

---

## 📌 Sobre o Curso

O curso de **Programador Full Stack do Senac** tem como objetivo formar profissionais capacitados para atuar no desenvolvimento completo de aplicações web modernas, cobrindo desde a interface com o usuário (**Front-end**) até a regra de negócio, servidores e bancos de dados (**Back-end**), além das melhores práticas de versionamento de código e metodologia ágil.

### 🚀 O que você vai aprender:
- **Fundamentos Web**: HTML5 semântico, CSS3 moderno (Flexbox, Grid, Responsividade) e Git/GitHub.
- **Lógica & JavaScript**: Programação orientada a objetos, manipulação da DOM, ES6+ e assincronismo (Promises/Async-Await).
- **Front-end Avançado**: Construção de SPAs com **React.js**, gestão de estado, hooks e estilização.
- **Back-end & APIs**: Criação de servidores RESTful com **Node.js** e **Express**, autenticação (JWT) e segurança.
- **Banco de Dados**: Modelagem e manipulação de dados relacionais (**PostgreSQL / MySQL**) com ORM (**Prisma / Knex**) e NoSQL.
- **DevOps Básicos & Deploy**: Deploy de aplicações front-end (Vercel/Netlify) e back-end (Render/Railway).

---

## 📚 Grade Curricular & Módulos

| Módulo | Conteúdo Principal | Diretório |
| :--- | :--- | :--- |
| **01. Fundamentos Web** | HTML5, CSS3, Layouts Responsivos, Git & GitHub | [`modulos/modulo-01-fundamentos-web`](./modulos/modulo-01-fundamentos-web/) |
| **02. JavaScript & ES6+** | Lógica de Programação, DOM, Eventos, Async/Await | [`modulos/modulo-02-javascript-es6`](./modulos/modulo-02-javascript-es6/) |
| **03. Front-end com React** | React.js, Componentização, Hooks, Tailwind/CSS Modules | [`modulos/modulo-03-front-end-react`](./modulos/modulo-03-front-end-react/) |
| **04. Back-end com Node.js** | Node.js, Express, Arquitetura REST, Middlewares, JWT | [`modulos/modulo-04-back-end-node`](./modulos/modulo-04-back-end-node/) |
| **05. Banco de Dados** | SQL, PostgreSQL/MySQL, Modelagem ER, ORM | [`modulos/modulo-05-banco-de-dados`](./modulos/modulo-05-banco-de-dados/) |
| **06. Projeto Integrador** | Aplicação Full Stack Completa (Front + Back + DB + Deploy) | [`modulos/modulo-06-projeto-integrador`](./modulos/modulo-06-projeto-integrador/) |

---

## 🛠️ Stacks & Tecnologias

<div align="left">

**Front-end:**
![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=flat-square&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=flat-square&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=javascript&logoColor=black)
![React](https://img.shields.io/badge/React-20232A?style=flat-square&logo=react&logoColor=61DAFB)
![TailwindCSS](https://img.shields.io/badge/TailwindCSS-38B2AC?style=flat-square&logo=tailwind-css&logoColor=white)

**Back-end & Banco de Dados:**
![Node.js](https://img.shields.io/badge/Node.js-43853D?style=flat-square&logo=node.js&logoColor=white)
![Express.js](https://img.shields.io/badge/Express.js-000000?style=flat-square&logo=express&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=flat-square&logo=postgresql&logoColor=white)
![Prisma](https://img.shields.io/badge/Prisma-2D3748?style=flat-square&logo=prisma&logoColor=white)

**Ferramentas & Versionamento:**
![Git](https://img.shields.io/badge/Git-F05032?style=flat-square&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github&logoColor=white)
![VSCode](https://img.shields.io/badge/VS_Code-007ACC?style=flat-square&logo=visual-studio-code&logoColor=white)
![Postman](https://img.shields.io/badge/Postman-FF6C37?style=flat-square&logo=postman&logoColor=white)

</div>

---

## 🛠️ Ambiente & Recursos Úteis

Antes de começar as aulas práticas, prepare o seu ambiente de desenvolvimento consultando os guias abaixo:

- 📖 [Guia de Configuração do Ambiente](./recursos/instalacao-ambiente.md) (Instalação de Node.js, Git, VS Code e extensões).
- 🐙 [Guia de Git & Boas Práticas de Commits](./recursos/boas-praticas-git.md) (Como clonar, enviar exercícios e usar branchs).
- 📝 [Pasta de Atividades e Desafios](./atividades/) (Exercícios práticos propostos durante as aulas).

---

## 💻 Como Utilizar Este Repositório

### 1. Clonar o repositório para o seu computador:
```bash
git clone https://github.com/SEU_USUARIO/curso-programador-full-stack-senac.git
```

### 2. Acessar a pasta do projeto:
```bash
cd curso-programador-full-stack-senac
```

### 3. Navegar pelos módulos:
Cada módulo possui sua própria pasta com exemplos práticos, códigos das aulas e explicações.

---

## 🏆 Projeto Integrador

O **Projeto Integrador** é a atividade prática final onde cada aluno (ou grupo) desenvolverá uma aplicação Full Stack real, aplicando todos os conceitos aprendidos no curso.

- **Entrega esperada**: Front-end responsivo integrado a uma API REST com persistência de dados em banco de dados e deploy realizado.
- Detalhes e especificações estão disponíveis na pasta [`modulos/modulo-06-projeto-integrador`](./modulos/modulo-06-projeto-integrador/).

---

## 👨‍🏫 Instrutor & Suporte

- **Professor**: Nieldson (Prof. TI Senac)
- **Dúvidas**: Utilize a aba de **Discussions** ou abra uma **Issue** no repositório GitHub para dúvidas sobre conteúdos ou exercícios.

<div align="center">
  <sub>Desenvolvido com 💙 para os alunos do Senac.</sub>
</div>
