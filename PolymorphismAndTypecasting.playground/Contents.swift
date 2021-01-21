import UIKit

class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class StudioAlbum: Album {
    var studio: String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
}


var apple = StudioAlbum(name: "Apple", studio: "Pie")
var banana = StudioAlbum(name: "Banana", studio: "ship")
var pear = LiveAlbum(name: "Pear", location: "taiwan")
var allAlbums: [Album] = [apple, banana, pear]


class AlbumGod {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
        return "The album is \(name)"
    }
}

class StudioAlbumGod: AlbumGod {
    var studio: String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The studio album is \(name)"
    }
}

class LiveAlbumGod: AlbumGod {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The live album is \(name)"
    }
}


var appleGod = StudioAlbumGod(name: "Apple", studio: "Pie")
var bananaGod = StudioAlbumGod(name: "Banana", studio: "ship")
var pearGod = LiveAlbumGod(name: "Pear", location: "taiwan")
var allAlbumGods: [AlbumGod] = [appleGod, bananaGod, pearGod]

for albumGod in allAlbumGods {
    print(albumGod.getPerformance())
}
