# titan-liquibase-demo <!-- omit in toc -->
Short little demo of titan and liquibase

- [Description](#description)
- [Requirements](#requirements)
- [Using](#using)
- [Links](#links)
- [Reporting Issues](#reporting-issues)
- [Statement of Support](#statement-of-support)
- [License](#license)

## Description

This repo is just contains the setup to simplify the [titan](http://titan-data.io) and [liquibase](http://www.liquibase.org/) demonstration as outlined in [Robert Reeve's Medium post](https://medium.com/@texorcist/liquibase-and-titan-open-source-database-devops-bdeb19be4181)

This repo was constructed and intended for MacOs, and may not work with other *nix variants.

## Requirements

1. Docker Desktop should be installed and running on your Mac
2. [Titan should be downloaded and installed](http://titan-data.io/download)
3. Valid awscli credentials installed and configured (required for reading public s3 buckets). [AWS credentials are configured through the standard means (environment variables or .aws config files)](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html#cli-quick-configuration).

## Using

1. Clone this repo
2. [Download the postgres jar for Java 8](https://jdbc.postgresql.org/download.html#current) into the jdbc directory
3. Open a terminal and navigate into the project directory
4. Set your JAR variable to the name of that file, i.e. `JAR=postgresql-42.2.8.jar`
5. Follow the [demo steps](./demo-steps.md)

## Links

Include useful links to references or more advanced guides.

- [Eric Shrock's Medium post](https://medium.com/@eschrock/titan-better-development-with-data-1a51438603b4)
- [Robert Reeve's Medium post](https://medium.com/@texorcist/liquibase-and-titan-open-source-database-devops-bdeb19be4181)

## Reporting Issues

Issues should be reported in the repo's issue tab.

## Statement of Support

This software is provided as-is, without warranty of any kind or commercial support through Delphix. See the associated
license for additional details. Questions, issues, feature requests, and contributions should be directed to the repo's issue tab.

## License

This is code is licensed under the Apache License 2.0. Full license is available [here](./LICENSE).
