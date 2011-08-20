Builder := Object clone
Builder indent := 0

Builder forward := method(
    for(i, 0,indent-1, write(" "))
    writeln("<", call message name, ">")
    self indent := indent+1
    call message arguments foreach(
        arg,
        content := self doMessage(arg);
        if(content type == "Sequence",
            for(i,0,indent-1, write(" ")); writeln(content)))
    self indent := indent-1
    for(i, 0,indent-1, write(" "))
    writeln("</", call message name, ">"))

Builder ul(
            li("Io"),
            li("Java"),
            li("JavaScript"))
