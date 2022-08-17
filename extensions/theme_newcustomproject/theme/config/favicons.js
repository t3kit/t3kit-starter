import { localConf } from './localconf.js'
import { checkNode } from 't3kit/module/check'
import { cleanFavicons } from 't3kit/module/clean'
import { generateFavicons } from 't3kit/module/real-favicon'
import * as utils from 't3kit/module/utils'
checkNode(localConf)

async function favicons () {
  const timeStart = utils.mainTaskStart('Add favicons task')
  await cleanFavicons(localConf)
  await generateFavicons(localConf)
  utils.mainTaskEnd({ taskName: 'Add favicons task', timeStart: timeStart, skipContext: true })
}

favicons()
