require 'sneakers'

class CommentsWorker
  include Sneakers::Worker
  # This worker will connect to "dashboard.comments" queue
  # env is set to nil since by default the actuall queue name would be
  # "dashboard.posts_development"
  from_queue "dashboard.comments", env: nil
  # work method receives message payload in raw format
  # in our case it is JSON encoded string
  # which we can pass to RecentPosts service without
  # changes
  def work(raw_path)
    image = ::MiniMagick::Image::open(raw_path)
    image.resize "100x100"
    image.write raw_path

    # RecentPosts.push(image, raw_path)
    ack! # we need to let queue know that message was received
  end
end