
// ### typescript literal types example
// using Ctrl-z to revert to previous contents.

let aliteral = {
	'a': 0
}

// show wrong
// aliteral = {
// 	'b': 1
// }

// right way

let aliteral1: { [key: string]: any } = {
	'a': 1
}