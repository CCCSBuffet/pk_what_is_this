#include <stdio.h>

using namespace std;

// This plays the role of the Foo default constructor.
extern "C" void * FooConstructor(const char * _s = nullptr);

/*	This plays the role of the non-static method GetString() which returns
	the string initialized in the constructor  (either the string supplied
	in the constructor or "undefined").

	While GetString() does NOT take a parameter explicitly, C++ passes the
	"this pointer" as a hidden first  parameter.  Here we pass this param-
	eter explicitly in a demonstration of  how the  "this pointer" is imp-
	lemented.
*/

extern "C" const char * FooGetString(const void *);

int main() {
	void * a = FooConstructor();
	void * b = FooConstructor("Spaghetti");

	printf("a(%s)\n", FooGetString(a));
	printf("b(%s)\n", FooGetString(b));
	return 0;
}