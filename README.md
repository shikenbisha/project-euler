# project-euler

This is my solutions to [project-euler](https://projecteuler.net/archives).

## problem001

- [problem001.rb](./problem001.rb)
  
    I used the sum fomula from 1 to n.
     ```
    1 + ... + n  = n * (n+1) / 2
     ```
    I practice  writing a program , without using "for" stupidly.

- [problem001_another.rb](./problem001_another.rb)

    I was surprised at the fact you can write  this solution on a single line by "method chain" !

## problem002

- [problem002.rb](./problem002.rb)

  I learned how to define recursive functions.

## problem003

- [problem003.rb](./problem003.rb)

  By "Prime.each" and "select" , you can take the prime factors of the number.

## problem004

- [problem004.rb](./problem004.rb)

  "reverse" method makes it possible for you to check for palindrome easily.

## problem005

- [problem005.rb](./problem005.rb)

  I calculate the power of each prime factor, less than 20, and multiplied them.

## problem006

- [problem006.rb](./problem006.rb)
  
  I expanded the formula (1+ ... + 100)^2, (and took difference from the sum of squares 1^2 + ... + 100^2,)
  but I should have calculated 1+...+100 and then square it.

## problem007

- Solution1 [problem007.rb](./problem007.rb)

  The following pair of bounds for the kth-prime number p(k) is known by John.Barkley.Rosser
  & [Pierre Dusart](http://www.ams.org/journals/mcom/1999-68-225/S0025-5718-99-01037-6/S0025-5718-99-01037-6.pdf) .

```
k * (log(k) + log(log(k)) -1) < p(k) < k * (log(k) + log(log(k)))   for k>=6
```

- Solution2 [problem007_another.rb](./problem007_another.rb)

  I make the method which finds kth prime number by tail recursion, but Ruby does not enable tail recursion by default. You need set the following compile option. I referred to the site,
  [Nithin Bekal - Tail Call Optimaization in Ruby](http://nithinbekal.com/posts/ruby-tco).

```
RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}
```

## problem008

- Solution1 [problem008.rb](./problem008.rb)

  Note: If you write 1000-digit number on multi-line,it has new-line character "\n".
  Since "\n".to_i is 0 (as integer) , you need to remove "\n" when you store each digit of the number in an array.

  I make the method which calculates product of k-adjacent digits from n-th digit in number by recursion.

- Solution2 [problem008_another.rb](./problem008_another.rb)

  When you take adjacent elements of an array , 'each_cons' method is useful.

## problem009

- [problem009.rb](./problem009.rb)

  Substituting c = 1000 - (a + b) for
  a^2 + b^2 = c^2, you get the equation 1000 (a + b) - ab = 5_000_000.  
  So, I find a, b (a<333, b<500) which satisfy it.

## problem010

- [problem010.rb](./problem010.rb)

  I also use "Prime.each".

## problem011

- [problem011.rb](./problem011.rb)

  You have only to think 4-direct product in the grid, "right, down, lower_right and lower_left".  
  By the way, I store the grid in a 1-dimension array.

  - right direct  
    I use the approach of [problem008_another.rb](./problem008_another.rb) to this problem.
  - down, lower_right, lower_left direct  
    I store candidates of the greatest product in an array, and then, get max value by 'max'.
    Apparently, 'while' is not necessary by using method of array operation.

## problem012

- Under construction...
