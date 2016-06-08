### Use Ruby programing language to solve

## Basic Logic

#### Please write a script or program to solve the following

**Problem 1**

The sum of the primes below 10 is `2 + 3 + 5 + 7 = 17`

Find the sum of all the primes below 2 million.

**Problem 2**

Which prime, below one million, can be written as the sum of the most consecutive primes?

### Solve

At `prime` folder:

#### Run test case

```
rspec spec/prime_spec.rb
```

![screen shot 2016-06-08 at 10 23 14 pm](https://cloud.githubusercontent.com/assets/6791942/15900097/5fd84270-2dc8-11e6-80f9-2e30740c6c36.png)

#### Check output for problem 1

**Find the sum of all the primes below 2 million**

```
ruby app/calculator.rb
```

![screen shot 2016-06-08 at 10 25 07 pm](https://cloud.githubusercontent.com/assets/6791942/15900098/6292118a-2dc8-11e6-83b7-2d3fe02777bb.png)

**Check the time find the sum of all the primes below 2 million**

```
time ruby app/calculator.rb
```

![screen shot 2016-06-08 at 10 26 34 pm](https://cloud.githubusercontent.com/assets/6791942/15900095/5dbc92e8-2dc8-11e6-8f63-4c156e07682e.png)

#### Check output for problem 2

**Find prime, below one million, can be written as the sum of the most consecutive primes**


```
ruby app/find_prime.rb
```

![screen shot 2016-06-08 at 10 32 39 pm](https://cloud.githubusercontent.com/assets/6791942/15900239/f859dd42-2dc8-11e6-9ab8-ab146d5860c4.png)

**Check the time find prime, below one million, can be written as the sum of the most consecutive primes**

```
time ruby app/find_prime.rb
```

![screen shot 2016-06-08 at 10 33 38 pm](https://cloud.githubusercontent.com/assets/6791942/15900259/156c7d86-2dc9-11e6-8701-0528a03c1e83.png)
