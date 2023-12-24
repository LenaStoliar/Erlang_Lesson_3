-module(string_utils).
-export([get_first_word/1]).

% Функція для витягування першого слова
get_first_word(String) ->
    [FirstWord | _] = re:split(String, "\\s+"),
    FirstWord.
