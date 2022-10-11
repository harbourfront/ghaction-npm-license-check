const core = require("@actions/core")
const checker = require("license-checker-rseidelsohn")
const excludePrivatePackages = core.getInput("exclude-private-packages") === "true"
const productionOnly = core.getInput("production-only") === "true"

try {
	checker.init({
		start: 'codebase/',
		excludePrivatePackages,
		production: productionOnly,
		summary: true
	}, (err, packages) => {
		if (err) {
			core.error("Dependency license check failed.");
			core.setFailed(err);
			return;
		}
		core.info("Dependency license all passing.");
	});
}
catch(err) {
	core.setFailed(err.message);
}
