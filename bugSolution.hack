```hack
function foo(x: int): int {
  // Check for potential overflow before addition
  if (x > 2147483646) { // Assuming 32-bit integer
    return 2147483647; // Return max value to prevent overflow
  } else {
    return x + 1;
  }
}

function bar(x: int): int {
  //Check for potential overflow before multiplication
    var temp = foo(x);
    if (temp > 2147483647 / 2) {
      return 2147483647; //Handle overflow
    } else {
      return foo(x) * 2;
    }
}

function baz(x: int): int {
    var temp = bar(x);
    if (temp <= 0){
        return 0;
    }else{
        return bar(x) -1;
    }
}

function main(): void {
  echo baz(5);
}
```