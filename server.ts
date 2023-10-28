Bun.serve({
	port: 3000,
	fetch(req) {
		const url = new URL(req.url);
		if (url.pathname === "/") return new Response("Home to Bun!");
		if (url.pathname === "/django-version") {

			const proc = Bun.spawn(
				[process.env["PYTHON_LOCATION"], process.env["DJANGO_ADMIN_LOCATION"] + "/django-admin", "shell", "--command=import django; print(django.__version__)"],
				{
					env: process.env,
					// cwd: "./",
					stdout: "pipe"
				}
			);
			proc.stdout.pipeTo(Response.json)
			// console.log(proc.stderr)
			return Response.json({ version: proc.stdout })
		}
	},
});
