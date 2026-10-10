var studentMarks: [String: Int] = [
    "Amal": 72,
    "Nimali": 45,
    "Ruwan": 68,
    "Sanduni": 90,
    "Kasun": 38
]

var passedStudents: [String] = []
var gradesAwarded: Set<String> = []
var passCount = 0
var failCount = 0

print("STUDENT PERFORMANCE")

for (name, mark) in studentMarks {
    let grade: String
    
    switch mark {
    case 80...100: grade = "A"
    case 75..<80:  grade = "A-"
    case 70..<75:  grade = "B+"
    case 65..<70:  grade = "B"
    case 60..<65:  grade = "B-"
    case 55..<60:  grade = "C+"
    case 45..<55:  grade = "C"
    case 40..<45:  grade = "C-"
    case 0..<40:   grade = "F"
    default:       grade = "Invalid"
    }
    
    print("\(name) - \(mark) - \(grade)")
    
    gradesAwarded.insert(grade)
    
    if mark > 50 {
        passedStudents.append(name)
        passCount += 1
    } else {
        failCount += 1
    }
}

print("\nPassed Students:")
for student in passedStudents {
    print(student)
}

print("\nGrades Awarded:")
print(gradesAwarded)

let total = studentMarks.values.reduce(0, +)
let average = Double(total) / Double(studentMarks.count)
print("\nClass Average: \(average)")

if let highest = studentMarks.values.max(), let lowest = studentMarks.values.min() {
    print("Highest Mark: \(highest)")
    print("Lowest Mark: \(lowest)")
}

// Additional Challenge: Search and Count
let searchName = "Amal"
if let mark = studentMarks[searchName] {
    print("\n\(searchName)'s mark is \(mark)")
} else {
    print("\nStudent not found.")
}

print("Passed: \(passCount)")
print("Failed: \(failCount)")
