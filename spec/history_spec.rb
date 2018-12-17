require './lib/history'

describe History do

	let (:history) { History.new }

	it ' stores a message' do
	message = double(:message)
	expect(history.store(message)).to eq(message)

	end
end  

