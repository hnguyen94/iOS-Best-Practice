import Foundation

func filterWithPredicateClosure(closure: (Int) -> Bool, numbers: [Int]) -> [Int] {
    var filterNumbers = [Int]()

    for num in numbers {
        if closure(num) {
            filterNumbers.append(num)
        }
    }

    return filterNumbers
}

let filteredList = filterWithPredicateClosure(closure: { number -> Bool in
    return number < 20
}, numbers: [1, 2, 3, 4, 6, 7, 8 ,9 ])
