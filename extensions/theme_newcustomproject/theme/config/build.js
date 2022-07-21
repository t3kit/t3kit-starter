import { localConf } from './localconf.js'
import { checkt3kitExt } from './check.js'
import { checkNode } from 't3kit/module/check'
import { clean } from 't3kit/module/clean'
import { compileCss } from 't3kit/module/css'
import { compileScss } from 't3kit/module/sass'
import { compileJs } from 't3kit/module/rollup'
import { addCssTemplate, addJsTemplate } from 't3kit/module/template'
import { compressCss, compressJs } from 't3kit/module/compress'
import { revCss, revJs } from 't3kit/module/rev'
import * as utils from 't3kit/module/utils'
checkNode(localConf)
checkt3kitExt(localConf)

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
