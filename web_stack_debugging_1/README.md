# web_stack_debugging_1

Debugging project: finding out why nginx does not listen on port 80 in an Ubuntu container.

## Files

| File | Description |
| --- | --- |
| `0-nginx_likes_port_80` | Bash script that re-links `/etc/nginx/sites-enabled/default` to `sites-available/default` and restarts nginx so it listens on port 80. |

## Usage

Run the script inside the container, then check:

    ./0-nginx_likes_port_80
    curl 0:80

Expected output: the default nginx welcome page.
