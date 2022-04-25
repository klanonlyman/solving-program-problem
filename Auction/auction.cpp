#include <iostream>
#include <algorithm>
#include <vector>
#include <map>
using namespace std;
int main()
{
    std::ios_base::sync_with_stdio(false);
    std::cin.tie(nullptr);
    int n;
    cin>>n;
    vector<int> seq(n,0);
    for(int i=0;i<n;i++){
        cin>>seq[i];
        seq[i]=seq[i]*-1;
    }
    int gol_max=0;
    int T0=0;
    int T1=-5000000;
    for(int i=0;i<n;i++){
        T0=max(T0,T1+seq[i]);
        T1=max(T1,T0-seq[i]);
        gol_max=max(gol_max,T0);
        gol_max=max(gol_max,T1);
    }
    cout<<gol_max;


    return 0;
}
