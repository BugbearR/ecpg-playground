#!/bin/sh

psql <<__EOT__
CREATE TABLE sample_table (
    k1 CHAR(10) NOT NULL,
    f1 CHAR(10),
    PRIMARY KEY (k1)
);
__EOT__
