# lispML

Builder := Object clone
Builder indent := 0
Builder indentWriteln := method(
    for(i,0,self indent-1, write(" "))
    writeln(call evalArgs join))
    

Builder forward := method(
    indentWriteln("<", call message name, ">")
    self indent := indent+1
    call message arguments foreach(
        arg,
        content := self doMessage(arg);
        if(content type == "Sequence",indentWriteln(content)))
    self indent := indent-1
    indentWriteln("</", call message name, ">"))

# want book({"author":"Tate"}... to be <book arther="Tate">
Builder ul(
            li("Io"),
            li("Java"),
            li("JavaScript"))
