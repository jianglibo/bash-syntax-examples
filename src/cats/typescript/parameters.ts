
// ### function parameters
// using Ctrl-z to revert to previous contents.

// optional parameters
function optionalParameters(a: number, b?: number) {
	console.log(a, b);
}

// default value 
function defaultParameters(a: number, b = 10) {
	console.log(a, b);
}

// varargs
function varargs(...args: number[]) {
	console.log(args);
}

// rest parameters
function restParameters(a: number, b: number, ...args: number[]) {
	console.log(a, b, args);
}

// destruction of parameters
function destructionParameters({ a, b }: { a: number, b: number }) {
	console.log(a, b);
}

// how to call destructionParameters
destructionParameters({ a: 1, b: 2 });

// destruction of parameters with default value
function destructionParameters1({ a, b = 10 }: { a: number, b?: number }) {
	console.log(a, b);
}