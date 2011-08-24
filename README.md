Protorails is an easy way to handle Protocol Buffers in Rails.

It has two major dependencies:

* ruby_protobuf
* protojson

# Getting Started

Protorails handles all the Rails related stuff to be able to use Protocol Buffers specification tightly in Rails. 

Protorails shall be used as any another dependency in a Rails application, including it in the Gemfile file, in an application that wants to use protojson to communicate with a third party.

# Add as dependency

In your Rails 3 project, you should modify your Gemfile with this line:

    gem 'protorails'

Currently protorails has not been published yet, so please use directly this github repository:

	gem 'protorails', :git => 'git@github.com:juandebravo/protorails.git'

# Install

Protorails needs to define new mime types and renderers. This can be done executing the following command:

    rake generate protorails:install

This command will include the required configuration to allow the protojson specific formats:

    render indexed: object 
    render tagmap: object

A client request can specify the desired data format as usual, including the Accept HTTP header or including the format as a suffix in the URI. This command defines also two new supported formats:

    application/indexed
        => curl -H "Accept: application/indexed" http://localhost:3000/index
        => curl http://localhost:3000/index.indexed

    application/tagmap
    => curl -H "Accept: application/tagmap" http://localhost:3000/index
    => curl http://localhost:3000/index.tagmap


# Generate a proto model (WIP...)

	To be done...
	
    rake generate protorails:model file.proto model

This command will compile the proto definitions to ruby classes (using the ruby_protobuf gem).

If no model is provided, all the messages in the proto file will be compiled.
If a model is provided, this command should generate only that specific model

# Generate a scaffold (WIP...)

	To be done...
	
    rake generate protorails:scaffold file.proto model

This command will compile the proto and generate a controller to handle CRUD operations per each message:

* create: POST that receives a proto and stores in DB using an AR model named as the proto model. The proto model shall include a helper to convert the objet to the AR model (pretty easy as AR model defines the constructor with a Hash of key-value attributes).

* show: GET that receives the proto primary identifier, retrieves it from DB using an AR model, populates the proto message and returns using the specified format

* update: PUT...

* destroy: DELETE...

* index: GET that receives a specific parameter (a valid proto message attribute), retrieves one or more objects from DB using AR, populates the proto message(s) and returns using the specified format.


# Forthcoming features

* be ORM agnostic: DataMapper, mongoId... instead of AR

* create also the DB model when compiling the proto definition

* specify the relation Proto Model <-> DB Model. i.e. 

    rake generate protorails:scaffold bluevia.proto Content Data => the Content proto message is related to Data DB model.