-module(json_parser).
-export([parse_json/1]).

% Парсер JSON, здатний обробляти map і proplists
parse_json(JsonData) ->
    {ok, Parsed} = jsone:decode(JsonData),
    convert_to_supported_structure(Parsed).

% Конвертація у підтримувану структуру (map або proplists)
convert_to_supported_structure(Json) when is_map(Json) ->
    maps:to_list(Json);
convert_to_supported_structure(Json) when is_list(Json) ->
    lists:keyfind(undefined, 1, Json, {0, []}).
