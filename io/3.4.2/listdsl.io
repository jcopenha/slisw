# I want mylist := ["some", "test", "here"]

squareBrackets := method (
    r := List clone
    call message arguments foreach(arg,
        r append(arg)
        )
    r
    )
    
test := ["this","is","a","test"]
test println

