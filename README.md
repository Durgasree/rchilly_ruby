# RchilliRuby

RChilli resume parser is a deep learning/AI framework that identifies complete information from resumes and enriches it through its taxonomies. It extracts candidate data from resumes in 140+ data fields through REST API.

## Usage

To create a client object - 

 client = RchilliRuby::Client.new(rchilli_user_key, rchilli_version, rchilli_sub_user_id)

 parse_resume method need filename and base64data of that file to get the parsed data from the resume.

 rchilli.parse_resume(file_name, base_64_data)

## Example
	
	client = RchilliRuby::Client.new("User123XX", '7.0.0', "Subuser123XX")


## Installation
Add this line to your application's Gemfile:

```ruby
gem 'rchilli_ruby'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install rchilli_ruby
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
