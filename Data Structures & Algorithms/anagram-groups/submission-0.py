class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        
        hash_map = {}

        for word in strs:
            key = ''.join(sorted(word))
            if key not in hash_map:
                hash_map[str(key)] = [word]
            else:
                hash_map[str(key)].append(word)
            
        return [ item for item in hash_map.values()]