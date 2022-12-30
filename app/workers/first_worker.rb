class FirstWorker
    include Sidekiq::Worker
  
    def perform(*args)
        Country.first.update(name: "aaaaa")
    end
end