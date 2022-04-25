<h3>Description</h3>
<p>
  Bob wants to put his collected treasures up for auction, but the customers are very stingy and ask for buy one get one free to buy treasures.
Each treasure has a value vi, and when the customer buys the first treasure, the second treasure will be given to the customer for free, Bob earns v1​ from the sold first treasure and loses v2 from the given second treasure.
Given a sequence of N treasure values vi, help Bob select a subsequence that will allow Bob to earn the most value at the auction.
Note that
if Bob has only one treasure left, the customer will buy it without asking for another free treasure.
customers will purchase the treasures in the sequence in order.
A sequence s is a subsequence of a sequence t if s can be obtained from t by deletion of several (possibly, zero or all) elements.
For example, in sample 1 we can choose various subsequence from [2,1,3,7,5], such as [2,1,3],[2,1,7,5],[1,7,5],[3], and the subsequence which can earn the most is [2,1,7] ,2-1+7=8 values.
</p>
<h3>Input</h3>
<p>
  For all test data, it is guaranteed:
    <ul>
      <li>1 <= N <= 3*10^5</li>
      <li>1<= vi <- 10^3</li>
    </ul>
</p>
<h3>Output</h3>
<p>
  Please print a number indicating the maximum value Bob can earn.
</p>
<h3>Problem-solving skills</h3>
<p>
  first , you must known sotck problem , you can refer <a href="https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iv/">it</a>
  second , stock problem can be transfer to this problem , the input series will be product to -1 .(buy stock->income) (sell stock->cost)
  third , a transaction is buy and sell in stock , so this problem whether you buy or sell you must record.
</p>
<h3>Time complexity analysis</h3>
  <p>
    Time complexity of stock problem is O(n). So this problem is also.
  </p>
