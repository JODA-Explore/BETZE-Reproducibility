#!/bin/sh

# Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.05, GoBackProb: 0.2, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
jq -c 'inputs | select(( .user.lang | type == "string" ))' Twitter.json
jq -c 'inputs | select(( ( .user.lang | type == "string" ) and ( .retweeted_status | has("place") ) ))' Twitter.json
jq -c 'inputs | select(( ( .user.lang | type == "string" ) and ( ( ( ( .retweeted_status.quoted_status.in_reply_to_screen_name | type == "string" ) or ( ( ( ( ( .retweeted_status.in_reply_to_user_id_str | (. != null and startswith("2")) ) or ( .retweeted_status.in_reply_to_user_id_str | (. != null and startswith("7")) ) ) or ( .retweeted_status.in_reply_to_user_id_str | (. != null and startswith("5")) ) ) or ( .retweeted_status.in_reply_to_user_id_str | (. != null and startswith("8")) ) ) or ( .retweeted_status.in_reply_to_user_id_str | (. != null and startswith("3")) ) ) ) or ( .quoted_status.user | has("id_str") ) ) or ( .retweeted_status.user | has("profile_sidebar_fill_color") ) ) ))' Twitter.json
jq -c 'inputs | select(( ( .user.lang | type == "string" ) and ( ( .extended_tweet.full_text | type == "string" ) or ( .retweeted_status.user.profile_background_image_url_https | type == "string" ) ) ))' Twitter.json
jq -c 'inputs | select(( ( .user.lang | type == "string" ) and ( ( ( .quoted_status.user.profile_background_tile == false ) or ( .retweeted_status.quoted_status.in_reply_to_status_id_str | type == "string" ) ) or ( .retweeted_status.user.name | type == "string" ) ) ))' Twitter.json