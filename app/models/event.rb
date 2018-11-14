

class Event < ApplicationRecord

  # attr_accessor :name, :start_time
  belongs_to :user
  # belongs_to :achievement

end


# Model
# SimpleCalendar will look for a method on your model called start_time. This is used to determine the day and time of the event. This should be a DateTime object or at least respond similarly.

# The simplest way to use SimpleCalendar is to have an attribute on your model called start_time and you won't need to make any changes to your model at all. For example, I used rails g model Event name:string start_time:datetime to generate this class:

# class Event < ActiveRecord::Base
#   attr_accessible :name, :start_time
# end
# If you don't have an attribute called start_time on your model, you can simply delegate like so:

# class Event < ActiveRecord::Base
#   attr_accessible :name, :event_start_time
#
#   def start_time
#     event_start_time
#   end
# end
# As long as start_time returns a DateTime object, you're good to go. This means SimpleCalendar is now compatible with any class, whether it's ORM backed like ActiveRecord, Mongoid, or it's just a pure Ruby class. (Yay!)

# Querying

# SimpleCalendar uses params[:month] and params[:year] to determine which month of the calendar to render. You can use these to make your database queries more efficient.
