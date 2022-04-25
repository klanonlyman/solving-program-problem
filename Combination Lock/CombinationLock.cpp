#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;
int main()
{
    std::ios_base::sync_with_stdio(false);
    std::cin.tie(nullptr);
    vector<int> cost(3,0);
    cin>>cost[0]>>cost[1]>>cost[2];
    string sm="";
    string sn="";
    cin>>sm;
    cin>>sn;
    int m=sm.size();
    int n=sn.size();
    vector<vector<int>> dp(m+1,vector<int>(n+1,0));
    for(int i=1;i<=n;i++){
        dp[0][i]=dp[0][i-1]+cost[0];
    }
    for(int i=1;i<=m;i++){
        dp[i][0]=dp[i-1][0]+cost[1];
    }
    for(int i=1;i<=m;i++){
        for(int j=1;j<=n;j++){
            int cas=0;
            if(sm[i-1]!=sn[j-1]){
                int diff_1=(int) sn[j-1] - (int) sm[i-1];
                int diff_2=(int) sm[i-1]-(int) sn[j-1];
                if(diff_1<0){diff_1=diff_1+26;}
                if(diff_2<0){diff_2=diff_2+26;}
                int diff=min(diff_1,diff_2);
                // diff=diff+26;
                // diff=diff%26;
                diff=diff*cost[2];
                cas=diff;
            }
            int re;
            re=min(dp[i-1][j]+cost[1],dp[i][j-1]+cost[0]);
            dp[i][j]=min(re,dp[i-1][j-1]+cas);

        }


    }
    cout<<dp[m][n];
    return 0;
}
