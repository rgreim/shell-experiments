#!/bin/bash

if [ $# -ne 3 ]
then
        echo "All Params are required!"
        echo " Usage: $0 PARAM1 PARAM2 PARAM3"
        exit 1
fi

echo_params()
{
        let count=1
        for param in $*
        do
                echo '$'$count ':' $param
                count=$((count + 1))
        done
}

inner_function()
{
        echo "inner function"
        echo_params $*
        echo
}

outer_function()
{
        echo "outer function"
        echo_params $*
        echo
        inner_function $3 $1
}

echo "script"
echo_params $*
echo

outer_function $3 $2 $1
