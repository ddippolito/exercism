var Bob = function() { };

Bob.prototype = {
  hey: function(sentence) {
    if ( silent(sentence) ) {
      return 'Fine. Be that way!';
    } else if ( shouting(sentence) ) {
      return 'Woah, chill out!';
    } else if ( question(sentence) ) {
      return 'Sure.';
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

function silent(sentence) {
  return sentence.trim() === '';
}

module.exports = Bob;

