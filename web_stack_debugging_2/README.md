# web_stack_debugging_2

Debugging project about running software as a less privileged user.

## Files

| File | Description |
| --- | --- |
| `0-iamsomeoneelse` | Bash script that runs `whoami` as the user given as argument. |
| `1-run_nginx_as_nginx` | Bash script that makes nginx run as the `nginx` user and listen on port 8080. |

## Usage

    ./0-iamsomeoneelse www-data
    ./1-run_nginx_as_nginx
    ps auxff | grep ngin[x]
    nc -z 0 8080 ; echo $?
