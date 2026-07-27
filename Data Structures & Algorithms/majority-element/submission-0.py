from collections import Counter
from math import floor
class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        n = Counter(nums)

        res  = [ key for key, value in n.items() if value > floor(len(nums)/2)]

        return res[0]
        