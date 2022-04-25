<h3>Description</h3>
<p>
  Strength and speed are crucial capacities in foorball games. Each football palyer Pi has two attributes sti and spi ,
  representing strength and speed in comparison with the average of players in the league, respectively.
  we said that player Pi dominates player Pj if sti > stj and spi > spj at the same time.
  Give you a league of football players , please find out ho many players are not being dominated by any other player.
</p>
<h3>Input</h3>
<p>
  The first line contain a single interger n -- the number of players . in the next n lines , 
  each line contain two integers sti and spi, representing strength and speed of player Pi (1 <= i <= n).</br>
  For all test data , it is guaranteed:
    <ul>
      <li>
        1 <= n <= 10^5
      </li>
      <li>
        -10^9 <= spi,sti <= 10^9
      </li>
    </ul>
</p>
<h3>Output</h3>
<p>
  Print an integer , indicating the number of players that are not being dominated by anyone.
</p>
<h3>Problem sovling skills</h3>
<p>
  First, sort the value of each sti. (big to small)</br>
  Second, sort the spi that each same values of sti. (big to small)</br>
  Third, declare max_ST=ST[0], max_SP=SP[0]</br>
  Forth, iterate each ST and SP</br>
  Fifth, if max_ST > ST[i] and max_SP >SP[i] then Answer+=1</br>
  Sixth, if max_Sp>SP[i] then max_SP=SP[i]</br>
</p>
<h3>Time complexity analysis</h3>
<p>
  First, the sorting need O(nlogn).</br>
  Second, the sorting need O(nlogn).</br>
  Third, declare O(1). </br>
  Forth, iterate each ST and SP , it need O(N).</br>
  Finally, O(nlogn)+O(nlogn)+O(1)+O(N) = O(nlogn).</br>
</p>
