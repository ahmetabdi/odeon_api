# OdeonApi

This gem wraps the unofficial odeon api, endpoints were found by proxying requests from the android mobile app.

*Probably* not working anymore, you can fnd the API calls the mobile apps make by installing mitmproxy and proxying the requests from an Android/iOS device

## Installation

    $ gem install odeon_api

## Usage

```Ruby
OdeonApi::Cinema.all
OdeonApi::Film.all
OdeonApi::Film.find(odeon_id)
```

## License

Do as you will.
