class Solution {
    func checkSubarraySum(_ nums: [Int], _ k: Int) -> Bool {
       var hashMap: [Int:Int] = [0:-1]
       var sum = 0

        for i in 0..<nums.count {
            sum += nums[i]
            var remainder = sum % k
            if remainder < 0 {
                remainder += k
            }
            if let index = hashMap[remainder] {
                if i - index >= 2 {
                    return true
                }
            } else {
                hashMap[remainder] = i
            }
        }

        return false
    }

    
}
