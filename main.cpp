#include <stdio.h>
#include <cassert>
#include <stdexcept>

using namespace std;

class Foo {
public:
	Foo(const char * _s = nullptr);
	const char * GetString();
	static const char * StaticGetString(const Foo * _this);
private:
	const char * s;
	static const char * undefined_string;
};

const char * Foo::undefined_string = (const char *) "undefined";

const char * Foo::StaticGetString(const Foo * _this) {
	if (!_this)
		throw new invalid_argument(__FUNCTION__);
	return _this->s;
}

Foo::Foo(const char * _s) {
	// This is dangerous programming practice. Why?
	// a) C strings in general are dangerous since they are dependent upon NULL termination.
	// b) what else? 
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