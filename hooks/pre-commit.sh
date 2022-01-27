#!/bin/sh
#
# An example hook script to verify what is about to be committed.
# Called by "git commit" with no arguments.  The hook should
# exit with non-zero status after issuing an appropriate message if
# it wants to stop the commit.
#
# To enable this hook, rename this file to "pre-commit".
git clone https://github.com/awslabs/git-secrets.git && cd git-secrets && make install
git secrets --install && git secrets --register-aws && git secrets --scan