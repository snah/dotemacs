
TESTSCRIPT="$1"

RESULT="$(emacs -batch -l ert -l "$TESTSCRIPT" -f ert-run-tests-batch-and-exit 2>&1)"


echo "$RESULT" | grep -v "Mark set"
