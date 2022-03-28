-- Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.3, GoBackProb: 0.5, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
SELECT * FROM Twitter  WHERE jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') ;
SELECT * FROM Twitter  WHERE ( ( jsonb_path_exists(doc,'$.quoted_status.extended_tweet.entities.hashtags') OR jsonb_path_exists(doc,'$.in_reply_to_user_id ? (@ == 254061755934723090)') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.screen_name') ) ;
SELECT * FROM Twitter  WHERE jsonb_path_exists(doc,'$.retweeted_status.entities.hashtags') ;
SELECT * FROM Twitter  WHERE jsonb_path_exists(doc,'$.user.follow_request_sent') ;
SELECT * FROM Twitter  WHERE ( jsonb_path_exists(doc,'$.user.follow_request_sent') AND jsonb_path_exists(doc,'$.possibly_sensitive') ) ;
SELECT * FROM Twitter  WHERE ( ( jsonb_path_exists(doc,'$.user.follow_request_sent') AND jsonb_path_exists(doc,'$.possibly_sensitive') ) AND ( ( ( jsonb_path_exists(doc,'$.created_at ? (@ starts with "Sat")') OR ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "1")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "3")') ) ) OR ( ( ( ( jsonb_path_exists(doc,'$.user.description ? (@ starts with "찾")') OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "♧")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "布")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "맠")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "섢")') ) ) OR (jsonb_path_exists(doc,'$.quoted_status.user ? (@.type() == "object")') AND jsonb_path_exists(jsonb_path_query_array(doc, '$.quoted_status.user.keyvalue().key'),'$.size() ? (@ <= 37)')) ) ) ;
SELECT * FROM Twitter  WHERE ( ( ( jsonb_path_exists(doc,'$.user.follow_request_sent') AND jsonb_path_exists(doc,'$.possibly_sensitive') ) AND ( ( ( jsonb_path_exists(doc,'$.created_at ? (@ starts with "Sat")') OR ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "1")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "3")') ) ) OR ( ( ( ( jsonb_path_exists(doc,'$.user.description ? (@ starts with "찾")') OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "♧")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "布")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "맠")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "섢")') ) ) OR (jsonb_path_exists(doc,'$.quoted_status.user ? (@.type() == "object")') AND jsonb_path_exists(jsonb_path_query_array(doc, '$.quoted_status.user.keyvalue().key'),'$.size() ? (@ <= 37)')) ) ) AND jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.url') ) ;
SELECT * FROM Twitter  WHERE ( ( ( ( jsonb_path_exists(doc,'$.user.follow_request_sent') AND jsonb_path_exists(doc,'$.possibly_sensitive') ) AND ( ( ( jsonb_path_exists(doc,'$.created_at ? (@ starts with "Sat")') OR ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "1")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "3")') ) ) OR ( ( ( ( jsonb_path_exists(doc,'$.user.description ? (@ starts with "찾")') OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "♧")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "布")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "맠")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "섢")') ) ) OR (jsonb_path_exists(doc,'$.quoted_status.user ? (@.type() == "object")') AND jsonb_path_exists(jsonb_path_query_array(doc, '$.quoted_status.user.keyvalue().key'),'$.size() ? (@ <= 37)')) ) ) AND jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.url') ) AND ( (jsonb_path_exists(doc,'$.retweeted_status.coordinates ? (@.type() == "object")') AND jsonb_path_exists(jsonb_path_query_array(doc, '$.retweeted_status.coordinates.keyvalue().key'),'$.size() ? (@ <= 2)')) OR ( ( ( jsonb_path_exists(doc,'$.created_at ? (@ starts with "T")') OR jsonb_path_exists(doc,'$.created_at ? (@ starts with "S")') ) OR jsonb_path_exists(doc,'$.created_at ? (@ starts with "W")') ) OR jsonb_path_exists(doc,'$.created_at ? (@ starts with "Mo")') ) ) ) ;
SELECT * FROM Twitter  WHERE ( ( ( ( jsonb_path_exists(doc,'$.user.follow_request_sent') AND jsonb_path_exists(doc,'$.possibly_sensitive') ) AND ( ( ( jsonb_path_exists(doc,'$.created_at ? (@ starts with "Sat")') OR ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "1")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "3")') ) ) OR ( ( ( ( jsonb_path_exists(doc,'$.user.description ? (@ starts with "찾")') OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "♧")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "布")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "맠")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "섢")') ) ) OR (jsonb_path_exists(doc,'$.quoted_status.user ? (@.type() == "object")') AND jsonb_path_exists(jsonb_path_query_array(doc, '$.quoted_status.user.keyvalue().key'),'$.size() ? (@ <= 37)')) ) ) AND jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.url') ) AND ( jsonb_path_exists(doc,'$.quoted_status.in_reply_to_screen_name.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.user.geo_enabled ? (@ == false)') ) ) ;
SELECT * FROM Twitter  WHERE ( ( ( ( jsonb_path_exists(doc,'$.user.follow_request_sent') AND jsonb_path_exists(doc,'$.possibly_sensitive') ) AND ( ( ( jsonb_path_exists(doc,'$.created_at ? (@ starts with "Sat")') OR ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "1")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "3")') ) ) OR ( ( ( ( jsonb_path_exists(doc,'$.user.description ? (@ starts with "찾")') OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "♧")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "布")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "맠")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "섢")') ) ) OR (jsonb_path_exists(doc,'$.quoted_status.user ? (@.type() == "object")') AND jsonb_path_exists(jsonb_path_query_array(doc, '$.quoted_status.user.keyvalue().key'),'$.size() ? (@ <= 37)')) ) ) AND jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.url') ) AND ( ( ( ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.description ? (@ starts with "💈")') OR jsonb_path_exists(doc,'$.quoted_status.user.description ? (@ starts with "慈")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.description ? (@ starts with "ぎ")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.description ? (@ starts with "🎋")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.description ? (@ starts with "ಚ")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.id ? (@ >= 805902455776991872.000000)') ) OR ( ( ( ( jsonb_path_exists(doc,'$.user.profile_sidebar_fill_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.user.profile_sidebar_fill_color ? (@ starts with "E")') ) OR jsonb_path_exists(doc,'$.user.profile_sidebar_fill_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.user.profile_sidebar_fill_color ? (@ starts with "B")') ) OR jsonb_path_exists(doc,'$.user.profile_sidebar_fill_color ? (@ starts with "C")') ) ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.utc_offset ? (@ >= 25018.567914)') ) ) ;
SELECT * FROM Twitter  WHERE ( ( ( ( jsonb_path_exists(doc,'$.user.follow_request_sent') AND jsonb_path_exists(doc,'$.possibly_sensitive') ) AND ( ( ( jsonb_path_exists(doc,'$.created_at ? (@ starts with "Sat")') OR ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "1")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "3")') ) ) OR ( ( ( ( jsonb_path_exists(doc,'$.user.description ? (@ starts with "찾")') OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "♧")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "布")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "맠")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "섢")') ) ) OR (jsonb_path_exists(doc,'$.quoted_status.user ? (@.type() == "object")') AND jsonb_path_exists(jsonb_path_query_array(doc, '$.quoted_status.user.keyvalue().key'),'$.size() ? (@ <= 37)')) ) ) AND jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.url') ) AND ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.id ? (@ == 38978006365642754)') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.scopes.followers') ) OR jsonb_path_exists(doc,'$.quoted_status.display_text_range') ) ) ;
SELECT * FROM Twitter  WHERE ( ( ( ( jsonb_path_exists(doc,'$.user.follow_request_sent') AND jsonb_path_exists(doc,'$.possibly_sensitive') ) AND ( ( ( jsonb_path_exists(doc,'$.created_at ? (@ starts with "Sat")') OR ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "1")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "3")') ) ) OR ( ( ( ( jsonb_path_exists(doc,'$.user.description ? (@ starts with "찾")') OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "♧")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "布")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "맠")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "섢")') ) ) OR (jsonb_path_exists(doc,'$.quoted_status.user ? (@.type() == "object")') AND jsonb_path_exists(jsonb_path_query_array(doc, '$.quoted_status.user.keyvalue().key'),'$.size() ? (@ <= 37)')) ) ) AND jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.url') ) AND ( ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.extended_tweet.entities.media') OR ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "E")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "B")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "C")') ) ) OR jsonb_path_exists(doc,'$.retweeted_status.user.friends_count ? (@ <= 34759.950667)') ) OR jsonb_path_exists(doc,'$.retweeted_status.place.place_type') ) ) ;
SELECT * FROM Twitter  WHERE ( ( ( ( jsonb_path_exists(doc,'$.user.follow_request_sent') AND jsonb_path_exists(doc,'$.possibly_sensitive') ) AND ( ( ( jsonb_path_exists(doc,'$.created_at ? (@ starts with "Sat")') OR ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "1")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "3")') ) ) OR ( ( ( ( jsonb_path_exists(doc,'$.user.description ? (@ starts with "찾")') OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "♧")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "布")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "맠")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "섢")') ) ) OR (jsonb_path_exists(doc,'$.quoted_status.user ? (@.type() == "object")') AND jsonb_path_exists(jsonb_path_query_array(doc, '$.quoted_status.user.keyvalue().key'),'$.size() ? (@ <= 37)')) ) ) AND jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.url') ) AND ( ( ( ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "E")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "C")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "9")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.place.country_code.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.quoted_status_id_str.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.quoted_status.possibly_sensitive ? (@ == false)') ) ) ;
SELECT * FROM Twitter  WHERE ( ( ( ( ( jsonb_path_exists(doc,'$.user.follow_request_sent') AND jsonb_path_exists(doc,'$.possibly_sensitive') ) AND ( ( ( jsonb_path_exists(doc,'$.created_at ? (@ starts with "Sat")') OR ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "1")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "3")') ) ) OR ( ( ( ( jsonb_path_exists(doc,'$.user.description ? (@ starts with "찾")') OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "♧")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "布")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "맠")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "섢")') ) ) OR (jsonb_path_exists(doc,'$.quoted_status.user ? (@.type() == "object")') AND jsonb_path_exists(jsonb_path_query_array(doc, '$.quoted_status.user.keyvalue().key'),'$.size() ? (@ <= 37)')) ) ) AND jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.url') ) AND ( ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.extended_tweet.entities.media') OR ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "E")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "B")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "C")') ) ) OR jsonb_path_exists(doc,'$.retweeted_status.user.friends_count ? (@ <= 34759.950667)') ) OR jsonb_path_exists(doc,'$.retweeted_status.place.place_type') ) ) AND ( jsonb_path_exists(doc,'$.quoted_status.place.bounding_box.type ? (@ starts with "P")') OR jsonb_path_exists(doc,'$.user.profile_banner_url ? (@ starts with "h")') ) ) ;
SELECT * FROM Twitter  WHERE ( ( ( ( ( ( jsonb_path_exists(doc,'$.user.follow_request_sent') AND jsonb_path_exists(doc,'$.possibly_sensitive') ) AND ( ( ( jsonb_path_exists(doc,'$.created_at ? (@ starts with "Sat")') OR ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "1")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "3")') ) ) OR ( ( ( ( jsonb_path_exists(doc,'$.user.description ? (@ starts with "찾")') OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "♧")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "布")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "맠")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "섢")') ) ) OR (jsonb_path_exists(doc,'$.quoted_status.user ? (@.type() == "object")') AND jsonb_path_exists(jsonb_path_query_array(doc, '$.quoted_status.user.keyvalue().key'),'$.size() ? (@ <= 37)')) ) ) AND jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.url') ) AND ( ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.extended_tweet.entities.media') OR ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "E")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "B")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "C")') ) ) OR jsonb_path_exists(doc,'$.retweeted_status.user.friends_count ? (@ <= 34759.950667)') ) OR jsonb_path_exists(doc,'$.retweeted_status.place.place_type') ) ) AND ( jsonb_path_exists(doc,'$.quoted_status.place.bounding_box.type ? (@ starts with "P")') OR jsonb_path_exists(doc,'$.user.profile_banner_url ? (@ starts with "h")') ) ) AND jsonb_path_exists(doc,'$.quoted_status.user.profile_background_image_url ? (@ starts with "ht")') ) ;
SELECT * FROM Twitter  WHERE ( ( ( ( ( ( ( jsonb_path_exists(doc,'$.user.follow_request_sent') AND jsonb_path_exists(doc,'$.possibly_sensitive') ) AND ( ( ( jsonb_path_exists(doc,'$.created_at ? (@ starts with "Sat")') OR ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "1")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "3")') ) ) OR ( ( ( ( jsonb_path_exists(doc,'$.user.description ? (@ starts with "찾")') OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "♧")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "布")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "맠")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "섢")') ) ) OR (jsonb_path_exists(doc,'$.quoted_status.user ? (@.type() == "object")') AND jsonb_path_exists(jsonb_path_query_array(doc, '$.quoted_status.user.keyvalue().key'),'$.size() ? (@ <= 37)')) ) ) AND jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.url') ) AND ( ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.extended_tweet.entities.media') OR ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "E")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "B")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "C")') ) ) OR jsonb_path_exists(doc,'$.retweeted_status.user.friends_count ? (@ <= 34759.950667)') ) OR jsonb_path_exists(doc,'$.retweeted_status.place.place_type') ) ) AND ( jsonb_path_exists(doc,'$.quoted_status.place.bounding_box.type ? (@ starts with "P")') OR jsonb_path_exists(doc,'$.user.profile_banner_url ? (@ starts with "h")') ) ) AND jsonb_path_exists(doc,'$.quoted_status.user.profile_background_image_url ? (@ starts with "ht")') ) AND ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.coordinates.type') OR jsonb_path_exists(doc,'$.quoted_status.user.location.type() ? (@ == "string")') ) ) ;
SELECT * FROM Twitter  WHERE ( ( ( ( ( ( ( ( jsonb_path_exists(doc,'$.user.follow_request_sent') AND jsonb_path_exists(doc,'$.possibly_sensitive') ) AND ( ( ( jsonb_path_exists(doc,'$.created_at ? (@ starts with "Sat")') OR ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "1")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "3")') ) ) OR ( ( ( ( jsonb_path_exists(doc,'$.user.description ? (@ starts with "찾")') OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "♧")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "布")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "맠")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "섢")') ) ) OR (jsonb_path_exists(doc,'$.quoted_status.user ? (@.type() == "object")') AND jsonb_path_exists(jsonb_path_query_array(doc, '$.quoted_status.user.keyvalue().key'),'$.size() ? (@ <= 37)')) ) ) AND jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.url') ) AND ( ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.extended_tweet.entities.media') OR ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "E")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "B")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_sidebar_fill_color ? (@ starts with "C")') ) ) OR jsonb_path_exists(doc,'$.retweeted_status.user.friends_count ? (@ <= 34759.950667)') ) OR jsonb_path_exists(doc,'$.retweeted_status.place.place_type') ) ) AND ( jsonb_path_exists(doc,'$.quoted_status.place.bounding_box.type ? (@ starts with "P")') OR jsonb_path_exists(doc,'$.user.profile_banner_url ? (@ starts with "h")') ) ) AND jsonb_path_exists(doc,'$.quoted_status.user.profile_background_image_url ? (@ starts with "ht")') ) AND ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.coordinates.type') OR jsonb_path_exists(doc,'$.quoted_status.user.location.type() ? (@ == "string")') ) ) AND ( ( jsonb_path_exists(doc,'$.retweeted_status.place.bounding_box.type') OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_banner_url.type() ? (@ == "string")') ) AND jsonb_path_exists(doc,'$.retweeted_status.user.profile_use_background_image ? (@ == true)') ) ) ;
SELECT * FROM Twitter  WHERE ( ( ( ( ( jsonb_path_exists(doc,'$.user.follow_request_sent') AND jsonb_path_exists(doc,'$.possibly_sensitive') ) AND ( ( ( jsonb_path_exists(doc,'$.created_at ? (@ starts with "Sat")') OR ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "1")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "3")') ) ) OR ( ( ( ( jsonb_path_exists(doc,'$.user.description ? (@ starts with "찾")') OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "♧")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "布")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "맠")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "섢")') ) ) OR (jsonb_path_exists(doc,'$.quoted_status.user ? (@.type() == "object")') AND jsonb_path_exists(jsonb_path_query_array(doc, '$.quoted_status.user.keyvalue().key'),'$.size() ? (@ <= 37)')) ) ) AND jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.url') ) AND ( ( ( ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "E")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "C")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "9")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.place.country_code.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.quoted_status_id_str.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.quoted_status.possibly_sensitive ? (@ == false)') ) ) AND ( ( ( jsonb_path_exists(doc,'$.quoted_status.quoted_status_id_str') OR jsonb_path_exists(doc,'$.retweeted_status.extended_tweet.entities.user_mentions') ) OR ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.user.lang ? (@ starts with "zh")') OR jsonb_path_exists(doc,'$.retweeted_status.user.lang ? (@ starts with "en")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.lang ? (@ starts with "c")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.lang ? (@ starts with "t")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.lang ? (@ starts with "p")') ) ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_background_tile ? (@ == true)') ) ) ;
SELECT * FROM Twitter  WHERE ( ( ( ( ( jsonb_path_exists(doc,'$.user.follow_request_sent') AND jsonb_path_exists(doc,'$.possibly_sensitive') ) AND ( ( ( jsonb_path_exists(doc,'$.created_at ? (@ starts with "Sat")') OR ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "1")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "3")') ) ) OR ( ( ( ( jsonb_path_exists(doc,'$.user.description ? (@ starts with "찾")') OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "♧")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "布")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "맠")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "섢")') ) ) OR (jsonb_path_exists(doc,'$.quoted_status.user ? (@.type() == "object")') AND jsonb_path_exists(jsonb_path_query_array(doc, '$.quoted_status.user.keyvalue().key'),'$.size() ? (@ <= 37)')) ) ) AND jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.url') ) AND ( ( ( ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "E")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "C")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "9")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.place.country_code.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.quoted_status_id_str.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.quoted_status.possibly_sensitive ? (@ == false)') ) ) AND jsonb_path_exists(doc,'$.retweeted_status.user.geo_enabled ? (@ == true)') ) ;
SELECT * FROM Twitter  WHERE ( ( ( ( ( ( jsonb_path_exists(doc,'$.user.follow_request_sent') AND jsonb_path_exists(doc,'$.possibly_sensitive') ) AND ( ( ( jsonb_path_exists(doc,'$.created_at ? (@ starts with "Sat")') OR ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "1")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_text_color ? (@ starts with "3")') ) ) OR ( ( ( ( jsonb_path_exists(doc,'$.user.description ? (@ starts with "찾")') OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "♧")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "布")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "맠")') ) OR jsonb_path_exists(doc,'$.user.description ? (@ starts with "섢")') ) ) OR (jsonb_path_exists(doc,'$.quoted_status.user ? (@.type() == "object")') AND jsonb_path_exists(jsonb_path_query_array(doc, '$.quoted_status.user.keyvalue().key'),'$.size() ? (@ <= 37)')) ) ) AND jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.url') ) AND ( ( ( ( ( ( ( jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "F")') OR jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "E")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "C")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "D")') ) OR jsonb_path_exists(doc,'$.quoted_status.user.profile_sidebar_fill_color ? (@ starts with "9")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.place.country_code.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.quoted_status_id_str.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.quoted_status.possibly_sensitive ? (@ == false)') ) ) AND jsonb_path_exists(doc,'$.retweeted_status.user.geo_enabled ? (@ == true)') ) AND ( ( ( jsonb_path_exists(doc,'$.quoted_status.favorite_count ? (@ == 791156)') OR jsonb_path_exists(doc,'$.retweeted_status.place.id') ) OR jsonb_path_exists(doc,'$.quoted_status.user.utc_offset ? (@ == 37571)') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.extended_tweet.entities.user_mentions') ) ) ;
