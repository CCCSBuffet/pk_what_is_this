#include <stdio.h>

using namespace std;

extern "C" void * FooConstructor(const char * _s);
extern "C" const char * FooGetString(const void *);

int main() {
	void * a = FooConstructor(nullptr);
	void * b = FooConstructor("Spaghetti");

	printf("a(%s)\n", FooGetString(a));
	printf("b(%s)\n", FooGetString(b));
	return 0;
}