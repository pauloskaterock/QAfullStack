# TC003 - Validate invoice details
# Goal
# Validate that the invoice information is displayed:

# Iteration DataValue
# 1 Username demouser Password abc123
# HotelName Rendezvous Hotel
# InvoiceDate 01/14/2018
# DueDate 01/15/2018
# InvoiceNumber 110
# BookingCode 0875
# CustomerDetails JOHNY SMITH R2, AVENUE DU MAROC 123456
# Room Superior Double
# CheckIn 01/14/2018
# Checkout 01/15/2018
# TotalStayCount 1
# TotalStayAmount $150
# DepositNow USD $20.90
# Tax&VAT USD $19.00
# TotalAmount USD $209.00

# The "Invoice List" page is displayed
# steps
# Expected action step
# 1 Click the Invoice Details link for the first item presented on the screen.
# The application opens the Invoice Details Screen.
# the information on the screen matches

# the one given in the data table.

# 2 Validate the information presented:

# Hotel name: @HotelName
# Invoice date: @InvoiceDate
# Due date: @DueDate
# Invoice number: @InvoiceNumber
# Booking code: @BookingCode
# Customer Details: @CustomerDetails
# Room: @Room
# Checkin: @CheckIn
# Check: @CheckOut
# Total stay count: @TotalStayCount
# Total stay amount: @TotalStayAmount
# Deposit now: @DepositNow
# Tax and VAT: @Tax&VAT
# Total amount: @TotalAmount
# The information on the screen matches
# the one given in the data table.

describe 'TC003 - Validate invoice details!' , :invoice do
    before(:each) do
      visit ''

      
    end
  
    it 'validates invoice information' do
        puts 'starting scenario Validate invoice details'

        fill_in 'username', with: 'demouser'
        fill_in 'password', with: 'abc123'

        click_button 'Login'

       
        link = find('a[href="/invoice/0"][target="_blank"]')
        
        link.click
        

       
        
       
        expect(page).to have_content 'Invoice Details'
        expect(page).to have_content 'Rendezvous Hotel' # HotelName Rendezvous Hotel
        expect(page).to have_content '14/01/2018' #InvoiceDate 14/01/2018
        expect(page).to have_content '15/01/2018'#DueDate 15/01/2018
        expect(page).to have_content '110'#InvoiceNumber 110
        expect(page).to have_content 'Invoice Details'
      
      
        invoiceTb = all('table tbody tr')
        in_va = invoiceTb.detect{|tb| tb.text.include?('1875','Superior Double',' 01/14/2018',' 01/15/2018',' 1',' $150','USD $20.90','USD $19.00','USD $209.00')}
        
    end    
        
    it 'failing validates invoice information' do
      puts 'failing scenario Validate invoice details'

      fill_in 'username', with: 'demouser'
      fill_in 'password', with: 'abc123'

      click_button 'Login'

      link = find('a[href="/invoice/0"][target="_blank"]')
      link.click

        expect(page).to have_content 'Invoice Details'
        expect(page).to have_content 'Rendezvous Hotel' # HotelName Rendezvous Hotel
        expect(page).to have_content '14/01/2018' #InvoiceDate 14/01/2018
        expect(page).to have_content '15/01/2018'#DueDate 15/01/2018
        expect(page).to have_content '110'#InvoiceNumber 110
        expect(page).to have_content '0875'# BookingCode 0875
        expect(page).to have_content 'JOHNY SMITH R2, AVENUE DU MAROC 123456'#CustomerDetails JOHNY SMITH R2, AVENUE DU MAROC 123456
        expect(page).to have_content 'Superior Double' #Room Superior Double
        expect(page).to have_content ' 01/14/2018'# CheckIn 14/01/2018
        expect(page).to have_content ' 01/15/2018' #CheckOut 15/01/2018
        expect(page).to have_content ' 1' #TotalStayCount 1
        expect(page).to have_content ' $150' #TotalStayAmount $150
        expect(page).to have_content 'USD $20.90' #DepositNow USD $20.90
        expect(page).to have_content 'USD $19.00' #Tax&VAT USD $19.00
        expect(page).to have_content 'USD $209.00' #TotalAmount USD $209.00
    end
  end
  

