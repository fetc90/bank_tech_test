# frozen_string_literal: true

describe 'Statement' do
  let(:bank) { double :bank }

  before do 
    history = [
        ['10/01/2012', format('%.2f', 1000), '', format('%.2f', 1000)],
        ['13/01/2012', format('%.2f', 2000), '', format('%.2f', 3000)],
        ['14/01/2012', '', format('%.2f', 500), format('%.2f', 2500)]
        ]
  end 

  it 'is created with the user\'s transaction history by default' do 
    expect{ Statement.new }.to raise_error(ArgumentError)
  end 

end 
  
#   statement = statement.new(history)
#   describe 'print statement' do
#     it 'prints user\'s transactions under headings' do  
#         allow(bank).to receive(:print_statement).and_return([
#                                                           ['10/01/2012', format('%.2f', 1000), '', format('%.2f', 1000)],
#                                                           ['13/01/2012', format('%.2f', 2000), '', format('%.2f', 3000)],
#                                                           ['14/01/2012', '', format('%.2f', 500), format('%.2f', 2500)]
#                                                           ])
#         bank.print_statement
#         expect(statement.print).to eq(
#                   'date || credit || debit || balance
#                   14/01/2012 || || 500.00 || 2500.00
#                   13/01/2012 || 2000.00 || || 3000.00
#                   10/01/2012 || 1000.00 || || 1000.00')
#     end 
#   end 
# end 
  

#   before do
#     # allow(bank).to receive(:print_statement).with(1000).and_return(1000, 1000)
#     history = [
#         ['10/01/2012', format('%.2f', 1000), '', format('%.2f', 1000)],
#         ['13/01/2012', format('%.2f', 2000), '', format('%.2f', 3000)],
#         ['14/01/2012', '', format('%.2f', 500), format('%.2f', 2500)]
#         ]
#     end 


# #     allow(bank).to receive(:print_statement).and_return([
# #                                                         ['10/01/2012', format('%.2f', 1000), '', format('%.2f', 1000)],
# #                                                         ['13/01/2012', format('%.2f', 2000), '', format('%.2f', 3000)],
# #                                                         ['14/01/2012', '', format('%.2f', 500), format('%.2f', 2500)]
# #                                                         ])
# #   end
  
#   describe 'print statement' do
#     it 'prints user\'s transactions under headings' do
       
       
       
       
       
       
#         history = [
#             ['10/01/2012', format('%.2f', 1000), '', format('%.2f', 1000)],
#             ['13/01/2012', format('%.2f', 2000), '', format('%.2f', 3000)],
#             ['14/01/2012', '', format('%.2f', 500), format('%.2f', 2500)]
#             ]
#       expect(statement.print).to eq(
#         'date || credit || debit || balance
#           14/01/2012 || || 500.00 || 2500.00
#           13/01/2012 || 2000.00 || || 3000.00
#           10/01/2012 || 1000.00 || || 1000.00
#           '
#       )
#     end
#   end
# end
