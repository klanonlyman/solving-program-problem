#include<iostream>
#include<vector>
using namespace std;
void merge(vector <int> &arr,vector <int> &arr1, int p, int q, int r) {
  int n1 = q - p + 1;
  int n2 = r - q;
  vector<int> L(n1,0);
  vector<int> M(n2,0);
  vector<int> L1(n1,0);
  vector<int> M1(n2,0);
  for (int i = 0; i < n1; i++){
    L[i] = arr[p + i];
    L1[i] = arr1[p + i];
  }
    
  for (int j = 0; j < n2; j++){
       M[j] = arr[q + 1 + j];
       M1[j] = arr1[q + 1 + j];

  }
  
  int i, j, k;
  i = 0;
  j = 0;
  k = p;
  while (i < n1 && j < n2) {
    if (L[i] <= M[j]) {
      arr[k] = L[i];
      arr1[k] = L1[i];
      i++;
    } else {
      arr[k] = M[j];
      arr1[k] = M1[j];
      j++;
    }
    k++;
  }

  while (i < n1) {
    arr[k] = L[i];
    arr1[k] = L1[i];
    i++;
    k++;
  }

  while (j < n2) {
    arr[k] = M[j];
    arr1[k] = M1[j];
    j++;
    k++;
  }
}

void mergeSort(vector <int> &arr,vector <int> &arr1, int l, int r) {
  if (l < r) {
    int m = l + (r - l) / 2;

    mergeSort(arr,arr1,l, m);
    mergeSort(arr,arr1,m + 1, r);
    merge(arr,arr1,l, m, r);
  }
}
int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(nullptr);
    
    
    vector <int> SG;
    vector <int> SP;
    int n;
    cin>>n;
	for(int i=0;i<n;i++){
        int F,S;
        cin>>F>>S;
        SG.push_back(F);
        SP.push_back(S);
    }
    mergeSort(SG,SP,0,n-1);
	
	
	int answer=0;
    n=n-1;
    int curr_SG=SG[n];
    int max_SP=-1000000000;
    int next_SP=-1000000000;
    while(n>=0){
        if(curr_SG!=SG[n]){
            max_SP=next_SP;
            curr_SG=SG[n];
        }
        if(SP[n]>=max_SP){
            answer+=1;
            if(SP[n]>next_SP){
                next_SP=SP[n];
            }
        }

        n-=1;
    }

	cout<<answer<<endl;
	return 0;
}