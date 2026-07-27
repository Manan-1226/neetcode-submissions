class Solution:
    def getConcatenation(self, nums: List[int]) -> List[int]:
        nums += nums
        print(nums)
        return nums
        