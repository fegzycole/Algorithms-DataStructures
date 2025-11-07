// https://www.hackerrank.com/challenges/birthday-cake-candles

#include <iostream>
#include <vector>

using namespace std;

int birthdayCakeCandles(vector<int> candles) {
    int max = 0;
    int max_count = 0;
    
    for (int num : candles) {
        if (num == max) {
            ++max_count;
        }
        
        if (num > max) {
            max = num;
            max_count = 1;
        }
    }

    return max_count;
}
