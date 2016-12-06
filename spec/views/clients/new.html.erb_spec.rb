require 'rails_helper'

RSpec.describe "clients/new", type: :view do
  before(:each) do
    assign(:client, Client.new(
      :name => "MyString",
      :main_contact => "MyString",
      :main_email => "MyString",
      :industry => "MyString"
    ))
  end

  it "renders new client form" do
    render

    assert_select "form[action=?][method=?]", clients_path, "post" do

      assert_select "input#client_name[name=?]", "client[name]"

      assert_select "input#client_main_contact[name=?]", "client[main_contact]"

      assert_select "input#client_main_email[name=?]", "client[main_email]"

      assert_select "input#client_industry[name=?]", "client[industry]"
    end
  end
end
