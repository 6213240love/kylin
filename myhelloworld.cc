/* Time-stamp: <[myhelloworld.cc] modified by Guangxu Pan on 2017-02-07 13:59:49 ÐÇÆÚ¶þ> */
#include <iostream>
#include <sstream>
#include <string>
#include <time.h>

using namespace std;

int main(int argc, char* argv[]) {
    time_t t = time(0);
    char tmp[64];
    strftime(tmp, sizeof(tmp), "%Y-%m-%d %X", localtime(&t));
    cout << "[" << tmp << "] hello world!" << endl;
    return 0;
}
