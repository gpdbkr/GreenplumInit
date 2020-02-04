gpconfig -c gp_workfile_compression -v on --masteronly
gpconfig -c max_connections -v 1000 -m 500
gpconfig -c max_prepared_transactions -v 500
#gpconfig -c gp_vmem_protect_limit -v 16384

## oltp
## link https://greenplum.org/oltp-workload-performance-improvement-in-greenplum-6/
gpconfig -c gp_enable_global_deadlock_detector -v on   ### row lock
gpconfig -c log_statement -v none
gpconfig -c checkpoint_segments -v 2 –skipvalidation

## Oracle Function
psql
 CREATE EXTENSION orafce;
