nomainwin
'Form created with the help of Freeform 3 v07-15-08
'Generated on May 30, 2013 at 11:53:08

paste$(0)="-no text-"
paste$(1)="-no text-"
paste$(2)="-no text-"
i=0
[main]

    '-----Begin code for #main

    WindowWidth = 550
    WindowHeight = 410
    UpperLeftX=int((DisplayWidth-WindowWidth)/2)
    UpperLeftY=int((DisplayHeight-WindowHeight)/2)


    '-----Begin GUI objects code

texteditor #main.hide,-400,-400,0,0
    TextboxColor$ = "white"
 '   textbox #main.text,  15,  32, 420,  25
    button #main.button2,"Paste", [paste], UL, 455,  32,  60,  20
    statictext #main.statictext3, "Pasted :",  95, 112,  40,  20
    statictext #main.paste1,paste$(0),  95, 132,  700,  30
    button #main.button5,"Copy",[copy1], UL,  15, 132,  60,  20
    button #main.button6,"Copy",[copy2], UL,  15, 172,  60,  20
        button #main.button6,"Copy",[copy3], UL,  15, 212,  60,  20
    statictext #main.paste2, paste$(1),  95, 172,  700,  30
        statictext #main.paste3, paste$(2),  95, 212,  700,  30
        button #main.exit,"Exit",[exit],UL,455,252,60,20

    open "untitled" for window as #main
    print #main, "font calibri 10"
wait


[paste]
'print #main.text, "!contents? text$"

print #main.hide, "!paste";
print #main.hide, "!selectall"
print #main.hide, "!contents? p$"
if i=0 then
i=i+1
paste$(0)=p$
print #main.paste1, paste$(0)

close #main
goto [main]

end if
if i=1 then
i=i+1
paste$(1)=p$
print #main.paste2, paste$(1)

close #main
goto [main]

end if
if i=2 then
i=i+1
paste$(2)=p$
print #main.paste3, paste$(2)
i=0

close #main
goto [main]

end if

wait


[copy1]
print #main.hide, "!cls"
print #main.hide, paste$(0)
print #main.hide, "!selectall"
print #main.hide, "!copy"
close #main
goto [main]


[copy2]
print #main.hide, "!cls"
print #main.hide, paste$(1)
print #main.hide, "!selectall"
print #main.hide, "!copy"
close #main
goto [main]



[copy3]
print #main.hide, "!cls"
print #main.hide, paste$(2)
print #main.hide, "!selectall"
print #main.hide, "!copy"
close #main
goto [main]

[exit]
close #main
