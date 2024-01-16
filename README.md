# projeto-final

Neste repositório, estão os dados e arquivos do projeto final do curso "Relatórios e Apresentações" (turma de novembro/dezembro de 2023) da Curso-R: trata-se de um estudo sobre modelos de classificação aplicados a dados de transações de cartão de crédito, de modo que o objetivo geral é identificar transações fraudulentas.

## **Dados utilizados no projeto**

O arquivo de dados original *creditcard.csv* (disponível em <https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud>), que contém as transações via cartão de crédito, foi dividido em cinco arquivos CSV que estão armazenados no subdiretório **/dados**: 
- *creditcard_01.csv*
- *creditcard_02.csv*
- *creditcard_03.csv*
- *creditcard_04.csv*
- *creditcard_05.csv*

Cada arquivo contém as mesmas variáveis (colunas), definidas nesta mesma ordem em que estão organizadas nos dados:
- Uma variável sem nome que representa o índice original de cada transação e ela é utilizada unicamente para reordenar as transações após a união dos cinco arquivos.
- **time**: tempo, em segundos, entre a primeira transação e a transação atual.
- **V1** a **V28**: variáveis de entrada para os modelos de classificação - os valores originais foram "anonimizados" por meio de uma Análise de Componentes Principais (PCA).
- **amount**: valor da transação (provavelmente em euros).
- **class**: classificação binária da transação (1 = fraude; 0 = não-fraude). 

## **Arquivos do projeto**

- *projeto-final.qmd*: arquivo no formato Quarto com a estrutura do relatório HTML do projeto e os *chunks* de programação em R.
- *projeto-final.html*: relatório do projeto, em formato HTML.
- *draw_confusion_matrix.R*: script no formato R com o código customizado da função que cria a matriz de confusão utilizada no relatório do projeto.
- *apa.csl*: arquivo no formato CSL (*Citation Style Language*) com o estilo de citação de referências bibliográficas da American Psychological Association (APA).
- *packages.bib*: arquivo no formato BibTeX com as referências bibliográficas dos pacotes R utilizados no projeto.
- *references.bib*: arquivo no formato BibTeX com as referências bibliográficas citadas no projeto.
