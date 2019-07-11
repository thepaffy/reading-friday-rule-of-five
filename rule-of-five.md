# The rule of five/zero
## Rule of five
If a class requires:

- a user-defined destructor
- a user-defined copy constructor
- a user-defined move constructor
- a user-defined copy assignment operator
- a user-defined move assignment operator

it almost certainly requires all three. 

## Signatures of the rule of five
The rule of five operations have the following declarations:
```cpp
class Foo
{
 public:
    Foo(const Foo &);
    Foo(Foo &&);
    Foo &operator=(const Foo &);
    Foo &operator=(Foo &&);
    virtual ~Foo();
};
```

## Rule of zero
- If you can avoid defining default operations, do.
- If you define or =delete any default operation, define or =delete them all.
