/**
 * @file UnionFind.cpp
 * @author Arthur Chen(c.x.l@live.com)
 * @brief  Union find algorithm
 * @version 0.1
 * @date 2021-08-29
 * 
 * @copyright Copyright (c) 2021
 * 
 */

#include <stdlib.h>
#include <time.h>
#include <unistd.h>

#include <iostream>
#include <vector>

class UnionFind {
public:
    UnionFind(int n) {
        count = n;
        for (int i = 0; i < n; ++i) {
            id.push_back(i);
        }
    }
    virtual ~UnionFind() {}

    virtual void Union(int p, int q) = 0;
    virtual int Find(int p) const = 0;

    virtual bool IsConnected(int p, int q) const { return Find(p) == Find(q); }
    int Count() const { return count; }

protected:
    std::vector<int> id;
    int count;
};

class QuickFindUF : public UnionFind {
public:
    QuickFindUF(int n) : UnionFind(n) {}
    virtual ~QuickFindUF() {}

    virtual void Union(int p, int q) override {
        int pID = Find(p);
        int qID = Find(q);

        if (pID == qID) return;

        for (int i = 0; i < id.size(); ++i) {
            if (id[i] == pID) {
                id[i] = qID;
            }
        }
        --count;
    }

    virtual int Find(int p) const override { return id[p]; }
};

class QuickUnionUF : public UnionFind {
public:
    QuickUnionUF(int n) : UnionFind(n) {}
    virtual ~QuickUnionUF() {}

    virtual void Union(int p, int q) override {
        int pRoot = Find(p);
        int qRoot = Find(q);
        if (pRoot == qRoot) return;

        id[pRoot] = qRoot;

        --count;
    }

    virtual int Find(int p) const override {
        while (p != id[p]) {
            p = id[p];
        }

        return p;
    }
};

class WeightedQuickUnionUF : public UnionFind {
public:
    WeightedQuickUnionUF(int n) : UnionFind(n) {
        for (int i = 0; i < n; ++i) {
            sz.push_back(1);
        }
    }
    virtual ~WeightedQuickUnionUF() {}

    virtual void Union(int p, int q) override {
        int i = Find(p);
        int j = Find(q);
        if(i == j) {
            return;
        }

        if (sz[i] < sz[j]) {
            id[i] = j;
            sz[j] += sz[i];
        } else {
            id[j] = i;
            sz[i] += sz[j];
        }

        --count;
    }

    virtual int Find(int p) const override {
        while (p != id[p]) {
            p = id[p];
        }
        return p;
    }

private:
    std::vector<int> sz;
};

int main() {
    struct timespec stStartTm, stEndTm;
    clock_gettime(CLOCK_REALTIME, &stStartTm);

    int n, p, q;
    std::cin >> n;

    WeightedQuickUnionUF uf(n);
    while (std::cin >> p >> q) {
        if (uf.IsConnected(p, q)) {
            continue;
        }

        uf.Union(p, q);
        std::cout << p << " " << q << std::endl;
    }

    std::cout << uf.Count() << " components" << std::endl;

    clock_gettime(CLOCK_REALTIME, &stEndTm);
    unsigned long ulStart =
        stStartTm.tv_sec * 1000 + stStartTm.tv_nsec / 1000000;
    unsigned long ulEnd = stEndTm.tv_sec * 1000 + stEndTm.tv_nsec / 1000000;
    std::cout << "elapse: " << (ulEnd - ulStart) << "ms" << std::endl;

    return 0;
}
