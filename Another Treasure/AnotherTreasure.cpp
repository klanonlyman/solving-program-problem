#include <iostream>
#include <algorithm>
#include <vector>
#include <map>
using namespace std;

void sort_vec(vector<vector<int>> & treasure,int start,int end){

    for(int i=start;i<end;i++){
        int index=i;
        for(int j=i+1;j<end;j++){
            if(treasure[index][1]>treasure[j][1]){

                index=j;
            }
            int temp=treasure[index][1];
            treasure[index][1]=treasure[i][1];
            treasure[i][1]=temp;

        }
    }

}
int main()
{
    std::ios_base::sync_with_stdio(false);
    std::cin.tie(nullptr);
    int n;
    cin>>n;
    vector<vector<int>> treasure(n,vector<int>(3,0));
    map<int,int> diff;
    for(int i=0;i<n;i++){
        cin>>treasure[i][0]>>treasure[i][1];
        diff[treasure[i][0]]+=1;
    }
    for(int i=0;i<n;i++){
        int index=i;
        for(int j=i+1;j<n;j++){
            if(treasure[index][0]>treasure[j][0]){
                index=j;
            }

        }
        vector <int> temp=treasure[i];
        treasure[i]=treasure[index];
        treasure[index]=temp;
    }

    map<int, int>::iterator iter;
    iter = diff.begin();
    int start=0;
    int end=0;
    while(iter != diff.end()) {
        end=start+iter->second;
        sort_vec(treasure,start,end);
        iter++;
        start=end;
    }


    int gobal_max=1;
    treasure[0][2]=1;
    for(int i=1;i<n;i++){
        int max=0;
        for(int j=0;j<i;j++){
            if(treasure[i][0]>=treasure[j][0] && treasure[i][1]>=treasure[j][1] && treasure[j][2]>max){
                max=treasure[j][2];
            }



        }
        treasure[i][2]=max+1;
        if(gobal_max<treasure[i][2]){
            gobal_max=treasure[i][2];

        }
    }
    cout<<gobal_max;
    
    return 0;
}
