import net from 'net';

const client = (host: string, port: number) => {
  let pulse, connect, socket: any;

  pulse = function (socket: any) {
    socket.write('alive', 'utf8');
  };

  connect = function (net_interface: any) {
    socket = net_interface.createConnection(port, host);
    socket.write('alive', 'utf8');
    socket.on('error', function (x: any) {
      console.log(x);
      console.log('cant connect. try again');
    });
    socket.on('data', function () {
      pulse(socket);
    });
  };

  if (port && host) {
    // default (lame) mode
    connect(net);
  }

  return {
    pulse: pulse,
    connect: connect,
  };
}; // client

const server = (host: string, port: number) => {
  let net_interface = net,
    clients: any[] = [],
    zombies: any[] = [];

  // detect dead machines
  let find_zombies = function (period: any, zombie_callback: any) {
    const zombies = [],
      limit = new Date().getTime() - period;
    if (period === undefined || period === null) {
      period = 60 * 1000; // default is 60 seconds of tolerance between pulses
    }
    for (let idx in clients) {
      const last_seen = clients[idx];
      if (last_seen.hbtime < limit) {
        zombie_callback(last_seen);
        zombies.push(last_seen);
      }
    }
    return zombies;
  };

  let start_server = function () {
    net_interface
      .createServer(function (socket: any) {
        const got_data = function (data: any) {
          clients[socket.remoteAddress] = {
            addr: socket.remoteAddress,
            hbtime: new Date().getTime(),
            socket: socket,
          };
        };
        socket.setEncoding('utf8');
        socket.on('data', got_data);
      })
      .listen(port, host);
  };

  /*send heartbeat message to many clients*/
  let ask_many = function (clients: any) {
    let c;
    for (let idx in clients) {
      c = clients[idx];
      try {
        c.socket.write('are u alive');
      } catch (x) {
        console.log(
          'couldnt send message to: ' + c.addr + ' waiting for it to die',
        );
      }
    }
  };

  /*broadcast heartbeat message*/
  let broadcast = function () {
    ask_many(clients);
  };

  if (net_interface !== undefined) {
    net_interface = net_interface;
  }

  if (host === undefined) {
    host = '127.0.0.1';
  }

  if (port === undefined) {
    port = 6688;
  }

  start_server();

  return {
    find_zombies: find_zombies,
    ask_many: ask_many,
    broadcast: broadcast,
    /*public for testing*/
    clients: clients,
    zombies: zombies,
  };
}; // server

export { client, server };
