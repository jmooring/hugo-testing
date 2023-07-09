function addTime(target: any) {
  target.prototype.time = new Date();
}

@addTime
class A {}

let a1 = new A
console.log(a1['time'])
