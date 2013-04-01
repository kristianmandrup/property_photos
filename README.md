# Property Photos

Gallery and Photos for Property.

Should include upload logic using some nice gem for the job, likely using AWS or other cheap binary file storage cloud service.

Uses `photos` gem for general purpose _photo_ functionality, integrating with and using *CarrierWave* and *Mongoid*.

## Usage

```ruby
class Property
  include Mongoid::Document

  include_concerns :photos
end
```

## TODO

`Property::Gallery` should embed many `Property::Photo`, not `Property::Picture`, which is just for simple test purposes!

## Gallery

pictures - collection of Picture

## Gallery Picture

An invididual picture, hosted in a cloud service

- name
- size
- type

## Gallery Photo

Wrapper for use with Rails gallery gem for easy Gallery display.

Todo...