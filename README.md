# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

Setup gems
* bundle i

Creation and initialization database
* rake db:create

* rake db:migrate

Setup RabbitMQ
* rake rabbitmq:setup

Go to http://localhost:15672 
Default:
Login: guest
Password: guest

Start the worker
* WORKERS=CommentsWorker rake sneakers:run


