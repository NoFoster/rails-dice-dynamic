class DiceController < ApplicationController
  
  
  def homepage
    render({ :template => "dice_templates/homepage"})
  end
  
  def flexible
    @dice_rolls = Array.new

    @dice.times do
      new_rolls = rand(1..@sides)

      @dice_rolls.push(new_roll)
    end

    render({ :template => "dice_templates/flexible"})
  end
end
