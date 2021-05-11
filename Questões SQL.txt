# Questões sql

# 1 - Qual é a média de renda das pessoas presentes no seu banco de
dados?

select AVG(renda) from pnadc20203

# 2 - Qual é a média de renda das pessoas que residem no Distrito
Federal?

select AVG(renda) from pnadc20203 where uf = 'Distrito Federal'

# 3 - Qual é a média de idade das pessoas que moram na região sudeste do país (dos que estão na sua amostra, é claro)?

select AVG(renda), uf from pnadc20203 where uf = 'Rio de Janeiro' or uf = 'Espírito Santo' or uf = 'Minas Gerais' or uf = 'São Paulo'

# 4 - Qual é o estado brasileiro que possui a menor média de renda?

select AVG(renda), uf from pnadc20203 group by uf

# 5 - Qual é o estado brasileiro que possui a maior média de escolaridade?

select AVG(anosesco), uf from pnadc20203 where idade between 25 and 35

# 6 - Qual é a média de escolaridade entre os homens do Mato Grosso?

Não possui sql 

# 7 - Qual é a média de escolaridade entre as mulheres que moram no
Paraná e estão entre 25 e 30 anos?

select AVG(anosesco) from pnadc20203 where (idade between 25 and 35) and (uf = 'Paraná')

# 8 - Qual é a média de renda para as pessoas na região Sul do país, que
estão na força de trabalho e possuem entre 25 e 35 anos?

select AVG(renda) from pnadc20203 where (idade between 25 and 35) and (uf = 'Santa Catarina' or uf = 'Paraná' or uf = 'Rio Grande do Sul') and (trab = 'Pessoas na força de trabalho')

# 9 - Qual é a renda média por mesorregião produzida no estado de MG?
(Para responder, você deve somar todas as rendas do estado e dividir
pelo número de mesorregiões da UF.)

select SUM(renda)/12 from pnadc20203 where (uf = 'Minas Gerais')

# 10 - Qual é a renda média das mulheres que residem na região Norte do
Brasil, possuem graduação, tem idade entre 25 e 35 anos e são pretas
ou pardas?

select AVG(renda) from pnadc20203 where (idade between 25 and 35) and (graduacao = 'Sim') and (cor = 'Preta' or cor = 'Parda') and (uf = 'Acre' or uf = 'Amapá' or uf = 'Amazonas' or uf = 'Pará' or uf = 'Rondônia' or uf = 'Roraima' or uf = 'Tocantins')