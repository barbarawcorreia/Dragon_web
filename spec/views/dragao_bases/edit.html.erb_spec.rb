# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "dragao_bases/edit", :type => :view do
  before(:each) do
    @dragao_base = assign(:dragao_base, DragaoBase.create!(
      :name => "MyString",
      :owner_name => "MyString"
    ))
  end

  it 'renders the edit dragao_base form' do
    render

    assert_select "form[action=?][method=?]", dragao_base_path(@dragao_base), "post" do

      assert_select "input#dragao_base_name[name=?]", "dragao_base[name]"

      assert_select "input#dragao_base_owner_name[name=?]", "dragao_base[owner_name]"
    end
  end
end
