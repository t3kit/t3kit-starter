const localConf = require('../localConf')
const nodeEngine = require('../../../package').engines.node
const fs = require('fs')

function checkt3kitExt () {
  if (localConf.dirName !== 't3kit') {
    if (!fs.existsSync(`${localConf.rootPath}/../t3kit`)) {
      console.log(`Error: Extension ${localConf.dirName} cannot find t3kit extension`)
      console.log('Please install it by running <composer install> at the root of the project\n')
      process.exit(1)
    }
    if (!fs.existsSync(`${localConf.rootPath}/../t3kit/node_modules`)) {
      console.log('Error: No node modules installed in t3kit extension')
      console.log('Please install all required dependencies by running <npm install> at the root of t3kit extension')
      console.log(`You should use Node.js ${nodeEngine}\n`)
      process.exit(1)
    }
  }
}

exports.checkt3kitExt = checkt3kitExt
