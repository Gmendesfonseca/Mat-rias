import { server } from './heartbeat';

// start a heartbeat server
const hb_server = server('127.0.0.1', 8080);

// run!!
setInterval(function () {
  hb_server.broadcast();
  hb_server.find_zombies(15000, function (zombie: any) {
    console.log('Found a zombie: ' + zombie.hbtime);
  });
}, 2 * 1000);
