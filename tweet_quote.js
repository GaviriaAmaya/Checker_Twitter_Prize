$.getJSON('https://programming-quotes-api.herokuapp.com/quotes/random/lang/en', function (data){
var quote = (data.en) + "\n" + (data.author); console.log (quote);
});
