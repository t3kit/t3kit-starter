const localConf = require('./localconf')
require('./check/t3kit').checkt3kitExt()
require('../../../t3kit/theme/config/check/dependencies').checkDependencies(localConf)
require('../../../t3kit/theme/config/check/node').checkNode()

const utils = require('../../../t3kit/theme/config/utils')
const { clean } = require('../../../t3kit/theme/config/clean')
const { compileCss } = require('../../../t3kit/theme/config/css')
const { compileScss } = require('../../../t3kit/theme/config/sass')
const { compileJs } = require('../../../t3kit/theme/config/rollup')
const { addCssTemplate, addJsTemplate } = require('../../../t3kit/theme/config/template')
const { watchAll } = require('../../../t3kit/theme/config/watch')

async function start () {
  const timeStart = utils.mainTaskStart('Build task')
  await clean(localConf)
  await compileScss(localConf)
  await Promise.all([compileCss(localConf), compileJs(localConf)])
  await Promise.all([addCssTemplate(localConf), addJsTemplate(localConf)])
  utils.mainTaskEnd({ taskName: 'Build task', timeStart: timeStart })
  await watchAll(localConf)
  console.log('Watching files...')
}
start()
