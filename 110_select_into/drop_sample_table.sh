#!/bin/sh

psql <<__EOT__
DROP TABLE sample_table;
__EOT__
