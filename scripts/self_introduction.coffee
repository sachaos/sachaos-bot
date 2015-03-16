# Description:
#   Self introduction of sachaos.
#   For recruit event Application Developper Festival.
#
# Commands:
#  hubot
# 
# Author:
#  sachaos

tweets = [
    '卒業を受け入れる五段階プロセス 1. 否認 2. 怒り 3. 取引 4. 抑うつ 5. 受容',
    'けいおんのメドレー聴いて泣いてる。',
    'ThinkPadの落としてもなんとも思わない感じ好き。Macだったら軽く発狂する。',
    '忙しさはブラウザのタブの数に比例する。'
]

shuffle = (array) ->
    i = array.length
    if i is 0 then return false
    while --i
        j = Math.floor Math.random() * (i + 1)
        tmpi = array[i]
        tmpj = array[j]
        array[i] = tmpj
        array[j] = tmpi
        return
    return

module.exports = (robot) ->
    robot.hear /辛い/i, (msg) ->
        msg.send 'わかる'

    robot.hear /どこすみ/i, (msg) ->
        msg.send '福岡です。'

    robot.hear /どこ大/i, (msg) ->
        msg.send '九大です。'

    robot.hear /LINE/i, (msg) ->
        msg.send 'やってない。'

    robot.hear /twitter/i, (msg) ->
        msg.send 'どうぞ。http://twitter.com/sachaos'

    robot.hear /github/i, (msg) ->
        msg.send 'どうぞ。http://github.com/sachaos'

    robot.hear /ホームページ/i, (msg) ->
        msg.send 'どうぞ。http://sachaos.net/'

    robot.hear /エディタ/i, (msg) ->
        msg.send 'emacsが好きです。'

    robot.hear /言語/i, (msg) ->
        msg.send 'Pythonが好きです。'

    robot.hear /なんか言って/i, (msg) ->
        shuffle tweets
        msg.send tweets[0]
