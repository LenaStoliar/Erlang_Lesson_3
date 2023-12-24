-module(string_utils).
-export([split_string_with_delimiter/2]).

% Функція для розділення рядка на частини з вказівкою роздільника
split_string_with_delimiter(String, Delimiter) ->
    Parts = string:tokens(String, Delimiter),
    Parts.
