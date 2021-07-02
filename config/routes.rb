Rails.application.routes.draw do
  get 'hello' => "hello#hello"
  get 'say/hello/joe' => "hello#say_hello_joe"
  get 'say/hello(/:name)' => "hello#say"
  get 'times' => "hello#times"
  get 'times/restart' => "hello#reset"

  root 'hello#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
