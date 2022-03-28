-- Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.3, GoBackProb: 0.5, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
SELECT doc #> '{filter_level}' as group, COUNT(doc #> '{place,name}') FROM Twitter  WHERE jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")')  GROUP BY doc #> '{filter_level}';
SELECT doc #> '{retweeted_status,user,location}' as group, SUM((doc #>> '{favorite_count}')::float) FROM Twitter  WHERE ( ( jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') AND ( ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.friends_count ? (@ <= 2151584.114948)') AND jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color') ) OR jsonb_path_exists(doc,'$.quoted_status.user.url ? (@ starts with "ht")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.id_str') ) ) AND jsonb_path_exists(doc,'$.favorite_count.type() ? (@ == "number")') )  GROUP BY doc #> '{retweeted_status,user,location}';
SELECT doc #> '{quoted_status,place,url}' as group, COUNT(doc #> '{retweeted}') FROM Twitter  WHERE ( jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') AND ( ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "7")') OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "2")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "3")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "6")') ) OR jsonb_path_exists(doc,'$.in_reply_to_user_id ? (@ == 196237365303820530)') ) OR jsonb_path_exists(doc,'$.quoted_status.in_reply_to_user_id ? (@ == 668797006026254403)') ) OR jsonb_path_exists(doc,'$.retweeted_status.filter_level ? (@ starts with "l")') ) )  GROUP BY doc #> '{quoted_status,place,url}';
SELECT doc #> '{retweeted_status,quoted_status_id_str}' as group, COUNT(*) FROM Twitter  WHERE ( jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.entities.symbols') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.place') ) OR jsonb_path_exists(doc,'$.retweeted_status.filter_level') ) )  GROUP BY doc #> '{retweeted_status,quoted_status_id_str}';
SELECT doc #> '{retweeted_status,place,country}' as group, COUNT(*) FROM Twitter  WHERE ( ( jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.entities.symbols') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.place') ) OR jsonb_path_exists(doc,'$.retweeted_status.filter_level') ) ) AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_sidebar_border_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_sidebar_border_color ? (@ starts with "1")') ) OR jsonb_path_exists(doc,'$.user.time_zone.type() ? (@ == "string")') ) )  GROUP BY doc #> '{retweeted_status,place,country}';
SELECT doc #> '{retweeted_status,favorite_count}' as group, COUNT(doc #> '{quoted_status,geo}') FROM Twitter  WHERE ( ( jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.entities.symbols') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.place') ) OR jsonb_path_exists(doc,'$.retweeted_status.filter_level') ) ) AND ( (jsonb_path_exists(doc,'$.retweeted_status.extended_tweet.extended_entities ? (@.type() == "object")') AND jsonb_path_exists(jsonb_path_query_array(doc, '$.retweeted_status.extended_tweet.extended_entities.keyvalue().key'),'$.size() ? (@ <= 1)')) OR jsonb_path_exists(doc,'$.retweeted_status.user.location.type() ? (@ == "string")') ) )  GROUP BY doc #> '{retweeted_status,favorite_count}';
SELECT doc #> '{retweeted_status,quoted_status,user,profile_text_color}' as group, COUNT(doc #> '{lang}') FROM Twitter  WHERE ( ( jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.entities.symbols') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.place') ) OR jsonb_path_exists(doc,'$.retweeted_status.filter_level') ) ) AND jsonb_path_exists(doc,'$.user.profile_use_background_image ? (@ == true)') )  GROUP BY doc #> '{retweeted_status,quoted_status,user,profile_text_color}';
SELECT doc #> '{withheld_copyright}' as group, COUNT(doc #> '{favorite_count}') FROM Twitter  WHERE ( ( jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.entities.symbols') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.place') ) OR jsonb_path_exists(doc,'$.retweeted_status.filter_level') ) ) AND ( ( ( jsonb_path_exists(doc,'$.user.friends_count ? (@ >= 1677843.896789)') AND jsonb_path_exists(doc,'$.quoted_status.entities.hashtags') ) OR ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.screen_name ? (@ starts with "L")') OR jsonb_path_exists(doc,'$.quoted_status.user.screen_name ? (@ starts with "S")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.screen_name ? (@ starts with "_")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.screen_name ? (@ starts with "i")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.screen_name ? (@ starts with "C")') ) ) OR jsonb_path_exists(doc,'$.retweeted_status.user.location.type() ? (@ == "string")') ) )  GROUP BY doc #> '{withheld_copyright}';
SELECT doc #> '{user,time_zone}' as group, COUNT(doc #> '{quoted_status,text}') FROM Twitter  WHERE ( ( jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') AND ( ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "7")') OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "2")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "3")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "6")') ) OR jsonb_path_exists(doc,'$.in_reply_to_user_id ? (@ == 196237365303820530)') ) OR jsonb_path_exists(doc,'$.quoted_status.in_reply_to_user_id ? (@ == 668797006026254403)') ) OR jsonb_path_exists(doc,'$.retweeted_status.filter_level ? (@ starts with "l")') ) ) AND ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang ? (@ starts with "e")') OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "f")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "s")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "p")') ) OR ( ( jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "w")') OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "ht")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "Ba")') ) ) )  GROUP BY doc #> '{user,time_zone}';
SELECT doc #> '{retweeted_status,quoted_status,is_quote_status}' as group, COUNT(doc #> '{retweeted_status,id_str}') FROM Twitter  WHERE ( ( ( jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') AND ( ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "7")') OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "2")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "3")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "6")') ) OR jsonb_path_exists(doc,'$.in_reply_to_user_id ? (@ == 196237365303820530)') ) OR jsonb_path_exists(doc,'$.quoted_status.in_reply_to_user_id ? (@ == 668797006026254403)') ) OR jsonb_path_exists(doc,'$.retweeted_status.filter_level ? (@ starts with "l")') ) ) AND ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang ? (@ starts with "e")') OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "f")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "s")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "p")') ) OR ( ( jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "w")') OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "ht")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "Ba")') ) ) ) AND ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.user.location ? (@ starts with "돈")') OR jsonb_path_exists(doc,'$.retweeted_status.user.location ? (@ starts with "두")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.location ? (@ starts with "豪")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.location ? (@ starts with "Ш")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.location ? (@ starts with "舞")') ) OR (jsonb_path_exists(doc,'$.retweeted_status.extended_entities ? (@.type() == "object")') AND jsonb_path_exists(jsonb_path_query_array(doc, '$.retweeted_status.extended_entities.keyvalue().key'),'$.size() ? (@ <= 1)')) ) )  GROUP BY doc #> '{retweeted_status,quoted_status,is_quote_status}';
SELECT doc #> '{created_at}' as group, SUM((doc #>> '{favorite_count}')::float) FROM Twitter  WHERE ( ( ( ( jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') AND ( ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "7")') OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "2")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "3")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "6")') ) OR jsonb_path_exists(doc,'$.in_reply_to_user_id ? (@ == 196237365303820530)') ) OR jsonb_path_exists(doc,'$.quoted_status.in_reply_to_user_id ? (@ == 668797006026254403)') ) OR jsonb_path_exists(doc,'$.retweeted_status.filter_level ? (@ starts with "l")') ) ) AND ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang ? (@ starts with "e")') OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "f")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "s")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "p")') ) OR ( ( jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "w")') OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "ht")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "Ba")') ) ) ) AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.place.url.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_sidebar_border_color.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.extended_entities.media') ) ) AND jsonb_path_exists(doc,'$.favorite_count.type() ? (@ == "number")') )  GROUP BY doc #> '{created_at}';
SELECT doc #> '{retweeted_status,retweeted}' as group, SUM((doc #>> '{retweet_count}')::float) FROM Twitter  WHERE ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') AND ( ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "7")') OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "2")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "3")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "6")') ) OR jsonb_path_exists(doc,'$.in_reply_to_user_id ? (@ == 196237365303820530)') ) OR jsonb_path_exists(doc,'$.quoted_status.in_reply_to_user_id ? (@ == 668797006026254403)') ) OR jsonb_path_exists(doc,'$.retweeted_status.filter_level ? (@ starts with "l")') ) ) AND ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang ? (@ starts with "e")') OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "f")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "s")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "p")') ) OR ( ( jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "w")') OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "ht")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "Ba")') ) ) ) AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.place.url.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_sidebar_border_color.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.extended_entities.media') ) ) AND ( jsonb_path_exists(doc,'$.user.created_at ? (@ starts with "T")') OR jsonb_path_exists(doc,'$.user.created_at ? (@ starts with "Mon")') ) ) AND jsonb_path_exists(doc,'$.retweet_count.type() ? (@ == "number")') )  GROUP BY doc #> '{retweeted_status,retweeted}';
SELECT doc #> '{quoted_status,user,geo_enabled}' as group, COUNT(*) FROM Twitter  WHERE ( ( ( ( jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') AND ( ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "7")') OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "2")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "3")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "6")') ) OR jsonb_path_exists(doc,'$.in_reply_to_user_id ? (@ == 196237365303820530)') ) OR jsonb_path_exists(doc,'$.quoted_status.in_reply_to_user_id ? (@ == 668797006026254403)') ) OR jsonb_path_exists(doc,'$.retweeted_status.filter_level ? (@ starts with "l")') ) ) AND ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang ? (@ starts with "e")') OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "f")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "s")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "p")') ) OR ( ( jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "w")') OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "ht")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "Ba")') ) ) ) AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.place.url.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_sidebar_border_color.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.extended_entities.media') ) ) AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.id_str ? (@ starts with "1")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.entities.hashtags') ) OR jsonb_path_exists(doc,'$.user.id ? (@ <= 329119115048930560.000000)') ) )  GROUP BY doc #> '{quoted_status,user,geo_enabled}';
SELECT doc #> '{user,verified}' as group, COUNT(doc #> '{quoted_status,user,location}') FROM Twitter  WHERE ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') AND ( ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "7")') OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "2")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "3")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "6")') ) OR jsonb_path_exists(doc,'$.in_reply_to_user_id ? (@ == 196237365303820530)') ) OR jsonb_path_exists(doc,'$.quoted_status.in_reply_to_user_id ? (@ == 668797006026254403)') ) OR jsonb_path_exists(doc,'$.retweeted_status.filter_level ? (@ starts with "l")') ) ) AND ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang ? (@ starts with "e")') OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "f")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "s")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "p")') ) OR ( ( jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "w")') OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "ht")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "Ba")') ) ) ) AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.place.url.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_sidebar_border_color.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.extended_entities.media') ) ) AND ( jsonb_path_exists(doc,'$.user.created_at ? (@ starts with "T")') OR jsonb_path_exists(doc,'$.user.created_at ? (@ starts with "Mon")') ) ) AND ( ( ( ( ( jsonb_path_exists(doc,'$.user.name ? (@ starts with "표")') OR jsonb_path_exists(doc,'$.user.name ? (@ starts with "哭")') ) OR jsonb_path_exists(doc,'$.user.name ? (@ starts with "ʳ")') ) OR jsonb_path_exists(doc,'$.user.name ? (@ starts with "툥")') ) OR jsonb_path_exists(doc,'$.user.name ? (@ starts with "🎁")') ) OR jsonb_path_exists(doc,'$.retweeted_status.display_text_range ? (@.type() == "array" && @.size() <= 2)')  ) )  GROUP BY doc #> '{user,verified}';
SELECT doc #> '{retweeted_status,user,profile_image_url_https}' as group, COUNT(*) FROM Twitter  WHERE ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') AND ( ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "7")') OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "2")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "3")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "6")') ) OR jsonb_path_exists(doc,'$.in_reply_to_user_id ? (@ == 196237365303820530)') ) OR jsonb_path_exists(doc,'$.quoted_status.in_reply_to_user_id ? (@ == 668797006026254403)') ) OR jsonb_path_exists(doc,'$.retweeted_status.filter_level ? (@ starts with "l")') ) ) AND ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang ? (@ starts with "e")') OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "f")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "s")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "p")') ) OR ( ( jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "w")') OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "ht")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "Ba")') ) ) ) AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.place.url.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_sidebar_border_color.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.extended_entities.media') ) ) AND ( jsonb_path_exists(doc,'$.user.created_at ? (@ starts with "T")') OR jsonb_path_exists(doc,'$.user.created_at ? (@ starts with "Mon")') ) ) AND ( ( ( jsonb_path_exists(doc,'$.retweeted_status.place.url.type() ? (@ == "string")') OR (jsonb_path_exists(doc,'$.retweeted_status.quoted_status.extended_entities ? (@.type() == "object")') AND jsonb_path_exists(jsonb_path_query_array(doc, '$.retweeted_status.quoted_status.extended_entities.keyvalue().key'),'$.size() ? (@ <= 1)')) ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.screen_name') ) OR jsonb_path_exists(doc,'$.user.default_profile ? (@ == true)') ) )  GROUP BY doc #> '{retweeted_status,user,profile_image_url_https}';
SELECT doc #> '{retweeted_status,quoted_status,text}' as group, COUNT(*) FROM Twitter  WHERE ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') AND ( ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "7")') OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "2")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "3")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "6")') ) OR jsonb_path_exists(doc,'$.in_reply_to_user_id ? (@ == 196237365303820530)') ) OR jsonb_path_exists(doc,'$.quoted_status.in_reply_to_user_id ? (@ == 668797006026254403)') ) OR jsonb_path_exists(doc,'$.retweeted_status.filter_level ? (@ starts with "l")') ) ) AND ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang ? (@ starts with "e")') OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "f")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "s")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "p")') ) OR ( ( jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "w")') OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "ht")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "Ba")') ) ) ) AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.place.url.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_sidebar_border_color.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.extended_entities.media') ) ) AND ( jsonb_path_exists(doc,'$.user.created_at ? (@ starts with "T")') OR jsonb_path_exists(doc,'$.user.created_at ? (@ starts with "Mon")') ) ) AND jsonb_path_exists(doc,'$.retweeted_status.user.statuses_count ? (@ <= 1839862.613620)') )  GROUP BY doc #> '{retweeted_status,quoted_status,text}';
SELECT doc #> '{quoted_status,source}' as group, COUNT(*) FROM Twitter  WHERE ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') AND ( ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "7")') OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "2")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "3")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "6")') ) OR jsonb_path_exists(doc,'$.in_reply_to_user_id ? (@ == 196237365303820530)') ) OR jsonb_path_exists(doc,'$.quoted_status.in_reply_to_user_id ? (@ == 668797006026254403)') ) OR jsonb_path_exists(doc,'$.retweeted_status.filter_level ? (@ starts with "l")') ) ) AND ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang ? (@ starts with "e")') OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "f")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "s")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "p")') ) OR ( ( jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "w")') OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "ht")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "Ba")') ) ) ) AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.place.url.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_sidebar_border_color.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.extended_entities.media') ) ) AND ( jsonb_path_exists(doc,'$.user.created_at ? (@ starts with "T")') OR jsonb_path_exists(doc,'$.user.created_at ? (@ starts with "Mon")') ) ) AND ( jsonb_path_exists(doc,'$.retweeted_status.coordinates.type.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.user.default_profile ? (@ == true)') ) )  GROUP BY doc #> '{quoted_status,source}';
SELECT doc #> '{filter_level}' as group, COUNT(doc #> '{quoted_status,possibly_sensitive}') FROM Twitter  WHERE ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') AND ( ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "7")') OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "2")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "3")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "6")') ) OR jsonb_path_exists(doc,'$.in_reply_to_user_id ? (@ == 196237365303820530)') ) OR jsonb_path_exists(doc,'$.quoted_status.in_reply_to_user_id ? (@ == 668797006026254403)') ) OR jsonb_path_exists(doc,'$.retweeted_status.filter_level ? (@ starts with "l")') ) ) AND ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang ? (@ starts with "e")') OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "f")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "s")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "p")') ) OR ( ( jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "w")') OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "ht")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "Ba")') ) ) ) AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.place.url.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_sidebar_border_color.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.extended_entities.media') ) ) AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.id_str ? (@ starts with "1")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.entities.hashtags') ) OR jsonb_path_exists(doc,'$.user.id ? (@ <= 329119115048930560.000000)') ) ) AND ( jsonb_path_exists(doc,'$.retweeted_status.is_quote_status ? (@ == false)') AND jsonb_path_exists(doc,'$.user.profile_background_image_url ? (@ starts with "ht")') ) )  GROUP BY doc #> '{filter_level}';
SELECT doc #> '{user,id_str}' as group, COUNT(*) FROM Twitter  WHERE ( ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') AND ( ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "7")') OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "2")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "3")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "6")') ) OR jsonb_path_exists(doc,'$.in_reply_to_user_id ? (@ == 196237365303820530)') ) OR jsonb_path_exists(doc,'$.quoted_status.in_reply_to_user_id ? (@ == 668797006026254403)') ) OR jsonb_path_exists(doc,'$.retweeted_status.filter_level ? (@ starts with "l")') ) ) AND ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang ? (@ starts with "e")') OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "f")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "s")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "p")') ) OR ( ( jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "w")') OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "ht")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "Ba")') ) ) ) AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.place.url.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_sidebar_border_color.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.extended_entities.media') ) ) AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.id_str ? (@ starts with "1")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.entities.hashtags') ) OR jsonb_path_exists(doc,'$.user.id ? (@ <= 329119115048930560.000000)') ) ) AND ( jsonb_path_exists(doc,'$.retweeted_status.is_quote_status ? (@ == false)') AND jsonb_path_exists(doc,'$.user.profile_background_image_url ? (@ starts with "ht")') ) ) AND ( ( jsonb_path_exists(doc,'$.retweeted_status.place.name') OR ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.user.profile_background_color ? (@ starts with "1")') OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_background_color ? (@ starts with "F")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_background_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_background_color ? (@ starts with "E")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_background_color ? (@ starts with "2")') ) ) OR jsonb_path_exists(doc,'$.user.location.type() ? (@ == "string")') ) )  GROUP BY doc #> '{user,id_str}';
SELECT doc #> '{retweeted_status,favorited}' as group, COUNT(doc #> '{retweeted_status,possibly_sensitive}') FROM Twitter  WHERE ( ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') AND ( ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "7")') OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "2")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "3")') ) OR jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_user_id_str ? (@ starts with "6")') ) OR jsonb_path_exists(doc,'$.in_reply_to_user_id ? (@ == 196237365303820530)') ) OR jsonb_path_exists(doc,'$.quoted_status.in_reply_to_user_id ? (@ == 668797006026254403)') ) OR jsonb_path_exists(doc,'$.retweeted_status.filter_level ? (@ starts with "l")') ) ) AND ( ( ( ( ( jsonb_path_exists(doc,'$.user.lang ? (@ starts with "e")') OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "f")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "s")') ) OR jsonb_path_exists(doc,'$.user.lang ? (@ starts with "p")') ) OR ( ( jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "w")') OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "ht")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.url ? (@ starts with "Ba")') ) ) ) AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.place.url.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_sidebar_border_color.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.extended_entities.media') ) ) AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.id_str ? (@ starts with "1")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.entities.hashtags') ) OR jsonb_path_exists(doc,'$.user.id ? (@ <= 329119115048930560.000000)') ) ) AND ( jsonb_path_exists(doc,'$.retweeted_status.is_quote_status ? (@ == false)') AND jsonb_path_exists(doc,'$.user.profile_background_image_url ? (@ starts with "ht")') ) ) AND ( ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_screen_name.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.retweeted_status.user.utc_offset ? (@ == 3119)') ) OR jsonb_path_exists(doc,'$.source ? (@ starts with "<")') ) )  GROUP BY doc #> '{retweeted_status,favorited}';
