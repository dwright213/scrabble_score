require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_score')

  get('/') do
    erb(:form)
  end

  get('/result') do

  @word = params.fetch('word_input')
  @logic_result = @word.scrabble_cook()

  if (@word == "melonology")
    @score = "I'm sorry, that's not a word feel free to go away D:"

  elsif (@logic_result != "You shall not pass!")
    @score = @logic_result

  else
    @score = "Illegal input, the police have been notified"
end

    erb(:result)
  end
