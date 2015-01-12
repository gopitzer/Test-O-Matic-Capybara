When(/^I'm login to "([^"]*)" environment with these credentials:$/) do |env,table|
  customer = ''
  pass = ''
  admin = ''
  table.hashes.each do |hash|
    #puts hash
    customer = hash['customer']
    admin = hash['admin']
    pass = hash['pass']
  end
  visit (env)
  fill_in 'company', :with => customer
  fill_in 'username', :with => admin
  fill_in 'password', :with => pass
  click_button 'Login'

  if has_content?('Already logged in.')
    click_link('Click here')
  end
end