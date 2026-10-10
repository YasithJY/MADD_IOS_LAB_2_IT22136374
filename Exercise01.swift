var modules = ["SE4050", "SE4060", "SE4070", "SE4041", "SE4080"]
print(modules)
print("First module: \(modules[0])")
print("Last module: \(modules[modules.count - 1])")

modules.append("SE4090")
print("Number of modules: \(modules.count)")
print("Contains SE4041? \(modules.contains("SE4041"))")
