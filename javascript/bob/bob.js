var Bob = function() { };

Bob.prototype = {
  hey: function(sentence) {
    if ( shouting(sentence) ) {
      return 'Woah, chill out!';
    } else if ( question(sentence) ) {
      return "Sure.";
    } else {
      return "Whatever.";
    }
  }
}

function shouting(sentence) {
  return sentence == sentence.toUpperCase()
}

function question(sentence) {
  return sentence.slice(-1) == "?";
}

module.exports = Bob;

