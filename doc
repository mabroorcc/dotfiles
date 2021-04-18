#!/usr/bin/node
const { exec } = require("child_process");

if (process.argv[2] == "del") {
  exec('docker ps -a --format "{{.ID}}"', (err, sout, serr) => {
    if (err) console.log(err);
    if (sout) {
      const containers = sout.split("\n").filter((val) => val.length > 4);
      for (let cont of containers) {
        console.log("Deleting container with ID:" + cont);
        exec("docker rm -f " + cont, (err, out, serr) => {
          if (err) console.log(err);
          if (serr) console.log(serr);
          if (sout) console.log(out);
        });
        console.log("--------------------------------------");
      }
    }
    if (serr) console.log(serr);
  });
}

if (process.argv[2] == "delimg") {
  exec('docker images --format "{{.Tag}}|{{.ID}}"', (err, sout, serr) => {
    handleErr(err, serr);
    console.log(
      sout
        .split("\n")
        .filter((val) => !val.includes("alpine"))
        .filter((val) => val.length > 2)
        .map((val) => val.split("|"))
        .forEach((val) => {
          exec("docker image rm -f " + val[1], (err, sout, serr) => {
            handleErr(err, serr);
            console.log(sout);
          });
        })
    );
  });
}

function handleErr(err, serr) {
  if (err) console.log("Err : " + err);
  if (serr) console.log("Serr: " + serr);
}
