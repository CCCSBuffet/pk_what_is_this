# What Is "this"

This demonstration aims to explain the role and implementation of the
"*this pointer*."

When a method belonging to a class instance is called, the method
operates upon the data members of exactly that instance. How does it
know which instance to operate upon?

The C++ compiler performs many slights of hand including the
implementation of a hidden parameter to all non-static class methods.
The hidden parameter is the *this pointer*.
