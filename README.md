# merriam-ruby
Merriam.IO Client Library for Ruby

Register yourself and get your `key` from [here](https://merriam.io) for authentication

Configured key as ENV['MERRIAM_API_KEY'] into your rails-project. You can also use [.dotenv](https://github.com/bkeepers/dotenv) gem

List Languages

```
c = Merriam::Client.new
c.languages

```


Detect language

```
c = Merriam::Client.new
c.detect(["La SNCF a communiqué ce dimanche les prévisions de trafic à la suite du mouvement de grève qui débute cette semaine. Tandis que le trafic sera normal lundi soir, il sera très perturbé mardi sur les TGV et les lignes régionales. Seulement 12% des TGV seront assurés, 28% des transiliens, 13% des intercités et 30% des TER."])
```


Translate Text


```
c = Merriam::Client.new
c.translate_text("La SNCF a communiqué ce dimanche les prévisions de trafic à la suite du mouvement de grève qui débute cette semaine. Tandis que le trafic sera normal lundi soir, il sera très perturbé mardi sur les TGV et les lignes régionales. Seulement 12% des TGV seront assurés, 28% des transiliens, 13% des intercités et 30% des TER.", "en")
```


Translate HTML


```
c = Merriam::Client.new
c.translate_html("<div>La SNCF a communiqué ce dimanche les prévisions de trafic à la suite du mouvement de grève qui débute cette semaine. Tandis que le trafic sera normal lundi soir, il sera très perturbé mardi sur les TGV et les lignes régionales. Seulement 12% des TGV seront assurés, 28% des transiliens, 13% des intercités et 30% des TER.</div>", "en")
```


Translate URL


```
c = Merriam::Client.new
c.translate_url("http://www.france24.com/fr/france/rss", "en")
```


## Versioning

This library follows [Semantic Versioning](http://semver.org/).

Please note it is currently under active development. Any release versioned 0.x.y is subject to backwards incompatible changes at any time.

**GA**: Libraries defined at the GA (general availability) quality level are stable. The code surface will not change in backwards-incompatible ways unless absolutely necessary (e.g. because of critical security issues) or with an extensive deprecation period. Issues and requests against GA libraries are addressed with the highest priority.

Please note that the auto-generated portions of the GA libraries (the ones in modules such as `v1` or `v2`) are considered to be of **Beta** quality, even if the libraries that wrap them are GA.

**Beta**: Libraries defined at a Beta quality level are expected to be mostly stable and we're working towards their release candidate. We will address issues and requests with a higher priority.

**Alpha**: Libraries defined at an Alpha quality level are still a work-in-progress and are more likely to get backwards-incompatible updates.


## Contributing

Contributions to this library are always welcome and highly encouraged.

See [CONTRIBUTING](CONTRIBUTING.md) for more information on how to get started.

## License

This library is licensed under Apache 2.0. Full license text is
available in [LICENSE](LICENSE).

## Support

Please [report bugs at the project on Github](https://github.com/MerriamIO/<library>/issues).

## Owned By

7Precision, Inc
