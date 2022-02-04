#!/bin/sh

psql <<__EOT__
DELETE FROM sample_table;
__EOT__
