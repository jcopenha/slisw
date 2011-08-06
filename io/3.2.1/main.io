1 + 1 println

# doesn't run, so Io is a strong typed langauge
# it doesn't coerce "one" into a numeric type
#1 + "one"

(true and 0) println # 0 is true
(true and "") println # "" is true
(true and nil) println # nil is false

# use slotNames to see what slots a prototype has
# in this case call it on the Object prototype
slotNames println

Mine := clone

# use := to create a slot and assign it a value
Mine desc := "some text"
(Mine desc) println

# use = to assign a value to an existing slot
Mine desc = "new text"
(Mine desc) println

# ::= is newSlot, creates the slot, and the setter, and assigns value
Mine otherdesc ::= "even more text"
(Mine slotNames) println

Mine runMe := method("running" println)
methodToRun := (Mine getSlot("runMe"))
methodToRun # let's run the method we found
