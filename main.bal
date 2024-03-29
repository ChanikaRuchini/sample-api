import ballerina/http;

listener http:Listener httpListener = new (8080);

service / on new http:Listener(9090) {
    resource function get accounts(http:Headers headers) returns json {

        json[] accountsData = [

            {
                "account_id": "blgvvBlXw3cq5GMPwqB6s6q4dLKB9WcVqGDGo",
                "balances": {
                    "available": 100,
                    "current": 110,
                    "iso_currency_code": "USD",
                    "limit": null,
                    "unofficial_currency_code": null
                },
                "mask": "0000",
                "name": "Plaid Checking",
                "official_name": "Plaid Gold Standard 0% Interest Checking",
                "persistent_account_id": "8cfb8beb89b774ee43b090625f0d61d0814322b43bff984eaf60386e",
                "subtype": "checking",
                "type": "depository"
            },
            {
                "account_id": "6PdjjRP6LmugpBy5NgQvUqpRXMWxzktg3rwrk",
                "balances": {
                    "available": null,
                    "current": 23631.9805,
                    "iso_currency_code": "USD",
                    "limit": null,
                    "unofficial_currency_code": null
                },
                "mask": "6666",
                "name": "Plaid 401k",
                "official_name": null,
                "subtype": "401k",
                "type": "investment"
            },
            {
                "account_id": "XMBvvyMGQ1UoLbKByoMqH3nXMj84ALSdE5B58",
                "balances": {
                    "available": null,
                    "current": 65262,
                    "iso_currency_code": "USD",
                    "limit": null,
                    "unofficial_currency_code": null
                },
                "mask": "7777",
                "name": "Plaid Student Loan",
                "official_name": null,
                "subtype": "student",
                "type": "loan"
            }
        ];

        // Return the JSON array
        return accountsData;
    }

}
