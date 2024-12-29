# NOTES
## DAY 2
I have learned about the `all` built in method and other type of iterators such as `each_with_index` `each_line` and `each_cons`

I realized that my initial solution was a lot more longer and it could have been shortened. Part2 of `day2` i had a hard time implementing, there was a weird issue that i could not solve. So i asked some help from chatGPT which made me realize that there are other ways of solving this question I think i was to stuck on my own solution.

### What have I learned:

- `all?`: can be used to check if the given statement block is followed on all parts. here is an example:

```
 list.each_cons(2).all? { |a, b| (1..3).include?((a - b).abs) }
```

this code makes sure that a and b values have maximum 3 difference.