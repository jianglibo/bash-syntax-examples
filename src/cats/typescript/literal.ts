
// ### typescript literal types example

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