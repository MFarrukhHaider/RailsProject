class ProjectCleanupWorker
    include Sidekiq::Worker

    def perform(complexity)
        case complexity
        when "super_hard"
            sleep 20
            puts "Really took quite a bit of effort"
        when "hard"
            sleep 10
            puts "That was a bit of work"
        else
            sleep 1
            puts "that wasnt a lot of effort"
        end
    end
end