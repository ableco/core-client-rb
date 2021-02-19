# Core::Client

`Core::Client` is a Ruby gem for the [Core](https://core.able.co) API.

It includes read-only access for both API versions (v1 and v2) of the following resources:

- Product
- Project
- Role
- Project Role
- User
- Product Allocation
- Product Assignment
- Project Allocation

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'core-client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install core-client

## Usage

To use the Core API you need a token, which can be request via Slack in the `#core` channel. This token needs to be set in an ENV variable called `CORE_API_TOKEN`. `Core::Client` will automatically use that ENV variable to sign all the requests sent through the gem.

To use a different Core environment, you need to set the `CORE_API_URL` variable. `Core::Client` will automatically sent all the requests to the value in that ENV variable.

Both versions (v1 and v2) share similar methods to access the resources:
- `.all` returns an array of resources
- `.first` returns the first element of `.all`
- `.last` returns the last element of `.all`
- `.count` returns the size of `.all`
- `.find(id)` returns the resource identified by `id`. **This method is available on all the v2 resources, and only in `Project` and `User` for v1.**

### V1

Core v1 API resources are available through the `Core::Client::V1` namespace. For example:

```ruby
user = Core::Client::V1::User.find(1)
#=> #<Core::Client::V1::User id=1, roleId=2, managerId=nil, email="mike@able.co", fullName="Mike Potter", firstName="Michael", preferredName="Mike", lastName="Potter", title="CEO", avatarUrl="https://able.bamboohr.com/employees/photos/?h=8dbba2f5a71161a6e01e411edb655ac3">

user.fullName
#=> "Mike Potter"
```

For more usage examples, check the [specs](https://github.com/ableco/core-client-rb/tree/master/spec/core/client/v1/).

### V2

Core v2 API resources are available through the `Core::Client::V2` namespace. For example:

```ruby
Core::Client::V2::User.find(1)
#=> #<Core::Client::V2::User:@attributes={"type"=>"users", "id"=>"1", "fullName"=>"Mike Potter", "preferredName"=>"Mike", "firstName"=>"Michael", "avatarUrl"=>"https://able.bamboohr.com/employees/photos/?h=8dbba2f5a71161a6e01e411edb655ac3", "active"=>true, "isManager"=>true, "email"=>"mike@able.co"}>

user.fullName
#=> "Mike Potter"
```

`Core::Client::V2` resources use [`JsonApiClient`](https://github.com/JsonApiClient/json_api_client) behind the scenes, so any feature from `JsonApiClient` can be used in `Core::Client::V2`. For example:

```ruby
project = Core::Client::V2::Project.includes(:product).where(product_id: 1).first
project.product.id
#=> "1"
```

For more usage examples, check the [specs](https://github.com/ableco/core-client-rb/tree/master/spec/core/client/v2/).

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ableco/core-client-rb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Core::Client project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/ableco/core-client-rb/blob/master/CODE_OF_CONDUCT.md).
