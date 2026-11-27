# web_stack_debugging_3

Debugging project: finding with `strace` why Apache returns a 500 error and fixing it with Puppet.

## Files

| File | Description |
| --- | --- |
| `0-strace_is_your_friend.pp` | Puppet manifest that fixes the typo (`.phpp` instead of `.php`) in WordPress's `wp-settings.php`. |

## Usage

    puppet apply 0-strace_is_your_friend.pp
    curl -sI 127.0.0.1
