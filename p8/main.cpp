#include <climits>
#include <iostream>
#include <queue>
#include <vector>

static constexpr auto intInfinity{ INT_MAX };

void solve()
{
    int n; // Amount of tree houses
    int m; // Amount of bridges
    std::cin >> n >> m;

    /** Create the Graph as adjanceny list */
    std::vector<std::vector<std::pair<int, int>>> graph(n + 1); //Make the index 1-based

    for(int i{ 0 }; i < m; ++i)
    {
        int u; // Index start tree house
        int v; // Index end tree house
        int d; // Length of the bridge
        std::cin >> u >> v >> d;

        graph[u].emplace_back(v, d);
        graph[v].emplace_back(u, d);
    }

    /** Dijkstra's algorithm to find shortest distance */
    std::vector<int> dist(n + 1, intInfinity);
    std::priority_queue<std::pair<int, int>, std::vector<std::pair<int, int>>, std::greater<std::pair<int, int>>> pq;

    /** Distance to the starting point is constant */
    dist[1] = 0;
    pq.emplace(0, 1);

    while(!pq.empty())
    {
        int currDist{ pq.top().first };
        int u{ pq.top().second };
        pq.pop();

        /** Ignore paths that are longer then a already found and shorter path */
        if(currDist > dist[u])
            continue;

        for(const auto& edge : graph[u])
        {
            int v{ edge.first };
            int weight{ edge.second };

            if(dist[u] + weight < dist[v])
            {
                dist[v] = dist[u] + weight;
                pq.emplace(dist[v], v);
            }
        }
    }

    /** Find the treehouse that is the furthest away */
    int maxDist{ 0 };
    for(int i{ 1 }; i <= n; ++i)
    {
        if(dist[i] != intInfinity)
            maxDist = std::max(maxDist, dist[i]);
    }

    std::cout << maxDist << '\n';
}

int main()
{    
    int t; // Amount of test cases
    std::cin >> t;

    for(int i{ 0 }; i < t; ++i)
        solve();

    return 0;
}
