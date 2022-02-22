
print(firstFunc(st:"Hellolious", num: 10))


func firstFunc(st: String, num: Int) -> String {
  return "\(st)-\(num)"
}

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
  var min=scores[0]
  var max=scores[0]
  var sum=0
  for score in scores {
    if score>max {max=score}
    else if score<min {min=score}
    sum+=score
  }
  return (min, max, sum)
}

let stats = calculateStatistics(scores: [100, 36, -87, 4*12, 67, -1000])
print("min:\(stats.min), max:\(stats.1), sum:\(stats.sum)");

func makeIncrementer() -> ((Int) -> Int) {
  func addOne(number: Int) -> Int {
    return number + 1
  }
  return addOne
}
var increment = makeIncrementer()
increment(7)

func hasAnyMatches(list: [Int], condition: (Int)-> Bool ) -> Bool {
  for item in list {
    if condition (item) {
      return true
    }
  }
  return false
}
func lessThan10 (item: Int) -> Bool {
  return item < 10
}
var numbers = [10,15,181, 31, 54, 9]
print (numbers)
print (hasAnyMatches(list: numbers, condition: lessThan10))

numbers.map({(number: Int) -> Int in 
  if (number % 2)==1 { 
    return 0 
  }
  else {
    return number * 3 
  }
})

let mappedNumbers=numbers.map({number in 3*number})
print (mappedNumbers)