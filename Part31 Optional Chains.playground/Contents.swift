import UIKit

struct Room {
    let square: Int
}

class Residence {
    var rooms: [Room]?
    func roomCount() -> Int {
        if let rooms = self.rooms {
            return rooms.count
        }
        return 0
    }
}

class Person {
    var residence: Residence?
}

var man = Person()
let room = Room(square: 10)
var residence = Residence()
residence.rooms = [room]
man.residence = residence
if let rooms = man.residence?.rooms {
    for oneRoom in rooms {
        print("There's a room with square \(oneRoom.square)")
    }
} else {
    print("No residence or rooms")
}

let room1 = Room(square: 20)
let room2 = Room(square: 29)
man.residence?.rooms = [room1, room2, room]
man.residence?.roomCount()
