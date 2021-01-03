#!/bin/bash
set -x
set -e

(cd /server/data/libraries &&
        rm ./*.dll
        curl -L https://github.com/shepherdjerred-impostor/impostorCord/releases/download/continous-integration/libraries.zip -O
        unzip -o libraries.zip
        rm libraries.zip
)

(cd /server/data/plugins &&
        curl -L https://github.com/shepherdjerred-impostor/commands/releases/download/continous-integration/Commands.dll > Commands.dll
        curl -L https://github.com/shepherdjerred-impostor/discord/releases/download/continous-integration/Discord.dll > Discord.dll
        curl -L https://github.com/shepherdjerred-impostor/impostorCord/releases/download/continous-integration/ImpostorCord.dll > ImpostorCord.dll
)
