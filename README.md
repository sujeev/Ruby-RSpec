# Shiftcare assessment

This is a simple ruby script that parse a provided json file and allow to run several instructions on the data set.

The following assumptions were made on this script:
1. The client data strcuture assumed to contain the `email` and `full_name`
2. The json dataset is fed to the script as a file parameter

## How to use

This was developed based on Ruby 3.2.2

the json dataset can be passed to the script as a parameter.

```ruby client.rb data.json```

### Search by name

This instruction will search the dataset by name

```ruby client.rb data.json search "Jane"  ```

### Find duplicates

This instruction will find and show any duplicated email addresses

```ruby client.rb data.json find_duplicates```