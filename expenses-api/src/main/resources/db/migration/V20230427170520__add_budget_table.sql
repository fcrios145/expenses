create table expenses.budget
(
    id             int auto_increment primary key,
    uuid           char(36)       default uuid() not null,
    name           varchar(128)                  not null,
    date_start     date                          not null,
    date_end       date                          not null,
    expenses_total decimal(10, 2) default 0.00   not null,
    income_total   decimal(10, 2) default 0.00   not null,
    profit         decimal(10, 2) default 0.00   not null,
    constraint budget__index_pk
        unique (id)
);

