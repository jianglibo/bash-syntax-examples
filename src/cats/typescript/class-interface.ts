
// ### what class and interfacde like
// using Ctrl-z to revert to previous contents.
// class:
// 1. class is a blueprint of an object
// 2. class is a type
// 3. class is a function
// 4. class is an object

class Person {
	name: string;
	age: number;
	constructor(name: string, age: number) {
		this.name = name;
		this.age = age;
	}
}

// interface 
// 1. interface is a type
// 2. interface is an object
// 3. interface is a function
// 4. interface is a class

interface IPerson {
	name: string;
	age: number;
}

// class inheritance
class Employee extends Person {
	department: string;
	constructor(name: string, age: number, department: string) {
		super(name, age);
		this.department = department;
	}
}
// implment interface
class Employee1 implements IPerson {
	name: string;
	age: number;
	department: string;
	constructor(name: string, age: number, department: string) {
		this.name = name;
		this.age = age;
		this.department = department;
	}
}

// multiple inheritances
class Employee2 extends Person implements IPerson {
	department: string;
	constructor(name: string, age: number, department: string) {
		super(name, age);
		this.department = department;
	}
}

// generic
class Employee3<T> extends Person implements IPerson {
	department: T;
	constructor(name: string, age: number, department: T) {
		super(name, age);
		this.department = department;
	}
}