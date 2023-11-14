#!/bin/bash

# Unit test: call the isNumber class, this class is part of the backend code

unit_test() {
    local result=$(java isNumber "$1")
    if [[ $result == "true" ]]; then
        echo "Unit test successful"
        return 0
    else
        echo "Unit test failed"
        return 1
    fi
}

# Call the unit test function with the value "12"
unit_test "12"
