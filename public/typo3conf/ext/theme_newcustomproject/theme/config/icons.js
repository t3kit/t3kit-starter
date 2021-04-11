const localConf = require('./localconf')
require('./check/t3kit').checkt3kitExt()
require('t3kit/theme/config/check/node').checkNode()

const utils = require('t3kit/theme/config/utils')
const { cleanIcons } = require('t3kit/theme/config/clean')
const { copyIcons } = require('t3kit/theme/config/copy')

async function icons () {
  const timeStart = utils.mainTaskStart('Add icons task')
  await cleanIcons(localConf)
  await copyIcons(localConf)
  utils.mainTaskEnd({ taskName: 'Add icons task', timeStart: timeStart, skipContext: true })
}
icons()
