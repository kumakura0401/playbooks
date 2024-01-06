create user 'slurm'@'localhost' identified by 'slurm';
create database slurm_acct_db;
grant all on slurm_acct_db.* to slurm@localhost;
