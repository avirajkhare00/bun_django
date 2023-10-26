const server = Bun.serve({
	port: 8081,
	fetch(req) {
		return new Response("Welcome to Bun!");
	}
});

console.log(`Listening on port: ${server.port}`);
