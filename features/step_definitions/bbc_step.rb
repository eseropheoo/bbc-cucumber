Given(/^I am on the BBC website$/) do
  @bbc.visit("http://www.bbc.co.uk/news")
  expect(@bbc.current_url).to eq("http://www.bbc.co.uk/news")
end

When(/^I click on the sign in button$/) do

		@bbc.find_by_id("idcta-link").has_button?
		@bbc.find_by_id("idcta-link").click
end

And(/^I enter the incorrect sign in credentials$/) do
  @bbc.find_by_id("username-input").has_field?
  @bbc.fill_in("username-input", :with => "ese4ver@hotmail.co.uk")
  @bbc.find_by_id("password-input").has_field?
  @bbc.fill_in("password-input", :with => "fgduog")
  
end

Then(/^click sign in$/) do
	@bbc.find_by_id("submit-button").has_button?
	@bbc.find_by_id("submit-button").click
	
  
end

And(/^find an error message$/) do
	@bbc.assert_text(:visible, "Sorry, we can’t find an account with that email. You can ")
	# sleep 5
end
