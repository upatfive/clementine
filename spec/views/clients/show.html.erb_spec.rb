require 'rails_helper'

RSpec.describe "clients/show", type: :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      :name => "Name",
      :main_contact => "Main Contact",
      :main_email => "Main Email",
      :industry => "Industry"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Main Contact/)
    expect(rendered).to match(/Main Email/)
    expect(rendered).to match(/Industry/)
  end
end
