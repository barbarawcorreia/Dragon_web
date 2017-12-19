# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'dragao_bases/index', :type => :view do
  before(:each) do
    assign(:dragao_bases, [
      DragaoBase.create!(
        :name => "Name",
        :owner_name => "Owner Name"
      ),
      DragaoBase.create!(
        :name => "Name",
        :owner_name => "Owner Name"
      )
    ])
  end

  it 'renders a list of dragao_bases' do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Owner Name".to_s, :count => 2
  end
end
