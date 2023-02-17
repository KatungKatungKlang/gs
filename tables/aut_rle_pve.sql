create table aut_rle_pve 
    ( id                NUMBER
    , rle_id            NUMBER
    , pve_id            NUMBER
    , valid_form        DATE
    , valid_until       DATE
    , date_created      DATE
    , user_created      VARCHAR2(50)
    , date_modified     DATE
    , user_modified     VARCHAR2(50)
    , primary key(id)
    );
    
create unique index aur_rpe_i1 on aut_rle_pve(rle_id, pve_id, valid_form);

alter table aut_rle_pve add constraint aut_rpe_pve_fk foreign key (pve_id) references aut_privileges(id);
alter table aut_rle_pve add constraint aut_rpe_rle_fk foreign key (rle_id) references aut_roles(id); 

