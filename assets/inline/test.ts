const longNameforFunction = (): string => {
  console.log('Hello World');
  return 'Ended';
}

const variable = `It has ${longNameforFunction()}`;
console.log(variable);