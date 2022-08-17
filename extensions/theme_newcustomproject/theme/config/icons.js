import { localConf } from './localconf.js'
import { checkNode } from 't3kit/module/check'
import { cleanIcons } from 't3kit/module/clean'
import { copyIcons } from 't3kit/module/copy'
import * as utils from 't3kit/module/utils'
checkNode(localConf)

async function icons () {
  const timeStart = utils.mainTaskStart('Add icons task')
  await cleanIcons(localConf)
  await copyIcons(localConf)
  utils.mainTaskEnd({ taskName: 'Add icons task', timeStart: timeStart, skipContext: true })
}

icons()
