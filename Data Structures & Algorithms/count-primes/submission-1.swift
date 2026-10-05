class Solution {
    func countPrimes(_ n: Int) -> Int {
        if n <= 2 { return 0 }
    
    var isPrime = Array(repeating: true, count: n)
    var count = 0
    
    for i in 2..<n {
        if isPrime[i] {
            count += 1
            
            if i * i < n {
                for j in stride(from: i * i, to: n, by: i) {
                    isPrime[j] = false
                }
            }
        }
    }
    
    return count
    }
}
