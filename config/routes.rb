CapybaraScreenshotTest::Application.routes.draw do
  get '/selenium' => 'welcome#selenium'
  get '/rack' => 'welcome#rack'
  get '/webkit' => 'welcome#webkit'
  get '/nested-test' => 'welcome#nested_test'
  root :to => "welcome#index"
end
