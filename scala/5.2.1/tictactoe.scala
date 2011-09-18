// read in the args, a simple list of
// 9 chars


class Board(layout: String) {
    
    val board = layout.toLowerCase().toCharArray()
    if(board.length != 9)
        throw new IllegalArgumentException("must be exactly 9 chars")
    board.foreach { c =>
        if( c != 'x' && c != 'o' && c != ' ')
            throw new IllegalArgumentException("each char must be x,o, ")
    }

    def checkColumn(col: Int): Char {
       if ( board(0+(col*3)) == board(1+(col*3)) &&
            board(1+(col*3)) == board(2+(col*3)) )
            board(0+(col*3))
        else
            ' ' 
    }
    def winner() {
        println("none.")
    }
}

val b = new Board(args(0))
