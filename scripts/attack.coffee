# Description:
#   Attack Hubot Thatherton III.
#
# Commands:
#   hubot attack! - Choose a random attack message and deduct karma from
#   Hubot Thatherton III

class Attack

  constructor: (@robot) ->
    @attack_messages = [
      "I'm walkin' here!",
      "What do you mean, I'm funny? What do you mean, you mean the way I talk? What?",
      "Enough of your palaver and carpet-bagging!",
      "I do not believe I could learn to like you except on a raft at sea with no other provisions in sight!",
      "I'll explain and I'll use small words so that you'll be sure to understand, you warthog faced buffoon.",
      "Does Barry Manilow know that you raid his wardrobe?",
      "Your code is as secure as me walking around naked carrying a bag of money!",
      "A valiant effort, though. Do you work for Microsoft?"
    ]

  attackMessage: ->
    @attack_messages[Math.floor(Math.random() * @attack_messages.length)]
  
module.exports = (robot) ->
  attack = new Attack robot
  robot.respond /ATTACK!$/i, (msg) ->
    msg.send "#{attack.attackMessage()}"
    robot.emit "attack", {
      message : msg
    }