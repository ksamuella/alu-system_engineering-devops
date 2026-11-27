# web_stack_debugging_0

First debugging project: getting Apache to run in a Docker container.

## Files

| File | Description |
| --- | --- |
| `0-give_me_a_page` | Bash script that starts Apache inside the container and makes sure the root page returns `Hello Holberton`. |

## Usage

Start the container, then run the script inside it:

    docker run -p 8080:80 -d -it holbertonschool/265-0
    docker exec -it <container id> bash
    ./0-give_me_a_page
    curl 0:8080

Expected output: `Hello Holberton`
