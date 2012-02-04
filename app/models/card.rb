class Card < ActiveRecord::Base
	validates_format_of :bg,
		:presence => true, 
		:with =>  %r{\.(gif|jpg|jpeg|png)$}i,
		:message => "must be selected"
	validates_format_of :design,
		:presence => true, 
		:with =>  %r{\.(gif|jpg|jpeg|png)$}i,
		:message => " must be selected"
	validates :to, :presence => true
    validates :from, :presence => true
    validates :recipient, :presence => true, 
                    :length => {:minimum => 3, :maximum => 254},
                    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
                    
end
