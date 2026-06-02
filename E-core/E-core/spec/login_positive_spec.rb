# # # Validate that the user can authenticate to the application with the provided credentials
# # # username demouser
# # # Password abc123

# # # steps
# # # Expected action step

# # # 1 Fill in the fields below and click the button
# # #     Log in:

# # # Email: @Username
# # # Password: @Password
# # # The application should redirect the user to the List of Invoices page.

describe 'TC001 - Login (Positive)' , :positive do 

    before(:each) do
        visit '' 
    end

    puts "starting scenario Positive"

    it 'Login Positive' do

        visit ''

        fill_in 'username', with: 'demouser'
        fill_in 'password', with: 'abc123'

        click_button 'Login'
        

        expect(page).to have_content 'Invoice List'


    end

end