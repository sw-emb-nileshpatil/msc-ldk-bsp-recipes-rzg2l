#!/bin/sh

DHRYSTONE_LOOPS=100000000
printf "Dhrystone loop count is %d \n" ${DHRYSTONE_LOOPS}

for idx in {1..4}
do
	printf "=== Starting instance %s ========== \n" ${idx}
	(
	dhry <<-EOF
		${DHRYSTONE_LOOPS}

	EOF
	) &>/dev/null &
done

wait

printf "=== finished ========== \n"