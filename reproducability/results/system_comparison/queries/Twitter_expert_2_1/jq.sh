#!/bin/sh

# Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.05, GoBackProb: 0.2, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
jq -c 'inputs | select(( .user.lang | type == "string" ))' Twitter.json | jq -s -c 'def agg(s): reduce s as $x (0; . + ($x | .place.name | 1));  group_by(.filter_level) | map({group: .[0].filter_level,  count: agg(.[])})'
jq -c 'inputs | select(( ( ( .user.lang | type == "string" ) and ( ( ( ( .retweeted_status.quoted_status.user.friends_count <= 2151584.114948 ) and ( .quoted_status.user | has("profile_sidebar_fill_color") ) ) or ( .quoted_status.user.url | (. != null and startswith("ht")) ) ) or ( .retweeted_status.user | has("id_str") ) ) ) and ( .favorite_count | type == "number" ) ))' Twitter.json | jq -s -c 'def agg(s): reduce s as $x (0; . + ($x | .favorite_count));  group_by(.retweeted_status.user.location) | map({group: .[0].retweeted_status.user.location,  sum: agg(.[])})'
jq -c 'inputs | select(( ( ( .user.lang | type == "string" ) and ( ( ( ( .retweeted_status.quoted_status.user.friends_count <= 2151584.114948 ) and ( .quoted_status.user | has("profile_sidebar_fill_color") ) ) or ( .quoted_status.user.url | (. != null and startswith("ht")) ) ) or ( .retweeted_status.user | has("id_str") ) ) ) and ( .extended_entities.media | length <= 1 ) ))' Twitter.json | jq -s -c 'def agg(s): reduce s as $x (0; . + ($x | .possibly_sensitive | 1));  group_by(.retweeted_status.in_reply_to_status_id) | map({group: .[0].retweeted_status.in_reply_to_status_id,  count: agg(.[])})'
jq -c 'inputs | select(( ( ( ( .user.lang | type == "string" ) and ( ( ( ( .retweeted_status.quoted_status.user.friends_count <= 2151584.114948 ) and ( .quoted_status.user | has("profile_sidebar_fill_color") ) ) or ( .quoted_status.user.url | (. != null and startswith("ht")) ) ) or ( .retweeted_status.user | has("id_str") ) ) ) and ( .extended_entities.media | length <= 1 ) ) and ( ( .in_reply_to_screen_name | type == "string" ) or ( .retweeted_status.user.profile_background_tile == false ) ) ))' Twitter.json | jq -s -c 'def agg(s): reduce s as $x (0; . + 1);  group_by(.quoted_status.favorite_count) | map({group: .[0].quoted_status.favorite_count,  count: agg(.[])})'
jq -c 'inputs | select(( ( ( ( .user.lang | type == "string" ) and ( ( ( ( .retweeted_status.quoted_status.user.friends_count <= 2151584.114948 ) and ( .quoted_status.user | has("profile_sidebar_fill_color") ) ) or ( .quoted_status.user.url | (. != null and startswith("ht")) ) ) or ( .retweeted_status.user | has("id_str") ) ) ) and ( .extended_entities.media | length <= 1 ) ) and ( ( ( ( .extended_tweet.extended_entities | has("media") ) or ( .retweeted_status.extended_tweet.entities | has("hashtags") ) ) or ( .retweeted_status.quoted_status.user | has("profile_link_color") ) ) or ( .user.profile_banner_url | (. != null and startswith("ht")) ) ) ))' Twitter.json | jq -s -c 'def agg(s): reduce s as $x (0; . + 1);  group_by(.retweeted_status.quoted_status.favorited) | map({group: .[0].retweeted_status.quoted_status.favorited,  count: agg(.[])})'
