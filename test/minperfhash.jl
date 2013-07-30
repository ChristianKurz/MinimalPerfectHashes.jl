using MinimalPerfectHashes
using Base.Test
using Graphs


months = ["jan", "feb", "mar", "apr", "may", "jun", "jul",
  "aug", "sep", "oct", "nov", "dec"]

mph = MinimalPerfectHash(months)

results = unique(map((x) -> hash(x, mph), months))

@test length(results) == 12
@test max(results)    == 12
@test min(results)    == 1


