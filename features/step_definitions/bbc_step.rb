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
  @bbc.fill_in("username-input", :with => "dave4ver@hotmail.co.uk")
  @bbc.find_by_id("password-input").has_field?
  @bbc.fill_in("password-input", :with => "fgduog")
  
end

Then(/^I am not logged in$/) do
	@bbc.find_by_id("submit-button").has_button?
	@bbc.find_by_id("submit-button").click
	
  
end

And(/^find an error message$/) do
	 puts @bbc.assert_text(:visible, "Sorry, we can’t find an account with that email. You can ")
end

When(/^I click on the register link$/) do
  @bbc.has_link?("Register now")
  @bbc.find_link("Register now").click  
end

And(/^I am on the enter birthday credentials$/) do
	@bbc.find_by_id("day-input").has_field?
	@bbc.fill_in("day-input", :with => '10')

	@bbc.find_by_id("month-input").has_field?
	@bbc.fill_in("month-input", :with => '10')

	@bbc.find_by_id("year-input").has_field?
	@bbc.fill_in("year-input", :with => '1993')
end

And(/^click next$/) do
  @bbc.find_by_id("submit-button").click
end

Then(/^I fill in the rest of the forms$/) do
	@bbc.find_by_id("email-input").has_field?
	@bbc.fill_in("email-input", :with =>  "test@hotmail.com")

	@bbc.find_by_id("password-input").has_field?
	@bbc.fill_in("password-input", :with =>  "capybara001")

  @bbc.find_by_id("postcode-input").has_field?
  @bbc.fill_in("postcode-input", :with => "SE28 8RE")

  @bbc.find_by_id("gender-input").has_field?
  @bbc.find(:select, "gender-input").find(:option, 'Male').select_option

 #Need to find a capybara method to capture a text within a span
 	@bbc.find("span", text: "No, thanks").click
	
end

And(/^I click next now registered$/) do
	@bbc.find_by_id("submit-button").click
end



