// https://www.hackerrank.com/challenges/time-conversion
#include <iostream>
#include <string>
#include <sstream>

using namespace std;

string timeConversion(string s) {
    string hour = s.substr(0, 2);
    string mins = s.substr(3, 2);
    string secs = s.substr(6, 2);
    string period = s.substr(8, 2);

    int h = stoi(hour);

    if (period == "AM" && h == 12) hour = "00";
    if (period == "PM" && h != 12) hour = to_string(h + 12);

    ostringstream oss;

    oss << hour << ":" << mins << ":" << secs;

    return oss.str();
}