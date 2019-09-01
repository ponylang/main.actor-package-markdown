# Regex package

The Regex package provides support for Perl compatible regular expressions.

## Example program

```pony
use "regex"

actor Main
  new create(env: Env) =>
    try
      let r = Regex("\\d+")?

      if r == "1234" then
        env.out.print("1234 is a series of numbers")
      end

      if r != "Not a number" then
        env.out.print("'Not a number' is not a series of numbers")
      end

      let matched = r("There are 02 numbers in here.")?
      env.out.print(matched(0)? + " was matched")
      env.out.print("The match started at " + matched.start_pos().string())
      env.out.print("The match ended at " + matched.end_pos().string())
    end

    try
      let r = Regex("(\\d+)?\\.(\\d+)?")?
      let matched = r("123.456")?
      env.out.print(matched(0)? + " was matched")
      env.out.print("The first match was " + matched(1)?)
      env.out.print("The second match was " + matched(2)?)
    end
```



## Public Types

* [class Regex](regex-Regex.md)
* [class MatchIterator](regex-MatchIterator.md)
* [class Match](regex-Match.md)
