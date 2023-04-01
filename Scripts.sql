1 - Usando Distinct para saber as cargas horárias que tem na tabela

select distinct carga from cursos
order by carga;

2 - Usando GROUP para agrupar as cargas horárias, o resultado pode ser igual ao distinct porem não é igual pois neste caso esta sendo agrupado e não distinguido

select carga from cursos
group by carga;

3 - Usando GROUP para agrupar as cargas horárias e utilizando COUNT para realizar a contagem de cada curso

select carga, COUNT(nome) from cursos
group by carga;

 4 - Usando GROUP para agrupar as cargas horárias e utilizando COUNT para realizar a contagem de cada curso que tem totaulas de = 30
 
select carga, count(nome) from cursos
where totaulas = 30
group by carga;

5 - Usando GROUP para agrupar os anos e utilizando COUNT para realizar a contagem de cada curso que tem em cada ano de forma decrescente

select ano, count(*) from cursos
group by ano
order by count(*) desc;

6 - Usando GROUP para agrupar os anos e utilizando COUNT para realizar a contagem de cada curso que tem em cada ano de forma decrescente e usando HAVING para mostrar somente os cursos depois de 2013

select ano, count(*) from cursos
group by ano
having ano > 2013
order by count(*) des

