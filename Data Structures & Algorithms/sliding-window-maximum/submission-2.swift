class Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        var answerArray = [Int]()
        var left = 0
        var right = 0
        var maxIds = -1


        while right < nums.count {
            let number = nums[right]
            if maxIds == -1 || number > nums[maxIds] {
                maxIds = right
            }

            let length = right - left + 1
            if length == k {
                if maxIds < left {
                    maxIds = left
                    for i in left...right {
                        if nums[i] >= nums[maxIds] {
                            maxIds = i
                        }
                    }
                }
                answerArray.append(nums[maxIds])
                left += 1
            }

            right += 1
        }

        return answerArray
    }
}
