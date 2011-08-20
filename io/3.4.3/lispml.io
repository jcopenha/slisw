# lispML

OperatorTable addAssignOperator(":", "atPutAttribute")

Builder := Object clone
Builder indent := 0
Builder indentWriteln := method(
    for(i,0,self indent-1, write(" "))
    writeln(call evalArgs join))

Map atPutAttribute := method(
    self atPut(
        call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
        call evalArgAt(1))
    )

Builder curlyBrackets := method(
    r := Map clone
    call message arguments foreach(arg,
        r doString(arg asString)
        )
    r
    )


Builder forward := method(
    attributes := nil
    args := call message arguments
    if(args size > 1 and args at(0) name == "curlyBrackets",
        attributes := self doMessage(args at(0))
        args removeAt(0))
    attrString := ""
    if(attributes != nil, 
        attributes keys foreach(key,
            attrString := attrString with(" ", key, "= \"", attributes at(key), "\"")))
    indentWriteln("<", call message name, attrString, ">")
    self indent := indent+1
    args foreach(
        arg,
        if(arg name == "curlyBrackets", continue)
        content := self doMessage(arg);
        if(content type == "Sequence",indentWriteln(content)))
    self indent := indent-1
    indentWriteln("</", call message name, ">"))

# want book({"author":"Tate"}... to be <book arther="Tate">
Builder ul( 
            {"author":"tate","another":"jason"},
            li("Io", {should be ignored}),
            li("Java"),
            li("JavaScript"))
