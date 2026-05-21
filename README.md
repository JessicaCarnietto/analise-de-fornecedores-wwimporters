# Análise de Fornecedores - Wide World Importers

Este projeto apresenta uma análise de Business Intelligence focada na gestão de gastos e comportamento de fornecedores, utilizando o dataset público *Wide World Importers*. O objetivo é identificar padrões de concentração financeira, sazonalidade e volatilidade nas transações.

##  Dashboard de BI
![Dashboard de Fornecedores](https://github.com/JessicaCarnietto/analise-de-fornecedores-wwimporters/blob/main/Dashboard.jpg)

##  Objetivos de Negócio
A análise foi desenhada para responder a perguntas estratégicas:
- **Concentração Financeira:** Qual a dependência da empresa em relação a poucos fornecedores?
- **Série Temporal:** Como se comportam os gastos ao longo do tempo (identificação de sazonalidade)?
- **Integridade de Dados:** Tratamento de ajustes contábeis e devoluções para a obtenção do fluxo financeiro real.

##  Stack Tecnológica
- **Banco de Dados:** SQL Server (Containerizado via Docker).
- **BI / Visualização:** Metabase (Open Source).
- **Linguagem:** SQL (Data Manipulation & Analytics).

##  Estrutura do Repositório
* `/queries`: Scripts SQL desenvolvidos para a extração e tratamento dos dados.
    * `distribuicao_gastos.sql`: Query para o cálculo de gastos por fornecedor.
    * `evolucao_financeira.sql`: Query para a análise temporal mensal.

##  Principais Insights
- **Concentração:** Identificação de que uma parcela reduzida de fornecedores é responsável pela maior parte da movimentação financeira.
- **Volatilidade:** Visualização clara de períodos com movimentações negativas, decorrentes de ajustes contábeis e devoluções, possibilitando uma visão mais crítica da gestão de fornecedores.

---
*Projeto desenvolvido como parte do portfólio pessoal de análise de dados.*
