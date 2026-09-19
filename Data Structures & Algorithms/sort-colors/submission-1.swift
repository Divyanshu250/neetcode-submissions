class Solution {
    func sortColors(_ nums: inout [Int]) {
        mergeSort(&nums, 0, nums.count - 1)
    }

    func mergeSort(_ nums: inout [Int],_ low: Int,_ high: Int ) {
        if low < high {
            let middle = (low + high) / 2
            mergeSort(&nums, low, middle)
            mergeSort(&nums, middle + 1, high)
            merging(&nums, low, middle, high)
        }
    }

    func merging(_ nums: inout [Int], _ low: Int, _ mid: Int, _ high: Int) {
        var temp = [Int]()
        var left = low
        var right = mid + 1

        while left <= mid && right <= high {
            if nums[left] <= nums[right] {
                temp.append(nums[left])
                left += 1
            } else {
                temp.append(nums[right])
                right += 1
            }
        }

        while left <= mid {
            temp.append(nums[left])
            left += 1
        }

        while right <= high {
            temp.append(nums[right])
            right += 1
        }

        for i in 0..<temp.count {
            nums[low + i] = temp[i]
        }
    }
}
