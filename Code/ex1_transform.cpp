#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

/*
Compile with:
g++ -std=c++11 -o ex1_transform ex1_transform.cpp
*/

/*
See
https://en.cppreference.com/w/cpp/iterator/iterator
for information about iterators.
*/
struct range_iterator
{
  public:
    range_iterator(unsigned i_) : i(i_){};
    range_iterator(const range_iterator &ri) : i(ri.i){};

    unsigned const &operator*() const
    {
        return i;
    }

    range_iterator &operator++()
    {
        // Increment counter
        /* todo */
        return *this;
    }

    bool operator!=(const range_iterator &rhs)
    {
        return /* todo */ false;
    }

    bool operator==(const range_iterator &rhs)
    {
        return /* todo */ true;
    }

  private:
    unsigned i;
};

/* Similar to an STL container but "contains" only a sequence of integers
from 0 to n-1.
https://en.cppreference.com/w/cpp/container
*/
class range
{
  public:
    range(unsigned n_) : n(n_){};

    range_iterator begin() const
    {
        return /* todo */ 0;
    }

    range_iterator end() const
    {
        return /* todo */ 0;
    }

  private:
    unsigned n;
};

template <typename T>
void print_vector(T &vec)
{
    const unsigned n = vec.size();
    cout << "(";
    for (unsigned i = 0; i < n - 1; ++i)
        cout << vec[i] << ", ";
    cout << vec[n - 1] << ")\n";
}

int main(void)
{
    vector<int> dummy;

    vector<int> a1 = {1, 5, 42, 7, 8};
    vector<int> a2 = {10, 7, 4, 2, 2};
    vector<int> out(a1.size());

    cout << "Input a1/a2:\n";
    print_vector(a1);
    print_vector(a2);

    /*
    See
    https://en.cppreference.com/w/cpp/algorithm/transform

    OutputIt transform( InputIt1 first1, InputIt1 last1, InputIt2 first2, 
                    OutputIt d_first, BinaryOperation binary_op );

    Should output vector with entries a1[i] + a2[i]
    */
    std::transform(a1.begin(), a1.end(),
                   a2.begin(),
                   out.begin(),
                   [](int i, int j) { return /* todo */ 0; });

    cout << "a1+a2:\n";
    print_vector(out);

    range r(a1.size());
    vector<int> multiple_of(a1.size());

    /*
    OutputIt transform(InputIt first1, InputIt last1, OutputIt d_first,
                       UnaryOperation unary_op);

    Should output vector with entries 3*i
    */
    std::transform(r.begin(), r.end(),
                   multiple_of.begin(),
                   [](int i) { return /* todo */ 0; });

    cout << "3*i:\n";
    print_vector(multiple_of);

    // Should output vector with a1[i] * a2[i]
    // Use your range variable r instead of dummy
    std::transform(/*todo*/ dummy.begin(), /*todo*/ dummy.end(),
                   out.begin(),
                   [/* todo */](int i) { return /* todo */ 0; });

    cout << "a1 .* a2:\n";
    print_vector(out);

    return 0;
}