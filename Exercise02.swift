var mobileDevelopmentStudents: Set = ["Amal", "Nimali", "Ruwan", "Sanduni"]
var gameTechnologyStudents: Set = ["Ruwan", "Sanduni", "Kasun", "Dasun"]

print("All students: \(mobileDevelopmentStudents.union(gameTechnologyStudents))")
print("Taking both modules: \(mobileDevelopmentStudents.intersection(gameTechnologyStudents))")
print("Only Mobile Development: \(mobileDevelopmentStudents.subtracting(gameTechnologyStudents))")
print("Only one of the modules: \(mobileDevelopmentStudents.symmetricDifference(gameTechnologyStudents))")
