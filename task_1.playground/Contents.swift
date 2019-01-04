import UIKit

enum StateRoom: String {
    case Free
    case Busy
}

class ConferenceRoom {
    
    var name : String
    var state : StateRoom
    var time : Int
    
    init(name : String, state : StateRoom, time : Int) {
        self.name = name
        self.state = state
        self.time =  time
    }
    
    func description() -> String{
        if state == StateRoom.Busy {
            return "Name: \(name), stan: \(state), time: \(time)"
        }  else  {
            return "Name: \(name), state: \(state)"
        }
    }
}

var room1 = ConferenceRoom(name : "Yellow", state : StateRoom.Busy, time : 60)
var room2 = ConferenceRoom(name : "Blue", state : StateRoom.Busy, time : 30)
var room3 = ConferenceRoom(name : "Red", state : StateRoom.Free, time : 0)
var room4 = ConferenceRoom(name : "Green", state : StateRoom.Free, time : 0)
var room5 = ConferenceRoom(name : "Black", state : StateRoom.Busy, time : 45)
var room6 = ConferenceRoom(name : "Pink", state : StateRoom.Busy, time : 60)
var room7 = ConferenceRoom(name : "Brown", state : StateRoom.Free, time : 0)
var room8 = ConferenceRoom(name : "White", state : StateRoom.Busy, time : 60)
var room9 = ConferenceRoom(name : "Gold", state : StateRoom.Free, time : 0)
var room10 = ConferenceRoom(name : "Silver", state : StateRoom.Busy, time : 30)

var roomArray = [room1, room2, room3,room4, room5, room6, room7, room8, room9, room10]

var busy = roomArray.filter { $0.state == StateRoom.Busy }
var free = roomArray.filter { $0.state == StateRoom.Free }

for i in busy{
    print(i.description())
}

for i in free{
    print(i.description())
}

