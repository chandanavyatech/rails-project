require 'rails_helper'

RSpec.describe "genres/edit", type: :view do
  before(:each) do
    @genre = assign(:genre, Genre.create!(
      :index => "MyString",
      :view => "MyString",
      :create => "MyString",
      :new => "MyString",
      :edit => "MyString",
      :delete => "MyString",
      :show => "MyString"
    ))
  end

  it "renders the edit genre form" do
    render

    assert_select "form[action=?][method=?]", genre_path(@genre), "post" do

      assert_select "input#genre_index[name=?]", "genre[index]"

      assert_select "input#genre_view[name=?]", "genre[view]"

      assert_select "input#genre_create[name=?]", "genre[create]"

      assert_select "input#genre_new[name=?]", "genre[new]"

      assert_select "input#genre_edit[name=?]", "genre[edit]"

      assert_select "input#genre_delete[name=?]", "genre[delete]"

      assert_select "input#genre_show[name=?]", "genre[show]"
    end
  end
end
