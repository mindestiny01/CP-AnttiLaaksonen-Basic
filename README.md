## Competitive Programming - Antti Laaksonen - Basic Techniques

### 1. Compile Command
```
g++ -std=c++17 -O2 -Wall <file-name>.cpp -o <folder-name>/<file-name>.exe
```

### 2. Time Complexity ( O(...) ) -> Loops
```
<!-- O(n) -->
FOR(i, 1, n) { intro += "Hello"; }

<!-- O(n^2) -->
FOR(i, 1, a){
    FOR(j, 1, b){
        intro += "Hello";
    }
    hello += "World";
}

FOR(i, 1, a){
    FOR(j, i + 1, b){
        <!-- code -->
    }
}

<!-- O(nm) -->
FOR(i, 1, n){
    FOR(j, 1, m){
        // code
    }
}

```

### 3. Order of Magnitude
**Not tell the exact number of times, but the order of magnitude**
```
<!-- All down here are O(n) of time complexity-->

FOR(i, 1, 3*a){ nope += i }
FOR(i, 1, a+5){ nope += i }
for(int i = 1; i <= j; i += 2){ nope += i }
```

### 4. Phases
**The total time complexity is the largest time complexity in single phases**
The reason that the slowest are the `bottleneck` of code
```
<!-- The code below are O(n) in time complexity -->

FOR(i, 1, a) { // code }

FOR(i, 1, a){
    FOR(j, 1, a){         -------> The total of time complexity
        // code
    }
}

FOR(i, 1, a) { // code }
```

### 5. Recursion
The time complexity is depends on the number of function calls
```
<!-- This code below is O(n) of time complexity -->
void Home(int a){
    if (a == 1) return;
    Home(a - 1);
}

<!-- This code below in O(2^n) -->
void Home(int a){
    if (a == 1) return; 
    Home(a - 1); 
    Home(a - 1); 
}
```

### Maximum subarray sum
```
#define FOR(i, a, b) for(int i = a; i <= b; i++)

<!-- The O(n^3) of time complexity -->
num = [-1, 2, 4, -3, 5, 2, -5, 3]
int best = 0;
FOR(i, 0, num.length() - 1){
    FOR(j, i, num.length() - 1){
        int sum = 0;
        FOR(k, i, j){
            sum += array[k]
        }
        best += max(best, sum)
    }
}
cout << best << endl;

<!-- The O(n^2) of time complexity -->
int best = 0;
FOR(i, 0, num.length() - 1){
    int sum = 0;
    FOR(j, i, num.length()){
        sum += array[j];
        best = max(best, sum)
    }
}
cout << best << endl;

<!-- The O(n) of time complexity -->
int best = 0; sum = 0;
FOR(i, 0, num.length()){
    sum = max(array[i], sum + array[i]);
    best = max(best, sum);
}
cout << best << endl;

```