class MyHashMap {

    var hashMap = [Int:Int]()

    init() {

    }

    func put(_ key: Int, _ value: Int) {
        hashMap[key, default: 0] = value
    }

    func get(_ key: Int) -> Int {
        if let value = hashMap[key] {
            return value
        }
        return -1
    }

    func remove(_ key: Int) {
        if let value = hashMap[key] {
            hashMap[key] = nil
        }
    }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * let obj = MyHashMap()
 * obj.put(key, value)
 * let ret_2: Int = obj.get(key)
 * obj.remove(key)
 */
