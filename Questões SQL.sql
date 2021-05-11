# Quest�es sql

# 1 - Qual � a m�dia de renda das pessoas presentes no seu banco de
dados?

select AVG(renda) from pnadc20203

# 2 - Qual � a m�dia de renda das pessoas que residem no Distrito
Federal?

select AVG(renda) from pnadc20203 where uf = 'Distrito Federal'

# 3 - Qual � a m�dia de idade das pessoas que moram na regi�o sudeste do pa�s (dos que est�o na sua amostra, � claro)?

select AVG(renda), uf from pnadc20203 where uf = 'Rio de Janeiro' or uf = 'Esp�rito Santo' or uf = 'Minas Gerais' or uf = 'S�o Paulo'

# 4 - Qual � o estado brasileiro que possui a menor m�dia de renda?

select AVG(renda), uf from pnadc20203 group by uf

# 5 - Qual � o estado brasileiro que possui a maior m�dia de escolaridade?

select AVG(anosesco), uf from pnadc20203 where idade between 25 and 35

# 6 - Qual � a m�dia de escolaridade entre os homens do Mato Grosso?

N�o possui sql 

# 7 - Qual � a m�dia de escolaridade entre as mulheres que moram no
Paran� e est�o entre 25 e 30 anos?

select AVG(anosesco) from pnadc20203 where (idade between 25 and 35) and (uf = 'Paran�')

# 8 - Qual � a m�dia de renda para as pessoas na regi�o Sul do pa�s, que
est�o na for�a de trabalho e possuem entre 25 e 35 anos?

select AVG(renda) from pnadc20203 where (idade between 25 and 35) and (uf = 'Santa Catarina' or uf = 'Paran�' or uf = 'Rio Grande do Sul') and (trab = 'Pessoas na for�a de trabalho')

# 9 - Qual � a renda m�dia por mesorregi�o produzida no estado de MG?
(Para responder, voc� deve somar todas as rendas do estado e dividir
pelo n�mero de mesorregi�es da UF.)

select SUM(renda)/12 from pnadc20203 where (uf = 'Minas Gerais')

# 10 - Qual � a renda m�dia das mulheres que residem na regi�o Norte do
Brasil, possuem gradua��o, tem idade entre 25 e 35 anos e s�o pretas
ou pardas?

select AVG(renda) from pnadc20203 where (idade between 25 and 35) and (graduacao = 'Sim') and (cor = 'Preta' or cor = 'Parda') and (uf = 'Acre' or uf = 'Amap�' or uf = 'Amazonas' or uf = 'Par�' or uf = 'Rond�nia' or uf = 'Roraima' or uf = 'Tocantins')