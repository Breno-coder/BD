SET SQL_SAFE_UPDATE = 0;
UPDATE vendas set desconto = 0 where desconto is null;