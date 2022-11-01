const readline = require('readline');
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
  terminal: false
});

rl.on('line', line => {
    console.log(fibonacci(parseInt(line)));
})

const fibonacci = n => {
  let a = 0n, b = 1n;
  for (let i = 0; i <= n; i++) {
    let c = a + b;
    a = b;
    b = c;
  }
  return a;
}
