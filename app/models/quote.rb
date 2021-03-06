class Quote < ActiveRecord::Base
	validates :saying, :presence => true, :length => { :maximum => 140, :minimum => 3 }
	validates :author, :presence => true, :length => { :maximum => 50, :minimum => 3 }

  def unique_tag
    initials = self.author.split(" ").collect do |sub_str|
      sub_str[0]
    end
    initials.join + '#' + self.id.to_s
  end

end
