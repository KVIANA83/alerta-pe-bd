# Alerta-PE 

## ETE Advogado José David Gil Rodrigues

### Projeto Integrador 3 

### Banco dr Dados 

O banco de dados foi projetado utilizando as ferramentas brModelo 3.0 para os modelos conceitual, lógico e físico, e o MySQL Workbench 8.0 para a implementação física do banco de dados.

O modelo conceitual representa a estrutura do banco de dados de uma forma abstrata, sem se preocupar com detalhes de implementação. Foi nele que foram definidas as entidades principais do sistema, como `usuario`, `ocorrencia`, `processos` e `admin`, juntamente com seus atributos e relacionamentos.

No modelo lógico, as entidades foram refinadas e normalizadas, garantindo a integridade e consistência dos dados. Foram adicionadas as chaves primárias e os relacionamentos entre as entidades foram estabelecidos, como as associações entre `ocorrencia` e `usuario`, `admin` e `ocorrencia`, e `admin` e `processos`.

Por fim, no modelo físico, as definições de tipo de dados foram especificadas, juntamente com as restrições de chave primária e chave estrangeira. Foi garantido que o banco de dados estivesse pronto para ser implementado em um sistema real, utilizando as melhores práticas de design e considerando os requisitos de integridade referencial.

O MySQL Workbench foi utilizado para traduzir o modelo físico em comandos SQL executáveis, resultando na criação das tabelas `usuario`, `ocorrencia`, `processos` e `admin`, juntamente com as chaves primárias e estrangeiras necessárias para manter a consistência dos dados.

Em resumo, o banco de dados foi projetado de forma metódica, utilizando ferramentas adequadas para cada etapa do processo de desenvolvimento, resultando em uma estrutura sólida e funcional pronta para ser implementada em um ambiente de produção.
