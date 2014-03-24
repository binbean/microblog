require 'spec_helper'

describe "Static Pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_content('microblog') }
  end

  describe "Help pages" do
    before { visit help_path }
    it{ should  have_title(full_title('Help')) }
  end

  describe "Abuout pages" do
    before { visit about_path }
    it{ should have_title(full_title('About Us')) }
  end
end
