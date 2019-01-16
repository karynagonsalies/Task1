import UIKit

class ConferenceRoom {
    var name : String
    var isFree : Bool
    var time : Int = 0
    
    init(name : String, isFree : Bool, time : Int) {
        self.name = name
        self.isFree = isFree
        self.time =  time
    }
    
    init(name : String, isFree : Bool) {
        self.name = name
        self.isFree = isFree
    }
    
    func description() -> String{
        if isFree {
            return "Name: \(name), State: \(isFree)"
        }  else {
            return "Name: \(name), State: \(isFree), Time: \(time)"
        }
    }
}

var room1 = ConferenceRoom(name : "Yellow", isFree : false, time : 60)
var room2 = ConferenceRoom(name : "Blue", isFree : false, time : 30)
var room3 = ConferenceRoom(name : "Red", isFree : true)
var room4 = ConferenceRoom(name : "Green", isFree : true)
var room5 = ConferenceRoom(name : "Black", isFree : false, time : 45)
var room6 = ConferenceRoom(name : "Pink", isFree : false, time : 60)
var room7 = ConferenceRoom(name : "Brown", isFree : true)
var room8 = ConferenceRoom(name : "White", isFree : false, time : 60)
var room9 = ConferenceRoom(name : "Gold", isFree : true)
var room10 = ConferenceRoom(name : "Silver", isFree : false, time : 30)

var roomArray = [room1, room2, room3,room4, room5, room6, room7, room8, room9, room10]

var busy = roomArray.filter { $0.isFree == true }
var free = roomArray.filter { $0.isFree == false }

for i in busy{
    print(i.description())
}

for i in free{
    print(i.description())
}
