# lispML

Builder := Object clone
Builder indent := 0
Builder indentWriteln := method(
    for(i,0,self indent-1, write(" "))
    writeln(call evalArgs join))
    

Builder forward := method(
    indentWriteln("<", call message name, ">")
    self indent := indent+1
    args := call message arguments
    args foreach(
        i,
        arg,
        if(arg name == "curlyBrackets",
            # continue isn't needed but it makes it easier
            # to see that the line after continue is the 
            # name != "curlyBrackets" case
            if(i == 0, "yeah" println, continue),
            content := self doMessage(arg);
            if(content type == "Sequence",indentWriteln(content))))
    self indent := indent-1
    indentWriteln("</", call message name, ">"))

# want book({"author":"Tate"}... to be <book arther="Tate">
Builder ul( {test},
            li("Io", {asdf}),
            li("Java"),
            li("JavaScript"))
