describe "create user" do
  before(:each) do
    @users = []
    3.times{ @users << User.create }
  end

  describe "on the index page" do
    it "should list the user first_name" do
      visit '/users'
      @users.each do |user|
        page.should have_content(user.first_name)
      end
    end

    it "should create user", js: true do
      visit '/users/new'
      within(".user") do
        fill_in 'First name', with: 'test fname'
        fill_in 'Last name', with: 'test lname'
        fill_in 'Age', with: '22'
        click_button 'Create User'
      end
      expect(User.count).to eq(4)
    end
  end
end
