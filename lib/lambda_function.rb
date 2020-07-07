require 'interscript'
require 'json'


def handler(event:, context:)
  # puts "## ENVIRONMENT VARIABLES"
  # puts ENV.to_a
  # puts "## EVENT"
  # puts event.to_a
  #
  #
  # puts Interscript.transliterate(options[:system], IO.read(input))
  puts event['body']
  {
      statusCode: 200,
      body: JSON.generate("hello")
  }
end
