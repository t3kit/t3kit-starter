const localConf = require('../localconf')
const fs = require('fs')

function checkt3kitExt () {
  if (localConf.dirName !== 't3kit') {
    if (!fs.existsSync(`${localConf.rootPath}/../../../../node_modules/t3kit`)) {
      console.log(`Error: Extension ${localConf.dirName} cannot find t3kit extension`)
      console.log('Please install it by running firstly <composer install> and then <npm install> from the root of the project\n')
      process.exit(1)
    }
  }
}

exports.checkt3kitExt = checkt3kitExt
