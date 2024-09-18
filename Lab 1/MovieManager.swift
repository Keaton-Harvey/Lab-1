class MovieManager {
      var allMovies = [
        Movie(title: "Inception", genre: "Sci-Fi", imageURL: "https://i.ebayimg.com/images/g/LTQAAOSw~gxfU1Rd/s-l1200.jpg"),
        Movie(title: "Interstellar", genre: "Action", imageURL: "https://i.etsystatic.com/23402008/r/il/b658b2/2327469308/il_570xN.2327469308_492n.jpg"),
        Movie(title: "The Matrix", genre: "Fiction", imageURL: "https://m.media-amazon.com/images/I/71PfZFFz9yL._AC_UF894,1000_QL80_.jpg"),
        Movie(title: "The Dark Knight", genre: "SuperHero", imageURL: "https://m.media-amazon.com/images/I/818hyvdVfvL._AC_UF894,1000_QL80_.jpg"),
        Movie(title: "Oppenheimer", genre: "History", imageURL: "https://m.media-amazon.com/images/I/719W5aAI5NL._AC_UF894,1000_QL80_.jpg")
    ]
    
    let genres = ["All", "Sci-Fi", "Action", "Fiction", "SuperHero", "History"]


    func getMovies(forGenre genre: String) -> [Movie] {
           if genre == "All" {
               return allMovies
           } else {
               return allMovies.filter { $0.genre == genre }
           }
       }
    
    func getMovie(byID id: Int) -> Movie? {
           guard id >= 0 && id < allMovies.count else { return nil }
           return allMovies[id]
       }
    
    func getGenres() -> [String] {
            return genres
        }
}
