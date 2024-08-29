#!/bin/bash
if echo "$1" | egrep -q '^[0-9]+$';then
echo "valid designation code"
else
echo "invalid"
exit 1
fi
if echo "$2" | egrep -q '^[a-zA-Z]+$';then
echo "valid designation description"
else
echo "invalid"
exit 1
fi
echo "$1 $2">>design.lst
echo "data added"
cat design.lst
