#include <iostream>
#include <utility>
#include <vector>

/** Simple function to calculate the greatest common divisor */
int gcd(int a, int b)
{
    while(b != 0)
    {
        int temp{ b };
        b = a % b;
        a = temp;
    }

    return a;
}

/** Calculate the gcd of x and y, and then the amount of tiles required is easily calculated */
void solve(const int x, const int y)
{
    int g{ gcd(x, y) };

    std::cout << ((x / g) * (y / g)) << std::endl;
}

int main()
{
    int t;
    std::cin >> t;

    std::vector<std::pair<int, int>> in;
    for(int i{ 0 }; i < t; ++i)
    {
        int x;
        int y;
        std::cin >> x >> y;

        in.emplace_back(std::make_pair(x, y));
    }

    for(const auto& x: in)
        solve(x.first, x.second);

    return 0;
}
