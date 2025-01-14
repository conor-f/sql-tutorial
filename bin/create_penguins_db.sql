-- create full 'penguins' table from CSV
drop table if exists penguins;
.mode csv penguins
.import data/penguins.csv penguins
update penguins set species = null where species = "";
update penguins set island = null where island = "";
update penguins set bill_length_mm = null where bill_length_mm = "";
update penguins set bill_depth_mm = null where bill_depth_mm = "";
update penguins set flipper_length_mm = null where flipper_length_mm = "";
update penguins set body_mass_g = null where body_mass_g = "";
update penguins set sex = null where sex = "";

-- create 'little_penguins' table for teaching purposes
-- wish there was a way to seed the RNG
drop table if exists little_penguins;
create table little_penguins as
select * from penguins
order by random()
limit 10;
