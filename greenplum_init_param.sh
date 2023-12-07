gpconfig -c gp_workfile_compression -v on --masteronly
gpconfig -c max_connections -v 1500 -m 1000
gpconfig -c max_prepared_transactions -v 1000
gpconfig -c gp_resource_manager -v group

gpconfig -c max_appendonly_tables -v 20000 --masteronly
gpconfig -c gp_segment_connect_timeout -v 20min
gpconfig -c gp_fts_probe_timeout -v 60s
gpconfig -c log_duration -v on --masteronly

#gpconfig -c gp_vmem_protect_limit -v 16384
#gpconfig -c gp_vmem_protect_limit -v 1114000
#gpconfig -c log_min_duration_statement -v 1--masteronly
#gpconfig -c superuser_reserved_connections -m 30 -v 3


## oltp
## link https://greenplum.org/oltp-workload-performance-improvement-in-greenplum-6/
gpconfig -c gp_enable_global_deadlock_detector -v on   ### row lock
gpconfig -c log_statement -v none
gpconfig -c checkpoint_segments -v 2 –skipvalidation

## Oracle Function
psql
 CREATE EXTENSION orafce;
