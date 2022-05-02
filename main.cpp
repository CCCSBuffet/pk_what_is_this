#include <stdio.h>

using namespace std;

class Foo {
public:
	Foo(const char * _s = nullptr);
	const char * GetString();
private:
	const char * s;
	static const char * undefined_string;
};

const char * Foo::undefined_string = (const char *) "undefined";

Foo::Foo(const char * _s) {
	s = (_s) ? _s : undefined_string;
}

const char * Foo::GetString() {
	return s;
}

int main() {
	Foo a;
	Foo b("Spaghetti");

	printf("a(%s)\n", a.GetString());
	printf("b(%s)\n", b.GetString());
	return 0;
}