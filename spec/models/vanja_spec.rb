require 'rails_helper'

RSpec.describe Article, type: :model do
  it "shows all articles" do

    a = Article.create(title: "vanja", text: "bla")
    b = Article.create(title: "dzoni", text: "dzA")
    lists_a = [a,b]
    expect(Article.all).to eq(lists_a)
  end
end
