require './lib/history'

describe History do

	let (:history) { History.new }
	let (:message) { double(:message) }
	let (:message2) { double(:message2) }
	let (:message3) { double(:message3) }

context 'Storing messages' do 
	it ' stores a message' do
		expect(history.store(message)).to eq(message)
	end

	

 	it 'stores multiple stored messages' do
 		history.store(message)
 		history.store(message2)
 		history.store(message3)
 		expect(history.log).to eq([message, message2, message3])
	end  
end 

context 'Returning messages' do 

it 'returns stored message' do
		history.store(message)
 		expect(history.log).to eq(message)
 	end

 end 
end 