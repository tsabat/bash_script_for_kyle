# bash_script_for_kyle

This proves that you can move files around based on env vars.

To test it, run

```bash
./test.sh
```

## Steps to get this running

1.  create a staging environment in beanstalk
1.  set a `$STAGE=staging` environment variable in the staging beanstalk env
1.  move change the run.sh file to `cp` the values to the right place, instead of `/tmp/values.conf`
1.  add the three files (`run.sh`, `prod_values.conf`, `stage_values.conf`) to your application, all as siblings
1.  have beanstalk run `run.sh` on startup.
