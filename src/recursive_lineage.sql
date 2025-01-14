.read src/lineage_setup.sql

-- start
with recursive descendent as (
    select
        'Clemente' as person,
        0 as generations
    union all
    select
        lineage.child as person,
        descendent.generations + 1 as generations
    from descendent join lineage
    on descendent.person = lineage.parent
)
select person, generations from descendent;
-- end
