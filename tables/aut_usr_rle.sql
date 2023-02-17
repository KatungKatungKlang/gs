create table aut_usr_rle 
    ( id                NUMBER
    , usr_id            NUMBER
    , rle_id            NUMBER
    , valid_form        DATE
    , valid_until       DATE
    , date_created      DATE
    , user_created      VARCHAR2(50)
    , date_modified     DATE
    , user_modified     VARCHAR2(50)
    , primary key(id)
    );
    
create unique index aut_ure_i1 on aut_usr_rle(usr_id, rle_id, valid_form);

alter table aut_usr_rle add constraint aut_ure_usr_fk foreign key(usr_id) references aut_users(id);
alter table aut_usr_rle add constraint aut_ure_rle_fk foreign key(rle_id) references aut_roles(id);

create public synonym aut_usr_rle for aut_usr_rle;