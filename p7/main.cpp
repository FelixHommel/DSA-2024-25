#include <algorithm>
#include <iostream>
#include <vector>

struct Edge
{
    int u; // Connection on the one side
    int v; // Connection on the other side
    int d; // Length of the connection between u and v

    /** For std::sort(), sort by length */
    bool operator<(const Edge& other) const { return d < other.d; }
};

int find(std::vector<int>& parent, int x)
{
    if(parent[x] != x)
        parent[x] = find(parent, parent[x]);

    return parent[x];
}

void unionSets(std::vector<int>& parent, std::vector<int>& rank, int x, int y)
{
    int rootX{ find(parent, x) };
    int rootY{ find(parent, y) };

    if(rootX != rootY)
    {
        if(rank[rootX] > rank[rootY])
            parent[rootY] = rootX;
        else if(rank[rootX] < rank[rootY])
                parent[rootX] = rootY;
        else
        {
            parent[rootY] = rootX;
            ++rank[rootX];
        }
    }
}

/*
 * @brief Essentially this performs Kruskal's algorithm, to find the minimum spanning tree for the 
 *          given problem with the help of a Union-Find Data Structure.
*/
unsigned int solve(int n, std::vector<Edge>& edges)
{
    std::vector<int> parent(n);
    std::vector<int> rank(n, 0);

    for(int i{ 0 }; i < n; ++i)
        parent[i] = i;

    std::sort(edges.begin(), edges.end());

    int minCost{ 0 };
    for(const auto& edge : edges)
    {
        if(find(parent, edge.u) != find(parent, edge.v))
        {
            unionSets(parent, rank, edge.u, edge.v);
            minCost += edge.d;
        }
    }

    return minCost;
}

int main()
{
    int t; // Amount of test cases
    std::cin >> t;

    for(int i{ 0 }; i < t; ++i)
    {
        int n; // Amount of treehouses
        int m; // Amount of bridges between treehouses
        std::cin >> n >> m;

        std::vector<Edge> edges(m);
        for(int j{ 0 }; j < m; ++j)
        {
            std::cin >> edges[j].u >> edges[j].v >> edges[j].d;

            /** Transfrom 1-based index to 0-based index */
            --edges[j].u;
            --edges[j].v;
        }

        std::cout << solve(n, edges) << '\n';
    }

    return 0;
}
