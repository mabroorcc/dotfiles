const { exec } = require("child_process");

// utillity functions
function handleErr(err, serr) {
  if (err) console.log("Err : " + err);
  if (serr) console.log("Serr: " + serr);
}
function run(cmd) {
  exec(cmd, (err, sout, serr) => {
    handleErr(err, serr);
    console.log("Done [" + cmd + "]-->" + sout);
  });
}
function runc(cmd, callback) {
  exec(cmd, (err, sout, serr) => {
    handleErr(err, serr);
    callback(sout);
  });
}

module.exports = {
  run,
  runc,
};
