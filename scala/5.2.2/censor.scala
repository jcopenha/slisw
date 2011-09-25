object Censor {
    val badwords = Map("Shoot" -> "Plucky", "Darn" -> "Beans")
    def censor(a:List[java.lang.String]) = {
        a.map(word => if (badwords.contains(word)) {
                        badwords(word)
                      } else {
                        word
                      })
    }
}

var a = List("Shoot", "jason", "another", "Darn", "else")
println(Censor.censor(a))
