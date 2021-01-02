#!/bin/bash
$(cd /server/data/plugins &&
  rm -f MyFirstPlugin.dll &&
  wget https://github.com/shepherdjerred-imposter/my-first-plugin/releases/download/tip/MyFirstPlugin.dll
  )
