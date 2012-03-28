# Job Probe

A rails app for tracking your employment contacts while searching for a new job.

This is still a work in progress. The UI Intentionally looks like a mobile app because I plan to release it as one using PhoneGap.

## Installation

Install bundler if you haven't yet:

```
gem install bundler
```

Install the gems:

```
bundle install
```
Rake job_probe setup task:

```
rake job_probe:setup
```

This will:

* drop any existing database
* create a new database
* migrate the database

