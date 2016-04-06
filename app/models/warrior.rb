class Warrior < ActiveRecord::Base
  belongs_to :squad


  COLORS = [
    ["blue", "#3772FF"],
    ["purple", "#F038FF"],
    ["yellow", "#F2FF49"],
    ["red", "#FF4242"],
    ["green", "#36FA32"],
  ]



  # COLORS = [
  #   ["#3772FF","#F038FF","#F2FF49","#FF4242","#36FA32"],
  #   name: ["blue", "purple", "yellow", "red", "green" ]
  # }

end
