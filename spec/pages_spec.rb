require "rails_helper"
require 'spec_helper'

describe "routes for Home", type: :routing do
  it 'routes /home to the welcome controller' do
    expect(get("/home")).to route_to("welcome#index")
  end
end

describe "routes for Article", type: :routing do
  it 'routes /articles to the articles controller' do
    expect(get("/articles")).to route_to("articles#index")
  end

  it 'routes /articles/new to the articles controller' do
    expect(get("/articles/new")).to route_to("articles#new")
  end

  it 'routes /articles to the articles controller' do
    expect(post("/articles")).to route_to("articles#create")
  end

  it 'routes /articles/11 to the articles controller' do
    expect(get("/articles/11")).to route_to(controller: "articles", action: "show", id: "11")
  end

  it 'routes /articles/11 to the articles controller' do
    expect(put("/articles/11")).to route_to(controller: "articles", action: "update", id: "11")
  end

  it 'routes /articles/11 to the articles controller' do
    expect(delete("/articles/11")).to route_to(controller: "articles", action: "destroy", id: "11")
  end
end

describe Article do

  before { @article = Article.new(title: "Example Title", text: "Example Text") }
  # before { }
  # article1 = Factory.create :article
  # puts article1
  subject { @article }

  it{FactoryGirl.build(:article).should respond_to(:title)}

  it { should respond_to(:title) }
  it { should respond_to(:text) }
end
# #it work
# feature 'Home' do
#   scenario 'Home' do
#     #Use capybara to auto complete forms and navigate
#     visit('/home')
#     expect(page).to have_content("Home")
#   end
# end

# describe "Home" do
#
#   describe "Home page" do
#
#     it "should have the h1 'Home'" do
#       visit "/home"
#       expect(page).to have_content('Home')
#     end
#
#     it "should have the base title" do
#       visit home_path
#       expect(page).to have_content('Home')
#     end
#     end
#     end
#




# require 'spec_helper'

# class HelloWorld
#
#   def say_hello
#     "Hello World!"
#   end
#
# end

# describe Article do
#   context “When testing the Article class” do
#
#     it "should say 'Hello World' when we call the say_hello method" do
#       hw = Articles.new
#       message = hw.index
#       expect(message).to eq "Hello World!"
#     end
#
#   end
# end



















# require 'spec_helper'
#
# describe "Home" do
#
#   describe "Home page" do
#
#     it "should have the h1 'Home'" do
#       visit article_path
#       expect(page).to have_content('Home')
#     end
#
#     it "should have the base title" do
#       visit home_path
#       expect(page).to have_title('Blog')
#     end
#
#     # it "should not have a custom page title" do
#     #   visit root_path
#     #   expect(page).not_to have_title('| Home')
#     # end
#   end
#
#   # describe "Help page" do
#   #
#   #   it "should have the h1 'Help'" do
#   #     visit help_path
#   #     expect(page).to have_content('Help')
#   #   end
#   #
#   #   it "should have the title 'Help'" do
#   #     visit help_path
#   #     expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
#   #   end
#   # end
#   #
#   # describe "About page" do
#   #
#   #   it "should have the h1 'About Us'" do
#   #     visit about_path
#   #     expect(page).to have_content('About Us')
#   #   end
#   #
#   #   it "should have the title 'About Us'" do
#   #     visit about_path
#   #     expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
#   #   end
#   # end
#   #
#   # describe "Contact page" do
#   #
#   #   it "should have the content 'Contact'" do
#   #     visit contact_path
#   #     expect(page).to have_content('Contact')
#   #   end
#   #
#   #   it "should have the title 'Contact'" do
#   #     visit contact_path
#   #     expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
#   #   end
#   # end
# end