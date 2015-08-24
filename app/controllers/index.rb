get '/' do
  # Look in app/views/index.erb
  @dic = []
  erb :index
end

post '/' do
  # Look in app/views/index.erb
  # puts params
  # @word = params[:input_word]
  redirect "/#{params[:input_word]}"

  # @word = params[:word]
  # @dic = Word.anagrams(@word)

  # erb :index
end

get '/:word' do
  # Look in app/views/index.erb
  @word = params[:word]
  @dic = Word.anagrams(@word)

  erb :index
end
