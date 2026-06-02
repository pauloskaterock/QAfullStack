# Validate that the application denies user login with invalid credentials:
# steps

# Expected action step
#      1 Fill in the fields below and click the button
#      Log in:
    
# Email: @Username
# Password: @Password

# The application shows the message:
# Incorrect username or password

# 1 Username Demouser Password abc123
# 2 Username demouser_ Password xyz
# 3 Username demouser Password nananana
# 4 Username demouser Password abc123


describe 'TC002 - Login (Negative)' , :negative do 

   

    before(:each) do
        visit '' 
    end

    it 'Username Demouser/Password abc123' , :one do 
        puts "starting scenario one"
        fill_in 'username', with: 'Demouser'
        fill_in 'password', with: 'abc123'

        click_button 'Login'

        expect(page).to have_content 'Wrong username or password.'
        
    end

    it 'Username demouser_ /Password xyz' , :two do
        puts "starting scenario two"
        

        fill_in 'username', with: 'demouser_'
        fill_in 'password', with: 'xyz'

        click_button 'Login'

         expect(page).to have_content 'Wrong username or password.'
        
    end

    it 'Username demouser/Password nananana' , :tree do
        puts "starting scenario tree"
        

        fill_in 'username', with: 'demouser'
        fill_in 'password', with: 'nananana'

        click_button 'Login'

         expect(page).to have_content 'Wrong username or password.'
       
    end

    it 'login Username demouser/Password abc123' , :four do
        puts "starting scenario four"
       

        fill_in 'username', with: 'demouser'
        fill_in 'password', with: 'abc123'

        click_button 'Login'

         expect(page).to have_content 'Invoice List'

         puts "passed: No error message displayed"

         
    end

   
end