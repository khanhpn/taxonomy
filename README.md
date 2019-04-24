# How to run
## Notice:
    i used ruby `2.6.0` to run.


## First, run this command:
    bundle install


## Syntax command line to run:

    ruby taxonomy.rb input_file_name output_file_name number_levels_deep
Make sure that your input_file_name put same as taxonomy.rb file.


### For example:
your input file name as:
    taxonomy-with-ids.en-US.txt

and you want to make output file name as:
    hello.rb or text.txt or hi.csv,...

and you want to custom levels deep such as: 1,2,3,4,5,6,...

    ruby taxonomy.rb taxonomy-with-ids.en-US.txt hello.rb 2
or

    ruby taxonomy.rb taxonomy-with-ids.en-US.txt text.txt 3
or

    ruby taxonomy.rb taxonomy-with-ids.en-US.txt hi.cs 4
