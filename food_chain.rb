module FoodChain
  ANIMALS = ['fly', "spider", "bird", "cat", "dog", "goat", "cow"]
  VERSES_COUNT = ANIMALS.count - 1
  FIRST_LINE_VERSE = {
    "spider": "It wriggled and jiggled and tickled inside her.",
    "bird": "How absurd to swallow a bird!",
    "cat": "Imagine that, to swallow a cat!",
    "dog": "What a hog, to swallow a dog!",
    "goat": "Just opened her throat and swallowed a goat!",
    "cow": "I don't know how she swallowed a cow!"
  }

  def self.song
    verses = ""
    (0..VERSES_COUNT).map { |count| verses << verse(count) }
    verses << "I know an old lady who swallowed a horse.\nShe's dead, of course!\n"
    verses
  end

  def self.verse(count)
    lines = "I know an old lady who swallowed a #{ANIMALS[count]}.\n"
    if count > 0
      lines << "#{FIRST_LINE_VERSE[ANIMALS[count].to_sym]}\n"
      count2 = count
      while (count2 > 0)
        lines << "She swallowed the #{ANIMALS[count2]} to catch the #{ANIMALS[count2 - 1]}"
        lines << " that wriggled and jiggled and tickled inside her" if count2 == 2 && count != 1
        lines << ".\n"
        count2 -= 1
      end
    end
    lines << "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
  end
end