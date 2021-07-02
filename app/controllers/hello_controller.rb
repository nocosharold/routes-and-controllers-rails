class HelloController < ApplicationController
  def index
    render plain: 'What do you want me to say???'
  end
  
  def hello
    render plain: 'Hello Coding Dojo!'
  end
  
  def say_hello
    render plain: 'Saying Hello!'
  end
  
  def say_hello_joe
    render plain: 'Saying Hello Joe!'
  end

  def say
    if params[:name]
      if params[:name] == 'michael'
        redirect_to '/say/hello/joe'
      else
        redirect_to '/say/hello/joe'
      end
    else
      render plain: 'Saying Hello!'
    end
  end
  
  def times
    if session[:times] == nil
        session[:times] = 1
        times = session[:times]
    else
        times = session[:times]
    end
  
    render plain: "you visited this URL #{times} times"
    session[:times] += 1
  end

  def reset
    reset_session
    render plain: 'Destroyed the session!'
  end

end
