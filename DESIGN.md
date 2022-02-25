# Design

This SDK is a wrapper around the [The One API](https://the-one-api.dev/). The One API lists several endpoints to retrieve The Lord of the Rings resources, like books, movies, characters, quotes.

This SDK uses an Object-oriented approach, so that developers use Books, Movies, Quotes objects instead of JSON dictionaries.

## Authorization

First, [The One API](https://the-one-api.dev/) requires you to have an API key to use most of their endpoints. This SDK uses a simple design, so that the developer can use its own API key. [LREVInitService](https://github.com/rcvrgs/LotR-Eric_Vargas-SDK/blob/main/LotR-Eric_Vargas-SDK/Classes/LREVInitService.h) is a singleton in which the user provides its API key and then it uses used across the SDK to read this key when needed.

The endpoints need to have an Authorization header, which it's value is the API key. This value is read by the classes that make the requests to The One API.

## Request Client

[LREVRequestClient](https://github.com/rcvrgs/LotR-Eric_Vargas-SDK/blob/main/LotR-Eric_Vargas-SDK/Classes/LREVRequestClient.h) is the most lower level class that makes the requests to The One API. It makes use of NSURLSession tasks and also handles multiple errors, for example, when the server does not respond, when it returns an error status code, as well as errors parsing the JSON.

Here is where the API key is appended before a request is sent. This class knows little about the response, and it just returns the plain JSON. The JSON is then handled by more specific Clients.

## Resource Clients

There are clients specific to the kind of resource being requested. One example is [LREVMovieClient](https://github.com/rcvrgs/LotR-Eric_Vargas-SDK/blob/main/LotR-Eric_Vargas-SDK/Classes/LREVMovieClient.h) which requests information about movies and its quotes.

These kind of classes use a `LREVRequestClient` internally.

Its methods are very specific to the resource, in this case it requests movies and quotes. It also supports query parameters as they are documented in [The One API](https://the-one-api.dev/documentation) so it's possible to paginate, sort and filter.

The end users of the SDK are expected to use these resource clients and then receive model objects representing movies, quotes, characters. See [LREVMovie](https://github.com/rcvrgs/LotR-Eric_Vargas-SDK/blob/main/LotR-Eric_Vargas-SDK/Classes/LREVMovie.h) as an example.
