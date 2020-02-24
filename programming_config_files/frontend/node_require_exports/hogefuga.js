const Foobar = require('./foobar');

class Hogefuga {
  constructor() {}

  faster() {
    new Foobar().execute('slower');
  }

  async tokyo() {
    console.log('Tokyo');
  }
}

new Hogefuga().faster();
new Hogefuga().tokyo();
