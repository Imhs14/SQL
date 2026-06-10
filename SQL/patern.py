class Solution:
    def pattern1(self, n):
        i = 0
        for i in range(n):
            print('*'*n)

p1 = Solution()
n = int(input())
print(p1.pattern1(n))