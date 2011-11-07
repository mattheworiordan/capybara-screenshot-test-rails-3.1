CapybaraScreenshotTest::Application.routes.draw do
  get '/selenium' => 'welcome#selenium'
  get '/rack' => 'welcome#rack'
  get '/webkit' => 'welcome#webkit'
  root :to => "welcome#index"
end
