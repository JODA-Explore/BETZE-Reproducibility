-- Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.1, GoBackProb: 0.4, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
SELECT COUNT(doc #> '{place,name}') FROM Twitter  WHERE jsonb_path_exists(doc,'$.user.lang.type() ? (@ == "string")') ;
SELECT COUNT(doc #> '{retweeted_status,user}') FROM Twitter  WHERE jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_screen_name') ;
SELECT COUNT(doc #> '{quoted_status,user,profile_background_image_url_https}') FROM Twitter  WHERE ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_screen_name') AND ( jsonb_path_exists(doc,'$.quoted_status.place.name.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.retweeted_status.user.location.type() ? (@ == "string")') ) ) ;
SELECT COUNT(*) FROM Twitter  WHERE ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_screen_name') AND ( ( ( jsonb_path_exists(doc,'$.retweeted_status.place.full_name.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.description') ) OR jsonb_path_exists(doc,'$.retweeted_status.withheld_copyright ? (@ == true)') ) OR jsonb_path_exists(doc,'$.retweeted_status.entities.media ? (@.type() == "array" && @.size() <= 1)')  ) ) ;
SELECT COUNT(*) FROM Twitter  WHERE ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_screen_name') AND ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "1")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "2")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "3")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "F")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_background_image_url ? (@ starts with "ht")') ) ) ;
SELECT COUNT(*) FROM Twitter  WHERE ( ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_screen_name') AND ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "1")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "2")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "3")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "F")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_background_image_url ? (@ starts with "ht")') ) ) AND jsonb_path_exists(doc,'$.user.geo_enabled ? (@ == true)') ) ;
SELECT COUNT(*) FROM Twitter  WHERE ( ( ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_screen_name') AND ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "1")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "2")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "3")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "F")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_background_image_url ? (@ starts with "ht")') ) ) AND jsonb_path_exists(doc,'$.user.geo_enabled ? (@ == true)') ) AND ( jsonb_path_exists(doc,'$.retweeted_status.place.country_code') OR jsonb_path_exists(doc,'$.quoted_status.user.is_translator') ) ) ;
SELECT COUNT(*) FROM Twitter  WHERE ( ( ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_screen_name') AND ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "1")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "2")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "3")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "F")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_background_image_url ? (@ starts with "ht")') ) ) AND jsonb_path_exists(doc,'$.user.geo_enabled ? (@ == true)') ) AND ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.description') OR jsonb_path_exists(doc,'$.retweeted_status.place.url.type() ? (@ == "string")') ) ) ;
SELECT COUNT(*) FROM Twitter  WHERE ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_screen_name') AND ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "1")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "2")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "3")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "F")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_background_image_url ? (@ starts with "ht")') ) ) AND jsonb_path_exists(doc,'$.user.geo_enabled ? (@ == true)') ) AND ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.description') OR jsonb_path_exists(doc,'$.retweeted_status.place.url.type() ? (@ == "string")') ) ) AND ( jsonb_path_exists(doc,'$.retweeted_status.user.id ? (@ == 767070079017431812)') OR jsonb_path_exists(doc,'$.user.time_zone.type() ? (@ == "string")') ) ) ;
SELECT COUNT(doc #> '{retweeted_status,quoted_status,user,profile_use_background_image}') FROM Twitter  WHERE ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.in_reply_to_screen_name') AND ( ( ( ( ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "1")') OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "2")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "0")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "3")') ) OR jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.profile_link_color ? (@ starts with "F")') ) OR jsonb_path_exists(doc,'$.retweeted_status.user.profile_background_image_url ? (@ starts with "ht")') ) ) AND jsonb_path_exists(doc,'$.user.geo_enabled ? (@ == true)') ) AND ( jsonb_path_exists(doc,'$.retweeted_status.quoted_status.user.description') OR jsonb_path_exists(doc,'$.retweeted_status.place.url.type() ? (@ == "string")') ) ) AND ( jsonb_path_exists(doc,'$.retweeted_status.user.id ? (@ == 767070079017431812)') OR jsonb_path_exists(doc,'$.user.time_zone.type() ? (@ == "string")') ) ) AND jsonb_path_exists(doc,'$.retweeted_status.quoted_status.created_at.type() ? (@ == "string")') ) ;
