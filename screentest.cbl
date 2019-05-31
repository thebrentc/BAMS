identification division.
program-id. helloscreen.
procedure division.
display "Hello, world" at 0212
#CALL "C$SLEEP" USING 5 END-CALL
goback.
end program helloscreen.
