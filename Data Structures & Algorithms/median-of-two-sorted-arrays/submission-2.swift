class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var n1 = nums1.count
        var n2 = nums2.count
        var i = 0
        var j = 0
        var total = n1 + n2
        var index2 = total / 2
        var index1 = index2 - 1
        var index1Value = -1
        var index2Value = -1
        var count = 0

        while i < n1 && j < n2 {
            if nums1[i] < nums2[j] {
                if count == index1 {
                    index1Value = nums1[i]
                }
                if count == index2 {
                    index2Value = nums1[i]
                }

                count += 1
                i += 1
            } else {
                if count == index1 {
                    index1Value = nums2[j]
                }
                if count == index2 {
                    index2Value = nums2[j]
                }

                count += 1
                j += 1
            }
        }

        while i < n1 {
            if count == index1 {
                index1Value = nums1[i]
            }
            if count == index2 {
                index2Value = nums1[i]
            }

            count += 1
            i += 1
        }

        while j < n2 {
            if count == index1 {
                index1Value = nums2[j]
            }
            if count == index2 {
                index2Value = nums2[j]
            }

            count += 1
            j += 1
        }

        if total % 2 == 1{
            return Double(index2Value)
        }

        return (Double(index2Value) + Double(index1Value)) / 2.0
    }
}
