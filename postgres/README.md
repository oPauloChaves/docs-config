# Postgres

## References

- [default password for user postgres](https://www.postgresql.org/message-id/4D958A35.8030501@hogranch.com)

## Setup

Access Postgres

```sh
$ sudo -u postgres psql
```

Set a password for postgres user

```sh
postgres=# alter user postgres password 'secret';
```

Create a user that matches your user name

```sh
postgres=# create user myname createdb createuser password 'secret';
```

Create a user that belongs to your user

```sh
postgres=# create database somedbname owner myname;
```

Exit

```sh
\q
```