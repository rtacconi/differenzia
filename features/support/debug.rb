=begin
After do |scenario|
  exceptions_to_open = [
    Capybara::ElementNotFound,
    RSpec::Expectations::ExpectationNotMetError,
    Cucumber::Ast::Table::Different
  ]
  if scenario.failed? && exceptions_to_open.include?(scenario.exception.class)
    save_and_open_page
  end
end
=end
