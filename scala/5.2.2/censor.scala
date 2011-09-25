object Censor {
    val badwords = Map("Shoot" -> "Plucky", "Darn" -> "Beans")
    def censor(a:List[java.lang.String]) = {
        var f = List[java.lang.String]()
        badwords.foreach(m => {
            val m1 = a.map(word => if (word == m._1) {
                                        m._2
                                    } else {
                                        word
                                    })
            println(m1)
            f = f ++ m1
        })
        f
    }
}

var a = List("Shoot", "jason", "else")
println(Censor.censor(a))
