SELECT ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT,(QUANTIDADE *VALOR_UNIT) VALOR_TOTAL, DESCONTO, (VALOR_UNIT -(VALOR_UNIT*(DESCONTO/100))) VALOR_VENDIDO
FROM vendas;