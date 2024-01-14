
// ### URL process

// get the current original URL
let url = window.location.href;

// get the url without the query part.
const urlWithoutQuery = url.split('?')[0];

// use url objec to get the url without the query part.
const urlWithoutQuery1 = new URL(url).origin + new URL(url).pathname;

// get the query parameters as js object.
const query = url.split('?')[1].split('&').reduce((acc, cur) => {
	const [key, value] = cur.split('=');
	acc[key] = value;
	return acc;
}, {});

// get the query parameters as js object using URLSearchParams
url = "https://www.google.com/search?q=javascript+url+query+parameters&oq=javascript+url+query+parameters&aqs=chrome..69i57j0l7.10560j0j7&sourceid=chrome&ie=UTF-8";
const query1 = new URLSearchParams(url).entries();

const p1 = new URLSearchParams(window.location.search).get('page');
const p2 = new URLSearchParams(window.location.search).get('size');

// iterate over query1
for (const [key, value] of query1) {
	console.log(`${key}: ${value}`);
}

// append query parameters to url by using URLSearchParams
const params = new URLSearchParams();
params.append('page', '1');
params.append('size', '10');
const urlWithQuery = urlWithoutQuery + '?' + params.toString();

// reload the page with changed query or the same url.
window.location.href = urlWithQuery;
