target remote :2000

mon erase
load

break test_puts
commands
   silent
   printf "%s\n",test_msg
   continue
end

break test_exit
commands
   quit
end

continue
