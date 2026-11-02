# Random Joke API - Ruby Gem

Random Joke fetches two-part jokes with separated setups and punchlines for applications and bots. Paid plans add a joke rating score to evaluate humor.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_randomjoke'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_randomjoke
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_randomjoke'

# Initialize the client
client = APIVerve::Randomjoke::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ safe: true })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ safe: true })
  puts response["data"]
rescue APIVerve::Randomjoke::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Randomjoke::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Randomjoke::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "score": 9,
    "setup": "Why did the stonemason break up with the female con artist?",
    "punchline": "She took him for granite."
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/randomjoke?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/randomjoke?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/randomjoke?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
