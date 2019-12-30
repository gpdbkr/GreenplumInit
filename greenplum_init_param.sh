gpconfig -c gp_workfile_compression -v on --masteronly
gpconfig -c max_connections -v 1000 -m 500
gpconfig -c max_prepared_transactions -v 500
#gpconfig -c gp_vmem_protect_limit -v 16384
