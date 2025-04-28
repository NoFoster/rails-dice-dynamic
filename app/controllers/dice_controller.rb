class DiceController < ApplicationController
  
  
  def homepage
    render({ :template => "dice_templates/homepage"})
  end
  
  def flexible
    # 1) pull in the dynamic segments from params and convert to integers
    @dice  = params.fetch("dice").to_i
    @sides = params.fetch("sides").to_i

    # 2) build up your rolls
    @dice_rolls = []
    @dice.times do
      new_roll = rand(1..@sides)
      @dice_rolls.push(new_roll)
    end

    render({ :template => "dice_templates/flexible" })
  end
end



