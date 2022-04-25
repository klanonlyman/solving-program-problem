<h3>Description</h3>
<p>
   You have found that the treasure you locked in your dorm closet has beed stolen , and obviously the password has beed leaked, 
  so oyu need to change the password of the combination lock.
  The original password S consists of lowercase letters , each letter on the lock is an rotating disc with inscribed letters from
   a to z.
  To change from th eoriginal password S to the new password T , you have to pay an maintenance fee based on the operations you tell.</br>
  There are three types of operation you can perform:
  <ul>
   <li>cost a dollars to add a disc with arbitrary letter at any position.</li>
   <li>cost b dollars to remove a disc.</li>
   <li>cost c dollars to rotate a disc by one tick, that is, change the letter to an adjacent letter.</li>
  </ul>
  Each operation can be performed any number of times.</br>
  
  For example:
  <ul>
   <li>Changing from abc to abcd will cost a dollars to adding the letter d.</li>
   <li>Changing from abc to ab will cost b dollars to removing the letter c.</li>
   <li>Changing from abc to abe will cost a+b dollars by removing the letter c and adding the letter e , or cost c*2 dollars to change a letter from c to e.</li>
  </ul>
   Note that the inscribed letters on the discs form a cycle, so a and z are considered adjacent.</br>
   Given the original password S and the target password T, calculate the minimum cost you have to pay.
</p>
<h3>Input</h3>
<p>
  The first line contains three space-separated integers a, b and c.</br>
  The second line contains a string, the original password S.</br>
  The third line also contains a string, the target password T.</br>
  For all test data, it is guaranteed:
   <ul>
     <li>1 <= |S| <= 5*10^3</li>
     <li>1 <= |T| <= 5*10^3</li>
     <li>1 <= a,b,c <= 100</li>
     <li>S and T only consist of lowercase letters of the English alphabet.</li>
   </ul>
</p>
<h3>Output</h3>
<p>
  Please print a number indicating the minimum cost you have to pay for changing password.
</p>
<h3>Problem-solving skills</h3>
<p>
  This problem similar to Minimum Edit Distance problem ,but it is not factor of cost.
  So you only need to consider the factor of cost. 
</p>
<h3>Time complexity analysis</h3>
<p>
  Its time complexity is O(mn) as same as Minimum Edit Distance problem.
</p>
