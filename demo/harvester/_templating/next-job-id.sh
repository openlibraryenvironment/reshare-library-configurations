#!/bin/bash

ls ../*/*PUT* | grep -Eo '[0-9]{3}' | sort
