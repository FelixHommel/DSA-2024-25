#include <iostream>
#include <vector>

struct Intersection
{
    Intersection(int x, int y, int c)
        : x(x), y(y), c(c)
    {}

    int x;
    int y;
    int c;
};

int solve()
{
    int n; // Amount of intersections
    int m; // Amount of roads
    std::cin >> n >> m;

    std::vector<Intersection> intersections;
    for(int i{ 0 }; i < m; ++i)
    {
        int x;
        int y;
        int c;
        std::cin >> x >> y >> c;

        intersections.emplace_back(x, y, c);
    }
}

int main()
{
    int t;
    std::cin >> t;

    for(int i{ 0 }; i < t; ++i)
        std::cout << solve() << '\n';

    return 0;
}
