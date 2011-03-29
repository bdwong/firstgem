# Copyright 2011  Brian Wong
# Distributed under the same terms as the Ruby license.

class Shape
  def name
    @name
  end

  def name=(n)
    @name=n
  end

  def describe
    puts "I am #{article_for(name)} #{name}."
  end

  private
  def article_for(noun)
    if %w{a e i o u}.include? noun[0].downcase
      'an'
    else
      'a'
    end
  end
end