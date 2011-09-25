val a = List("one", "two", "three", "four")
val n = a.foldLeft(0)((sum, word) => sum + word.size)
println(n)
