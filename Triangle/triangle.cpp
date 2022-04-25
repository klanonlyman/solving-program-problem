#include <stdio.h>
#include <iostream>
#include <math.h>
using namespace std;
long long fast_pow(int a, long long n)
{
    if(n == 0)
        return 1 % 1000000007;
    if(n & 1)
        return a * fast_pow(a, n-1) % 1000000007;
    long long p = fast_pow(a, n / 2);
    return p * p % 1000000007;
}
int main()
{
    std::ios_base::sync_with_stdio(false);
    std::cin.tie(nullptr);
    long long n;
    cin>>n;
    if(n){
    long long mods = 0;
    mods = (fast_pow(2,2*n-1) + fast_pow(2,n-1))% 1000000007;
    cout<<mods<<endl;
    }
    else{
        cout<<"1"<<endl;
    }
}