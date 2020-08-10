require_relative "actors"

module Actors

    actor :Input do
        Output.push gets
    end

    actor :Output do
        @test ||= ""
        @test += pop.split("\n")[0]

        puts @test

        if (@test[@test.length-4,@test.length] == 'quit') 
            raise 'quitting'
        end
    end
end

Actors.run [Actors::Input, Actors::Output]