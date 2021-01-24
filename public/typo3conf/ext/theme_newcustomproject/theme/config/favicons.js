const localConf = require('./localconf')
require('./check/t3kit').checkt3kitExt()
require('../../../t3kit/theme/config/check/dependencies').checkDependencies(localConf)
require('../../../t3kit/theme/config/check/node').checkNode()

const utils = require('../../../t3kit/theme/config/utils')
const { cleanFavicons } = require('../../../t3kit/theme/config/clean')
const { generateFavicons } = require('../../../t3kit/theme/config/real-favicon')

async function favicons () {
  const timeStart = utils.mainTaskStart('Add favicons task')
  await cleanFavicons(localConf)
  await generateFavicons(localConf)
  utils.mainTaskEnd({ taskName: 'Add favicons task', timeStart: timeStart, skipContext: true })
}
favicons()
