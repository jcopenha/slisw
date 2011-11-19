class Person(fn: String) {
    def this(fn: String, ln: String) {
        // really weird to me that outer is called
        // before this inner one..
        this(fn)
        println("inner constructor")
    }
    println("Outer constructor")
}

val bob = new Person("Jason")
val bob2 = new Person("Jason", "Copenhaver")
