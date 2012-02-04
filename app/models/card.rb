class Card < ActiveRecord::Base
	validates_format_of :bg,
		:presence => true, 
		:with =>  %r{\.(gif|jpg|jpeg|png)$}i,
		:message => "must be file for a GIF, JPG, JPEG, or PNG image"
	validates_format_of :design,
		:presence => true, 
		:with =>  %r{\.(gif|jpg|jpeg|png)$}i,
		:message => "must be file for a GIF, JPG, JPEG, or PNG image"
	validates :to, :presence => true, 
                    :length => {:minimum => 3, :maximum => 254},
                    :uniqueness => true,
                    :to => true
    validates :from, :presence => true, 
                    :length => {:minimum => 3, :maximum => 254},
                    :uniqueness => true,
                    :from => true
end
