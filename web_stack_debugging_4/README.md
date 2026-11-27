# web_stack_debugging_4

Debugging project: getting an nginx web server to handle a heavy load with zero failed requests.

## Files

| File | Description |
| --- | --- |
| `0-the_sky_is_the_limit_not.pp` | Puppet manifest that raises nginx's open files limit (`ULIMIT` in `/etc/default/nginx`) and restarts nginx. |

## Usage

    ab -c 100 -n 2000 localhost/      # before: many failed requests
    puppet apply 0-the_sky_is_the_limit_not.pp
    ab -c 100 -n 2000 localhost/      # after: Failed requests: 0
