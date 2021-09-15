import UIKit

var arrayOfNames = ["Helga", "Bazil", "Alex"]
print(arrayOfNames.count)
let nextName = { arrayOfNames.remove(at: 0) }
arrayOfNames.count
nextName()
arrayOfNames.count

//............ lazy property ..............

var myCollection = [1, 2, 3, 4, 5, 6]
var myLazyCollection = myCollection.lazy
type(of: myLazyCollection)
var collection = myLazyCollection.map{$0 + 1}
type(of: collection)
var resultCollection = [1, 2, 3, 4, 5, 6].lazy.map{$0 + 1}.filter{$0 % 2 == 0}
Array(resultCollection)
resultCollection
