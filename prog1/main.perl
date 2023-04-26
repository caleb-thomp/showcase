#!/usr/bin/perl

#Program to check if a number is a prime number

# Prompt the user to enter a number
print "Enter a number: ";
$number = <STDIN>;

# Check if the number is prime
$is_prime = 1;
for ($i = 2; $i <= sqrt($number); $i++) {
  if ($number % $i == 0) {
    $is_prime = 0;
    last;
  }
}

# Print the result
if ($is_prime) {
  print "$number is prime\n";
} else {
  print "$number is not prime\n";
}
