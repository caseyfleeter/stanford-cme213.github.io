#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

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
        ++i;
        return *this;
    }

    bool operator!=(const range_iterator &rhs)
    {
        return i != rhs.i;
    }

    bool operator==(const range_iterator &rhs)
    {
        return i == rhs.i;
    }

  private:
    unsigned i;
};

class range
{
  public:
    range(unsigned n_) : n(n_){};

    range_iterator begin() const
    {
        return range_iterator(0);
    }

    range_iterator end() const
    {
        return range_iterator(n);
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
    vector<int> a1 = {1, 5, 42, 7, 8};
    vector<int> a2 = {10, 7, 4, 2, 2};
    vector<int> out(a1.size());

    cout << "Input a1/a2:\n";
    print_vector(a1);
    print_vector(a2);

    /*
    OutputIt transform( InputIt1 first1, InputIt1 last1, InputIt2 first2, 
                    OutputIt d_first, BinaryOperation binary_op );
    */
    std::transform(a1.begin(), a1.end(),
                   a2.begin(),
                   out.begin(),
                   [](int i, int j) { return i + j; });

    cout << "a1+a2:\n";
    print_vector(out);

    range r(a1.size());
    vector<int> multiple_of(a1.size());

    /*
    OutputIt transform(InputIt first1, InputIt last1, OutputIt d_first,
                       UnaryOperation unary_op);
    */
    std::transform(r.begin(), r.end(),
                   multiple_of.begin(),
                   [](int i) { return 3 * i; });

    cout << "3*i:\n";
    print_vector(multiple_of);

    std::transform(r.begin(), r.end(),
                   out.begin(),
                   [&a1, &a2](int i) { return a1[i] * a2[i]; });

    cout << "a1 .* a2:\n";
    print_vector(out);

    return 0;
}