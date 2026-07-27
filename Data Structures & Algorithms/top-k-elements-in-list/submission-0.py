from collections import Counter
class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:

        n = Counter(nums)

        top_k = n.most_common(k)

        return [item[0] for item in top_k]
        
        