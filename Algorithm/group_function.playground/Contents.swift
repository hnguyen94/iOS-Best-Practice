import Cocoa

struct Person {
    let firstName: String
    let lastName: String
    let age: Int
}

let people = [
    Person(firstName: "Katze", lastName: "Hund", age: 4),
    Person(firstName: "Hund", lastName: "Hund", age: 12),
    Person(firstName: "Quark", lastName: "Hund", age: 14),
    Person(firstName: "Melone", lastName: "Hund", age: 12),
    Person(firstName: "Melou", lastName: "Hund", age: 14),
    Person(firstName: "Meiyu", lastName: "Hund", age: 4),
    Person(firstName: "Meme", lastName: "Hund", age: 5),
    Person(firstName: "Lala", lastName: "Hund", age: 10),
    Person(firstName: "Foo", lastName: "Hund", age: 12),
    Person(firstName: "Bar", lastName: "Hund", age: 52),
    Person(firstName: "Hallo", lastName: "Hund", age: 12),
    Person(firstName: "Stift", lastName: "Hund", age: 41),
    Person(firstName: "Ohoh", lastName: "Hund", age: 6),
    Person(firstName: "Brabra", lastName: "Hund", age: 11),
    Person(firstName: "Blulu", lastName: "Hund", age: 42),
    Person(firstName: "Boo", lastName: "Hund", age: 122),
]


// Goruping by first name character
let groupedByFirstName = Dictionary(grouping: people) { (person) -> Character in
    return person.firstName.first!
}

let sortedKeys = groupedByFirstName.keys.sorted()
let groupedList = sortedKeys.map { (key) in
    return groupedByFirstName[key]!
}

//groupedList.forEach({
//    $0.forEach({print($0)})
//    print("-----------------------------------------------")
//})


print(groupedList[0])



