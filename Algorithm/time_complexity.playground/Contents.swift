import Foundation

// Constant Time O(1)
var a = 0

for _ in 1...100 {
  a = 1
}

// Linear Time O(n)
var b = 0
for n in 1...100 {
  b = n
}

// Quadratic Time O(n^2)
var c = 0
for n in 1...100 {
  c = Int(pow(Double(n), 2))
}

// Logarithmic Time O(log n)
var d = 0
for n in 1...100 {
  d = Int(log(Double(n)))
}

// Quasilinear Time O(n log n)
var e = 0
for n in 1...100 {
  e = n * Int(log(Double(n)))
}
