require 'test_helper'

class QuizzesControllerTest < ActionDispatch::IntegrationTest
  test 'should get play' do
    get quizzes_play_url
    assert_response :success
  end
end
