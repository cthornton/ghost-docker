#!/bin/bash
mkdir -p dev_data
sqlite3 dev_data/database.db "create table aTable(field1 int); drop table aTable;" > /dev/null