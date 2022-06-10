SELECT * FROM wheat.`wheatmap, fao`;

ALTER TABLE `Wheatmap, fao`
rename Wheatmap;
ALTER TABLE wheatmap
RENAME COLUMN `Value` TO Tonnes;

select * from wheatmap;

-- cleaning the data, no need for 2 Chinas.
delete from wheatmap
where country = 'china, mainland';

-- A more precise view of top wheat producers for the dashboard
select * from wheatmap
order by tonnes desc
limit 10;
select now();

