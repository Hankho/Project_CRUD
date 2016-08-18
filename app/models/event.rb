class Event < ApplicationRecord

	validates_presence_of :name, :description   #name & description必填
end
