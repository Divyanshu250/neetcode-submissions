class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result = [Int]()

        for i in 0..<nums1.count {
            if nums2.contains(nums1[i]) {
                if !result.contains(nums1[i]) {
                    result.append(nums1[i])
                }
            }
        }

        return result
    }
}
