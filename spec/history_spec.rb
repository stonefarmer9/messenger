require './lib/history'

describe History do

	let (:history) { History.new }
	let (:message) { double(:message)}

	it ' stores a message' do
		expect(history.store(message)).to eq(message)
	end

	it 'returns stored message' do
		history.store(message)
 		expect(history.log).to eq(message)
 	end 
end  

