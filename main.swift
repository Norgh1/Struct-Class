import Foundation

print("Hello Gitc Lesson!")

//1. Ստեղծել class որը կունենա 1 stored property Int տիպի կունենա 1 computed property String տիպի միայն կարտալու (get) համար որը կվերադաձնի stored property-ի տեքստային տարբերակը ինտերպոլացիայով։

class Car {
    var year: Int = 1999
    var specefication: String {
        get {
            return "This car come from \(year)"
        }
    }
}

let carInstance = Car()
carInstance.year = 200
print(carInstance.year)

//2. Ստեղծել class որը կունենա 1 stored property Int տիպի կունենա 1 computed property String տիպի կարտալու(get) գրելու(set) համար որը կվերադաձնի stored property-ի տեքստային տարբերակը ինտերպոլացիայով, իսկ set-ի դեպքում իր նոր աժեքը կվերածի Int -ի և կփոխի  stored property-ի արժեքը իսկ եթե չի հաջողվի String -ը դարձնել Int ապա stored property -ի արժեքը թողնել անփոփոխ։


class CarModel{
    var carYear: Int = 1995
    var carModel: String {
        get {
            return "Car come from \(carYear)"
        } set {
            return carYear = Int(newValue)!
        }
    }
}

let instanceOfCar = CarModel()

instanceOfCar.carYear = 2000
print(instanceOfCar.carYear)
print(instanceOfCar.carModel)

//3. Ստեղծել struct որը կունենա 1 stored property String տիպի կունենա 1 computed property Int? տիպի կարտալու(get) գրելու(set) համար որը կվերադաձնի stored property-ի թվային տարբերակը իսկ եթե չի հաջողվի ապա nill, իսկ set-ի դեպքում իր նոր աժեքը կվերածի String -ի և կփոխի  stored property-ի արժեքը:

struct Keyboard {
    var model: String = ""
    var price: Int? {
        get {
            return Int(model) ?? nil
        }
        set {
            if let new = newValue {
                return model = String(new)
            }
        }
    }
}


var a = Keyboard(model: "Geniuse")

a.model = "Model"
print(a.model)

//4. Ստեղծել struct որը կունենա 2 stored property Int տիպի կունենա 4 computed property Double տիպի միայն կարտալու (get) համար որոնք համապատասխանաբար կվերադաձնեն 2 stored property -ի գումարը, տարբերությունը, ատադրյալը և քանորդը։
//

struct Distance {
    let personName:String = "Anahit"
    var start: Int
    var end: Int
    
    var sum : Double {
        get {
            print("\(personName) distance will be")
            return Double(start + end)
        }
    }
    var difference : Double {
        get {
            print("\(personName) distance will be")
            return Double(start - end)
        }
    }
    var accused : Double {
        get {
            print("\(personName) distance will be")
            return Double(start * end)
        }
    }
    var factor : Double {
        get {
            print("\(personName) distance will be")
            return Double(start / end)
        }
    }
}
let anahitDistance = Distance(start: 10, end: 45)
print(anahitDistance.accused)

//5. Ստեղծել struct որը կունենա 1 stored property [Int] տիպի կունենա 1 computed property String տիպի միայն կարտալու (get) համար որոնք կվերադաձնի stored property-ում գտվող արժեքների տեքստային ներկայացումը (միմիանցից բաժանել ստորակետերով)


let massive = [1,2,3,4,5,6,7]

struct MyStruct {
    var storedProperty: [Int]
    var computedProperty: String {
        get {
            var myString:String = String()
            let storaket:Character = ","
            
            for item in storedProperty {
                myString += String(item)
                myString.append(storaket)
            }
            return myString
        }
    }
}


var a1 = MyStruct(storedProperty: massive)
print(a1.computedProperty)

//6. Ստեղծել struct որը կունենա 1 stored property [Int] տիպի կունենա 1 computed property Double տիպի միայն կարտալու (get) համար որոնք կվերադաձնի stored property-ում գտվող արժեքների միջին թվաբանականը։


let massive1:[Int] = [4,7,9,3,7]

struct Struct {
    var stored: [Int]
    var computed : Double {
        get {
            var doubleReturn:Double = 0
            for number in 0..<stored.count {
                doubleReturn += Double(number)
            }
            return doubleReturn / Double(stored.count)
        }
    }
}

let instance = Struct(stored: massive1)

print(instance.stored)
print(instance.computed)

//7. Ստեղծել struct որը կունենա 1 stored property [String: Int] տիպի կունենա 1 computed property [String],  1 computed property [Int] տիպի միայն կարտալու (get) համար որոնք կվերադաձնեն համապատասխանաբար stored property -ի key-երը value-երը։

let dictionary: [String : Int] = ["Hello":1,"GITC":2]

struct MyStruct1 {
    var stored: [String : Int]
    
    var computed: [String] {
        get {
            var returnStringValue:[String] = [""]
            for (key, _ ) in stored {
                returnStringValue.append(key)
            }
            return returnStringValue
        }
    }
    var computedTwo: [Int] {
        get {
            var returnIntValue:[Int] = [0]
            for ( _, value) in stored {
                returnIntValue.append(value)
            }
            return returnIntValue
        }
    }
}

let myInstance = MyStruct1(stored: dictionary)
print(myInstance.computed)
