function aip
apt list --verbose 2>/dev/null | tail --lines +2 | sed '\n {2}([^ ])' '^$1' | column -t -s^ | cut --delimiter '/' --fields 1 | xargs --max-args 1 --no-run-if-empty printf "%q "
end
