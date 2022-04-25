<h3>Description</h3>
<p>
  Bob finds N types of treasures in the cave , each of which have one or several. He wants to take them home , howevery ,
  he can only stand at most U kg of weight. Given the weight , vlaue and amount of each type of treasure , 
  find a subset of them with the maximum total value he can take home.
  To simplify the question , you just need to output the maximum total value of them.</br>
  For example , there are N=3 types of treasures in the cave.
  <img src="https://user-images.githubusercontent.com/103729404/165025921-6041b384-00cf-48d6-b9f1-d21ac3c90662.png"/>
  Bob can take at most U=5 kg of weight. The best strategy is taking three type 1 treasures and one type 2 treasure.
  The maximum total value he can take home is 2+2+2+3=9.
</p>
<h3>Input</h3>
<p>
  The first line comtains two positibe integer N,U separated by a space , representing the number of treasures and the weight
   Bob can take. The following N lines each containing three integers: wi,vi and ci, representing the weight , 
  value and amount of i-th type of treasure.</br>
  For all test data , it is guaranteed:
  <ul>
    <li>1 <= N <= 2000</li>
    <li>1 <= N <= 3000</li>
    <li>1 <= w1...wn <= 3000</li>
    <li>1 <= v1...vn <= 3000</li>
    <li>1 <= c1...cn <= 3000</li>
  </ul>
</p>
<h3>Output</h3>
<p>
  Please output a line representing the maximum total value of the treasures he can take home.
</p>
<h3>Problem-solving skills</h3>
<p>
    First, this problem similar the 0-1 knapsack, but they differ in quantity of goods.</br>
    Second, you just need to transform this problem into a 0-1 knapsack problem.</br>
    Third, repackage each goods. as such : quantity of apple are four and its W=2,V=2, then it will be repackage to 
  (one apple w=2 v=2)、(two apple w=4 v=4)、(four apple w=8 v=8).
</p>
<h3>Time complexity analysis</h3>
<p>
  First, we know time complexity of 0-1 knapsack problem is O(N*U) where U is knapsacks capacity、N is quantity of goods.</br>
  Second, the problem has been transformed so that the quantity of goods will become Nlog(K), where K is the total quantity of goods.</br>
  Finally, time complexity is O(Nlog(K)*U).
</p>
