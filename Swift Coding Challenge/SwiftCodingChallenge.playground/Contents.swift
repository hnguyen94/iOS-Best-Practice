import Foundation

// MARK: - Challenge 1

/// Complexity: `O(1)`
func hasDuplicate(input: String) -> Bool {
    return Set(input).count == input.count
}

assert(hasDuplicate(input: "No duplicates") == true, "Challenge 1 failed")
assert(hasDuplicate(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(hasDuplicate(input: "AaBbCc") == true, "Challenge 1 failed")
assert(hasDuplicate(input: "Hello, world") == false, "Challenge 1 failed")

// MARK: - Challenge 2
// forwards == backwards

func challenge2(input: String) -> Bool {
    let lowercased = input.lowercased()
    return String(lowercased.reversed()) == lowercased
}

assert(challenge2(input: "rotator") == true, "Challenge 2 failed")
assert(challenge2(input: "Rats live on no evil star") == true, "Challenge 2 failed")
assert(challenge2(input: "Hello World") == false, "Challenge 2 failed")


// MARK: - Challenge 3
// Do two string ontain the same characters?

func isContainingSameCharacters(firstInput: String, secondInput: String) -> Bool {
    return firstInput.sorted() == secondInput.sorted()
}

assert(isContainingSameCharacters(firstInput: "abc", secondInput: "bca") == true, "Challenge 3 failed")

// MARK: - Challenge 4
// Write Does one string contain another

extension String {
    func fuzzyContains(_ string: String) -> Bool {
        let result = self.range(of: string, options: .caseInsensitive)

        return result != nil
    }
}

assert("Hello, world".fuzzyContains("hello") == true, "Challenge 4 failed")
assert("Hello, world".fuzzyContains("Goodbye") == false, "Challenge 4 failed")

// MARK: - Challenge 5
// Count the characters without a for in loop
// Complexity: *O(n)*

func challenge5a(input: String, count: Character) -> Int {
    var counter = 0

    for letter in input {
        if letter == count {
            counter += 1
        }
    }

    return counter
}

assert(challenge5a(input: "aa", count: "a") == 2, "Challenge 4 failed")

func challenge5b(input: String, count: Character) -> Int {
   return input.reduce(0) {
        $1 == count ? $0 + 1 : $0
    }

}

assert(challenge5b(input: "aa", count: "a") == 2, "Challenge 4 failed")

// MARK: - Challenge 6
// remove duplicate letters from a string

// Is readable and straight forward
func challenge6b(input: String) -> String {
    var usedCharacters = [Character]()

    for letter in input {
        if !usedCharacters.contains(letter) {
            usedCharacters.append(letter)
        }
    }

    return String(usedCharacters)
}

assert(challenge6b(input: "wombat") == "wombat", "Challenge 4 failed")
assert(challenge6b(input: "hello") == "helo", "Challenge 6 failed")

/// Is readable when you know what updateValue does.
func challenge6c(input: String) -> String {
    var usedCharacters = [Character: Bool]()

    let result = input.filter {
        // You can change the value attached to a key just by
        // assignit it again, but you can also call the updateValue()
        // method - it does the same thing, but also returns either the
        // original value or nil if there wasn't one. So if you call
        // updateVALue() and get back nil it means "that wasn't already
        // in the dictionary, but it is now"
        usedCharacters.updateValue(true, forKey: $0) == nil
    }

    return String(result)
}

assert(challenge6c(input: "wombat") == "wombat", "Challenge 4 failed")
assert(challenge6c(input: "hello") == "helo", "Challenge 6 failed")

// MARK: - Challenge 7
// Condense whitespace

func challenge7b(input: String) -> String {
    return input.replacingOccurrences(of: " +",
                                      with: " ",
                                      options: .regularExpression,
                                      range: nil)
}

a
