#include <iostream>

using namespace std;

int main(int argc, char * argv[]) { // Alternative: char ** argv
    // Iterate until argv is a null pointer
    // We can treat argv as a pointer because array arguments are demoted to 
    // pointers.
    while (*argv) {
        cout << *(argv++) << endl;
    }

    /* Alternative:
    for (int index = 0; index < argc; index++) {
        cout << argv[index] << endl;
    }
    */

    return 0;
}
