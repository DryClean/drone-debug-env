
const inspect = require('util').inspect

var drone_env = {}

const RE = /^(DRONE_|PLUGIN_|GITHUB_)/
for (var envkey in process.env) {
  if (RE.test(envkey)) {
    drone_env[envkey] = process.env[envkey]
  }
}

console.log(inspect(drone_env, { colors: true }))
