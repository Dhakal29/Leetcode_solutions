class Solution(object):
    def convertTemperature(self, celsius):
        c =[1,2]  """"Declaring as a random list"""
        c[0] =celsius + 273.15
        c[1] = celsius * 1.80 + 32.0
        return c
