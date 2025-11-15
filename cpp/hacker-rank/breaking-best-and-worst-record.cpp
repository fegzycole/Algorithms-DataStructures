// https://www.hackerrank.com/challenges/breaking-best-and-worst-records

#include <iostream>
#include <vector>

using namespace std;

vector<int> breakingRecords(vector<int> scores) {
    vector<int> records_count {0, 0};
    int low = scores[0];
    int high = scores[0];
    
    for (int curr : scores) {
        if (curr > high) {
            high = curr;
            
            records_count[0] += 1;
        }
        
        if (curr < low) {
            low = curr;
            
            records_count[1] += 1;
        }
    }
    return records_count;
}