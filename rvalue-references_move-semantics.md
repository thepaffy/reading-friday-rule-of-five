# rvalue references
## What is a rvalue?
- A lvalue is a value that could be on the left hand side of an assignment.
Correspondingly, an rvalue is a value that could only be the right hand side.

```cpp
#include <vector>
#include <string>

int main()
{
    std::vector<std::string> v;
    std::string s = "aaa";
    v.push_back(s);     // s is a lvalue
    v.push_back("bbb"); // "bbb" is a rvalue
}
```

## How to declarate a rvalue reference?
A lvalue reference, or simply reference, can be simply declarated by:  
`int &i;`  
So a rvalue reference can be declarated by:  
`int &&i;`

## Pass by rvalue references
- Pass by a std::string as rvalue reference to a function.
```cpp
#include <vector>
#include <string>

// template<typename T>
// void vector::push_back(T &&value);

int main()
{
    std::vector<std::string> v;
    v.push_back("bbb");
}
```

# move semantics
## how to move a object
- std::move is used to indicate that an object s may be "moved from" from s to another object. 
```cpp
#include <vector>
#include <string>
#include <utility>

int main()
{
    std::vector<std::string> v;
    std::string s = "aaa";
    v.push_back(std::move(s));  // The rvalue reference push_back will be called
}
```

## What happend with the moved object?
- A move operation should move and leave its source in a valid state
```cpp
#include <vector>
#include <string>
#include <utility>
#include <iostream>

int main()
{
    std::vector<std::string> v;
    std::string s = "aaa";
    v.push_back(std::move(s));
    std::cout << s << "\n";
}
```
