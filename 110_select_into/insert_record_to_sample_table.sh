#!/bin/sh

psql <<__EOT__
INSERT INTO sample_table (k1, f1) VALUES ('AAA', '123');
INSERT INTO sample_table (k1, f1) VALUES ('BBB', '456');
__EOT__
