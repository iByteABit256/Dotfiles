#!/bin/bash

brightness=$(xbacklight -get)
printf "🔆 $brightness%%"

