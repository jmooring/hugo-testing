function addFoo(target: any) {target.prototype.foo = 'bar'}
@addFoo
class A {}
