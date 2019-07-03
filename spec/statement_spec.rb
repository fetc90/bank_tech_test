# frozen_string_literal: true

describe 'Statement' do

  it 'is created with the user\'s transaction history by default' do 
    expect{ Statement.new }.to raise_error(ArgumentError)
  end 

#   describe 'print statement' do 
#     it 'prints bank statement in reverse order with headings' do  
        
#             history = [
#                 ['10/01/2012', format('%.2f', 1000), '', format('%.2f', 1000)],
#                 ['13/01/2012', format('%.2f', 2000), '', format('%.2f', 3000)],
#                 ['14/01/2012', '', format('%.2f', 500), format('%.2f', 2500)]
#                 ]

#         statement = Statement.new(history)
#         expect(statement.print).to eq(
#                          'date || credit || debit || balance
#                           14/01/2012 || || 500.00 || 2500.00
#                           13/01/2012 || 2000.00 || || 3000.00
#                           10/01/2012 || 1000.00 || || 1000.00'
#                           )
#     end 
#   end 
end 