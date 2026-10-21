# Random Joke API - PHP Package

Random Joke fetches two-part jokes with separated setups and punchlines for applications and bots. Paid plans add a joke rating score to evaluate humor.

## Installation

Install via Composer:

```bash
composer require apiverve/randomjoke
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Randomjoke\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute();

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Randomjoke\Client;
use APIVerve\Randomjoke\Exceptions\APIException;
use APIVerve\Randomjoke\Exceptions\ValidationException;

try {
    $response = $client->execute([]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "score": 7,
    "setup": "Why is the space between a woman's chest and her hips called a waist?",
    "punchline": "Because you could easily fit another pair of tits in there."
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/randomjoke?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/randomjoke?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/randomjoke?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
