-module(string_utils).
-export([split_string_into_words/1]).

% Функція для розділення рядка на слова
split_string_into_words(String) ->
    Words = string:tokens(String, " "),
    Words.
