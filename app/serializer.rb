class Serializer
    # create an initializer method for this class that accepts one parameter
    def initialize(data)
        @data = data
    end

    # create the serializer method called in the test files
    # it implements the as-json method
    def serialize
        as_json
    end

    # convert the struct into json as required in the test
    def as_json
        # check what data is recieved and then serialize it accordingly
        if (@data.class == Comment)
            {
                id: @data.id,
                body: @data.body
            }
        else
            {
                id: @data.id,
                title: @data.title,
                date: @data.date.strftime('%d-%m-%Y')
            }
        end
    end
end
