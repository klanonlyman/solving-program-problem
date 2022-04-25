<h3>Desctiption</h3>
<p>
  On day 0, there is a single triangle pointing upward ,and on the next day ,
  day 1 , it will be divided into four triangles ,three of which point upwards and the other downwards. After another day ,
  each triangle will be divided into four triangles ,three of which point in the priginal direction and the other in the 
  opposite direction ,and so on every day. Find out how many triangles that point upwards will be on day d.
  <img src="https://user-images.githubusercontent.com/103729404/165019987-dab9a682-41d3-45dc-bb32-4046c617bd6a.png"/>

</p>
<h3>Input</h3>
<p>
  Input has only one line, which contains an integer d.</br>
  For all test data, it is guaranteed:
  <ul>
    <li>0 <= d <= 10^18</li>
  </ul>
</p>
<h3>Output</h3>
<p>
  Print a single interger -- the number of triangles that will point upwards on day d. Since the number may be huge ,
  you only need to answer the number module 10^9+7.
</p>
<h3>Problem sovling skills</h3>
<p>
  <table>
    <tr>
      <td>Day</td>
      <td>The number of upper triangles on each layer</td>
      <td>The amount of upper triangles</td>
    </tr>
    <tr>
      <td>0</td>
      <td>1 (sum all)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>1</td>
      <td>1,2 (sum all)</td>
      <td>3</td>
    </tr>
    <tr>
      <td>2</td>
      <td>1,2,3,4 (sum all)</td>
      <td>10</td>
    </tr>
    <tr>
      <td>3</td>
      <td>1,2,3,4,5,6,7,8 (sum all)</td>
      <td>36</td>
    </tr>
  </table>
  By observing the table, you will know that the answer is the sum of 1 to 2^d.
</p>
<h3>Time complexity analysis</h3>
<p>
  First, this equation (1+2+3....+2^d) can be converted to 2^(2*d-1)+2^(d-1).</br>
  Finally, he complexity is O(log(2*D)) <- use fast power methods.
</p>
