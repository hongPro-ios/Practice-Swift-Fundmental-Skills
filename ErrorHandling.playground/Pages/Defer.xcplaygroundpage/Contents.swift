import Foundation

func processFile(path: String) {
    print("1")
    let file = FileHandle(forReadingAtPath: path)
    
    // Process
    
    defer {
        print("2")
        file?.closeFile()
    }
    
    if path.hasSuffix(".jpg") {
        print("3")
        return
    }
    
    defer {
        print("5")
    }
    
    print("4")
}


processFile(path: "file.a")


print(String(-20))
