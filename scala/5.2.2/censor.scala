object Censor {
    val badwords = Map("Shoot" -> "Plucky", "Darn" -> "Beans")
    def censor(a:List[java.lang.String]) = {
        val m = List()
        badwords.foreach(m => {
            val m1 = a.map(word => word == m._1 ? m._2 : word)
            m = m + m1
        })
    }
}

var a = List("Plucky", "jason", "else")
println(Censor.censor(a))
