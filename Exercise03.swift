var phoneBook = [
    "Amal": "0771111111",
    "Nimali": "0772222222",
    "Ruwan": "0773333333",
    "Sanduni": "0774444444"
]

phoneBook["Kasun"] = "0775555555"
phoneBook["Amal"] = "0711234567"
phoneBook["Ruwan"] = nil

if let phone = phoneBook["Nimali"] {
    print("Nimali's phone number is \(phone)")
} else {
    print("Contact not found")
}

if let phone = phoneBook["Dasun"] {
    print("Dasun's phone number is \(phone)")
} else {
    print("Contact not found")
}
