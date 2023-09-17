test_that(desc = "str_split_one() splits a string", code = {
  expect_equal(
    object = str_split_one(string = "a,b,c", pattern = ","),
    expected = c("a", "b", "c")
    )
})

test_that(desc = "str_split_one() errors if input length > 1", code = {
  expect_error(object = str_split_one(string = c("a,b", "c,d"), pattern = ","))
})

test_that(desc = "str_split_one() exposes fetures of stringr::str_split()", code = {
  expect_equal(
    object = str_split_one(string = "a,b,c", pattern = ",", n = 2),
    expected = c("a", "b,c")
  )

  expect_equal(
    object = str_split_one(string = "a.b", pattern = stringr::fixed(pattern = ".")),
    expected = c("a", "b")
  )
})
