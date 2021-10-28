import { localConf } from './localconf.js'
import { checkt3kitExt } from './check.js'
import { checkNode } from 't3kit/module/check'
import { clean } from 't3kit/module/clean'
import { compileCss } from 't3kit/module/css'
import { compileScss } from 't3kit/module/sass'
import { compileJs } from 't3kit/module/rollup'
import { addCssTemplate, addJsTemplate } from 't3kit/module/template'
import { watchAll } from 't3kit/module/watch'
import * as utils from 't3kit/module/utils'
checkNode(localConf)
checkt3kitExt(localConf)

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
