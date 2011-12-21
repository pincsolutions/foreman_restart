require "foreman"

class Foreman::Utils

  def self.parse_concurrency(concurrency)
    @concurrency ||= begin
      pairs = concurrency.to_s.gsub(/\s/, "").split(",")
      pairs.inject(Hash.new(1)) do |hash, pair|
        process, amount = pair.split("=")
        hash.update(process => amount.to_i)        
      end
    end
  end

  def self.temp_dir
    if RUBY_VERSION < "1.9.1"
      require 'tmpdir'
      Dir.tmpdir
    else
      require 'etc'
      Etc.systmpdir
    end
  end

end
