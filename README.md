# Spark Box

Packer templates to build a Vagrant Spark box.

## Synopsis

This script will create a Vagrant box with Spark installed and with all of
the required libraries.

The box also has Jupyter Notebook installed, with the Python and the Scala
kernel available, that can be used to quickly test some code.

## Getting Started

There are a couple of things needed for the templates to work.

### Prerequisites

Packer tools need to be installed on your local computer.

#### Packer

Packer installation instructions can be found [here](https://www.packer.io/docs/installation.html).

#### Vagrant

Vagrant installation instructions can be found [here](https://www.vagrantup.com/docs/installation/).

#### Virtualbox

Virtualbox installation instructions can be found [here](https://www.virtualbox.org/wiki/Downloads).

### Installation

Nothing special to be done. Just download the template that you wish to use.

### Usage

In order to create the box using this packer script you need to provide a
few options.

```
Usage:
  packer build [-var 'option=value'] spark.json
```

#### Script Options
- `app_name` - The application name (default value: "spark").
- `app_name_ext` - Extra name for the application (default value: "-jupyter").
- `headless` - Show the console of the machine being built (default value: "true").
- `java_build_number` - Java build number (default value: "15").
- `java_major_version` - Java major version (default value: "8").
- `java_update_version` - Java update version (default value: "112").
- `scala_short_version` - Scala short version (default value: "2.11"). Setting this option also requires setting the `scala_version` option.
- `scala_version` - Scala version (default value: "2.11.8"). Seting this option may also require setting the `scala_short_version` option.
- `spark_cassandra_version` - Version of the Cassandra module for Spark (default value: "2.0.0-M2").
- `spark_csv_version` - Version of the CSV module for spark (default value: "1.5.0").
- `spark_hadoop_version` - Hadoop version (default value: "2.7").
- `spark_version` - Spark version (default value: "2.0.2").
- `system_disk_size` - Size of the disk in MB (default value: "12288").
- `system_domain` - Domain name (default value: "marsh").
- `system_hostname` - Host name (default value: "spark").
- `system_locale` - Locale for the system (default value: "en_US").
- `system_pwd` - Password for the root and system users (default value: "spark").
- `system_timezone` - Time zone for the system (default value: "Europe/Lisbon").
- `system_user` - Username of the system user (default value: "pollywog").

## Services

This box will have the following services running.

| Service           | Port   | Protocol |
|-------------------|:------:|:--------:|
| SSH               | 22     |    TCP   |
| Spark Application | 4040   |    TCP   |
| Spark REST Server | 6066   |    TCP   |
| Spark Master      | 7077   |    TCP   |
| Spark Master UI   | 8080   |    TCP   |
| Spark Worker UI   | 8081   |    TCP   |
| Spark History     | 18080  |    TCP   |
| Jupyter Notebook  | 8888   |    TCP   |

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request

## Versioning

This project uses [SemVer](http://semver.org/) for versioning. For the versions
available, see the [tags on this repository](https://github.com/fscm/packer-templates/tags).

## Authors

* **Frederico Martins** - [fscm](https://github.com/fscm)

See also the list of [contributors](https://github.com/fscm/packer-templates/contributors)
who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/fscm/packer-templates/LICENSE)
file for details
