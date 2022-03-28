#!/bin/sh

# Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.1, GoBackProb: 0.4, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
jq -c 'inputs | select(( .author_flair_text | type == "string" ))' Reddit.json | jq -s -c 'def agg(s): reduce s as $x (0; . + 1);  group_by(.author_flair_css_class) | map({group: .[0].author_flair_css_class,  count: agg(.[])})'
jq -c 'inputs | select(( .author_flair_text | type == "string" ))' Reddit.json | jq -s -c 'def agg(s): reduce s as $x (0; . + 1);  group_by(.subreddit_id) | map({group: .[0].subreddit_id,  count: agg(.[])})'
jq -c 'inputs | select(( ( ( ( .ups >= -2568.142387 ) and ( .retrieved_on == 1426815198 ) ) or ( .score_hidden == false ) ) and ( .parent_id | (. != null and startswith("t1_")) ) ))' Reddit.json | jq -s -c 'def agg(s): reduce s as $x (0; . + ($x | .retrieved_on | 1));  group_by(.subreddit_id) | map({group: .[0].subreddit_id,  count: agg(.[])})'
jq -c 'inputs | select(( .gilded <= 9.694694 ))' Reddit.json | jq -s -c 'def agg(s): reduce s as $x (0; . + ($x | .controversiality | 1));  group_by(.subreddit_id) | map({group: .[0].subreddit_id,  count: agg(.[])})'
jq -c 'inputs | select(( ( .retrieved_on == 1426747845 ) or ( .author_flair_text | type == "string" ) ))' Reddit.json | jq -s -c 'def agg(s): reduce s as $x (0; . + ($x | .subreddit_id | 1));  group_by(.id) | map({group: .[0].id,  count: agg(.[])})'
jq -c 'inputs | select(( .author_flair_text | type == "string" ))' Reddit.json | jq -s -c 'def agg(s): reduce s as $x (0; . + 1);  group_by(.author_flair_css_class) | map({group: .[0].author_flair_css_class,  count: agg(.[])})'
jq -c 'inputs | select(( .gilded <= 10.911910 ))' Reddit.json | jq -s -c 'def agg(s): reduce s as $x (0; . + 1);  group_by(.score) | map({group: .[0].score,  count: agg(.[])})'
jq -c 'inputs | select(( ( ( ( .retrieved_on == 1426067628 ) or ( .score_hidden == false ) ) and ( ( ( ( ( .author_flair_css_class | (. != null and startswith("S")) ) or ( .author_flair_css_class | (. != null and startswith("A")) ) ) or ( .author_flair_css_class | (. != null and startswith("z")) ) ) or ( .author_flair_css_class | (. != null and startswith("C")) ) ) or ( .author_flair_css_class | (. != null and startswith("O")) ) ) ) or ( .parent_id | (. != null and startswith("t1_")) ) ))' Reddit.json | jq -s -c 'def agg(s): reduce s as $x (0; . + 1);  group_by(.body) | map({group: .[0].body,  count: agg(.[])})'
jq -c 'inputs | select(( .author_flair_text | type == "string" ))' Reddit.json | jq -s -c 'def agg(s): reduce s as $x (0; . + ($x | .link_id | 1));  group_by(.author_flair_css_class) | map({group: .[0].author_flair_css_class,  count: agg(.[])})'
jq -c 'inputs | select(( ( ( ( ( ( ( .author_flair_css_class | (. != null and startswith("S")) ) or ( .author_flair_css_class | (. != null and startswith("A")) ) ) or ( .author_flair_css_class | (. != null and startswith("z")) ) ) or ( .author_flair_css_class | (. != null and startswith("C")) ) ) or ( .author_flair_css_class | (. != null and startswith("O")) ) ) or ( .edited >= 1427185962.264386 ) ) or ( .author_flair_text | type == "string" ) ))' Reddit.json | jq -s -c 'def agg(s): reduce s as $x (0; . + 1);  group_by(.body) | map({group: .[0].body,  count: agg(.[])})'
