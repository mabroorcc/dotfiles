const { exec } = require("child_process");

// utillity functions
function handleErr(err, serr, cmd) {
  if (err) console.log(cmd + "===" + "Err : " + err);
  if (serr) console.log(cmd + "===" + "Serr: " + serr);
}
function run(cmd) {
  exec(cmd, (err, sout, serr) => {
    handleErr(err, serr, cmd);
    console.log("Done [" + cmd + "]-->" + sout);
  });
}
function runc(cmd, callback) {
  exec(cmd, (err, sout, serr) => {
    handleErr(err, serr, cmd);
    console.log("Done [" + cmd + "]-->" + sout);
    callback(sout);
  });
}

function runs(cmd) {
  exec(cmd, (err, sout, serr) => {
    handleErr(err, serr, cmd);
    console.log(sout);
  });
}
function runcs(cmd, callback) {
  exec(cmd, (err, sout, serr) => {
    handleErr(err, serr, cmd);
    callback(sout);
  });
}

function prun(cmd, silent = false) {
  return new Promise((resolve, reject) => {
    exec(cmd, (err, sout, serr) => {
      if (err) return reject(err);
      if (serr) return reject(serr);
      if (!silent) console.log("Done ---> " + cmd + "\n");
      resolve(sout);
    });
  });
}

function do_async(fn) {
  fn().catch((e) => console.log(e));
}

module.exports = {
  run,
  runc,
  runs,
  runcs,
  prun,
  do_async
};
