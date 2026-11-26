#!/usr/bin/env bash
# Test for T1190 (Linux) - needs a lab web server with PHP.
# Place a test page such as <?php system('id'); ?> in the web root, request it once, then delete it.
echo "Deploy and request a lab PHP test page that runs a shell command, then delete it."
