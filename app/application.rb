#TO access website just type http://localhost:[port#]

#Goal of this is to create an online Application when called... it will
#randomly generate 3 numbers... and if all 3 numbers are matching you win!

class Application

  def call(env)
    resp = Rack::Response.new
    #resp.write "Hello, World"
    #resp.finish

    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"

    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  
  end

end
