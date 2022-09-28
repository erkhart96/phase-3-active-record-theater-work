class Role < ActiveRecord::Base
    has_many :auditions 
    
    def actors
        list_actor = []
        auditions.each do |aud|
            list_actor << aud.actor
        end

        list_actor
end

    def locations
        auditions.map { |aud| aud.location }
    end

    def lead
        auditions.find_by(hired: true) ||
        'no actor has been hired for this role.'
    end

    def understudy
        auditions.where(hired: true).second || 'no understudy has been hired for this role.'
    end
end