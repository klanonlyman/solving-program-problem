<h3>Description</h3>
<p>
  Bob finds N treasures in a Cartesian coordinate system. He wants to take them home. However , in the plane he is only allowed
  to move up and to the right. Given the coordinates of the treasures , please output the maximum number of treasure that Bob can
  get. Bob will start at (0,0).
</p>
<h3>Input</h3>
<p>
  The first line contains a positive integer N, which indicates the number of treasure in the space.
  For the following N lines, each line contains two space-separated number xi, yi, 
  indicating the position of the i-th treasure.
  For all test data, it is guaranteed:
    <ul>
      <li>1 <= N <= 3*10^3</li>
      <li>1 <= xi,yi <= 10^7</li>
    </ul>
</p>
<h3>Output</h3>
<p>
  Please print a number indicating the maximum number of treasure Bob can get.
</p>
<h3>Problem-solving skills</h3>
<p>
  blue point is treasure.</br>
  yellow point is current position.</br>
  orange lines represent that current position will be infect with blue points. </br>
  <img src="https://user-images.githubusercontent.com/103729404/165036143-5b399aef-147d-4216-9d76-894ca2fdde5b.png"/>
  <img src="https://user-images.githubusercontent.com/103729404/165036157-7967692c-28ed-4db9-80ab-0a3e6d36df31.png"/>
  <img src="https://user-images.githubusercontent.com/103729404/165036167-6f4abec0-6036-45b9-b4f2-6f9687706833.png"/>
  <img src="https://user-images.githubusercontent.com/103729404/165038191-78dcad63-772a-47f1-878b-7c6a63fdf35c.png"/>
  </br>
  First , x-y axis will be sorted. (because DP solving need.)
  Second , because axises has been sorted , so the maximum number of treasure you just need to find the range within the yellow point.
</p>
<h3>Time complexity analysis</h3>
<p>
  First , time complexity of sorting is O(nlogn).
  Second ,find the range within each yellow point , its time complexity is o(n^2).
  Final , time complexity is o(n^2) 
</p>
