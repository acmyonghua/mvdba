
CREATE user &&1 IDENTIFIED BY &&1
    DEFAULT TABLESPACE users
    TEMPORARY TABLESPACE temp
;

GRANT CONNECT to &&1;

