require 'rails_helper'

RSpec.describe "clients/index", type: :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        :name => "Name",
        :main_contact => "Main Contact",
        :main_email => "Main Email",
        :industry => "Industry"
      ),
      Client.create!(
        :name => "Name",
        :main_contact => "Main Contact",
        :main_email => "Main Email",
        :industry => "Industry"
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Main Contact".to_s, :count => 2
    assert_select "tr>td", :text => "Main Email".to_s, :count => 2
    assert_select "tr>td", :text => "Industry".to_s, :count => 2
  end
end
