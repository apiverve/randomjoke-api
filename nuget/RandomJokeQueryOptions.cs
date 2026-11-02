using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.RandomJoke
{
    /// <summary>
    /// Query options for the Random Joke API
    /// </summary>
    public class RandomJokeQueryOptions
    {
        /// <summary>
        /// Only return jokes reviewed as safe for a general audience (no sexual, offensive, violent or political jokes). Set to false to include the full collection, which has adult humor
        /// </summary>
        [JsonProperty("safe")]
        public bool? Safe { get; set; }
    }
}
