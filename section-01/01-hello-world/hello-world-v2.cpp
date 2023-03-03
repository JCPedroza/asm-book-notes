#include <iostream>

using namespace std;

int main(int argc, char * argv[]) {
    // While loops in asm are implemented using labels and goto statements
    top:
        if (*argv) {
            cout << *(argv++) << endl;
            goto top; // Jump to label
            // Using goto can be an anti-pattern
        }

    return 0;
}
