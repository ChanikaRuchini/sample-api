import ballerina/http;

listener http:Listener httpListener = new (8080);

service / on new http:Listener(9090) {
    resource function get users(http:Headers headers) returns json[] {
        json[] jsonArray = [
            {"name": "Alice", "age": 25},
            {"name": "Bob", "age": 30},
            {"name": "Carol", "age": 28}
        ];

        // Return the JSON array
        return jsonArray;
    }

}
