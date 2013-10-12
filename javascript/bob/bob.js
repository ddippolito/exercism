var _ = require('underscore');

var bob = function() {

  var self = {};

  self.hey = function(sentence) {
    return _.reduce(reactions(), function(memo, fun) { var x = fun(sentence); return memo || (x[0] && x[1]) },
                    undefined);
  }

  function keeping(memo, fun, sentence) {
    var x = fun(sentence);
    return memo || (x[0] && x[1])
  }

  function reactions() {
   return  [silent, shouting, question, whatever]
  }

  function shouting(sentence) {
    return [sentence == sentence.toUpperCase(), 'Woah, chill out!'];
  }

  function question(sentence) {
    return [sentence.slice(-1) == "?", "Sure."];
  }

  function silent(sentence) {
    return [sentence.trim() === '', "Fine. Be that way!"];
  }

  function whatever(sentence) {
    return [true, "Whatever."];
  }

  return self;

};

module.exports = bob;

