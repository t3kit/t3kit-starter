const localConf = require('./localconf')
require('./check/t3kit').checkt3kitExt()
require('../../../t3kit/theme/config/check/dependencies').checkDependencies(localConf)
require('../../../t3kit/theme/config/check/node').checkNode()

const { clean } = require('../../../t3kit/theme/config/clean')
const { compileCss } = require('../../../t3kit/theme/config/css')
const { compileScss } = require('../../../t3kit/theme/config/sass')
const { compileJs } = require('../../../t3kit/theme/config/rollup')
const { addCssTemplate, addJsTemplate } = require('../../../t3kit/theme/config/template')
const { compressCss, compressJs } = require('../../../t3kit/theme/config/compress')
const { revCss, revJs } = require('../../../t3kit/theme/config/rev')
const utils = require('../../../t3kit/theme/config/utils')

async function build () {
  const timeStart = utils.mainTaskStart('Build task')
  await clean(localConf)
  await compileScss(localConf)
  await Promise.all([compileCss(localConf), compileJs(localConf)])
  if (process.env.NODE_ENV === 'production') {
    await Promise.all([revCss(localConf), revJs(localConf)])
    await Promise.all([addCssTemplate(localConf), addJsTemplate(localConf)])
    await Promise.all([compressCss(localConf), compressJs(localConf)])
  } else {
    await Promise.all([addCssTemplate(localConf), addJsTemplate(localConf)])
  }

  utils.mainTaskEnd({ taskName: 'Build task', timeStart: timeStart })
}
build()
