#!/bin/sh

# Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.05, GoBackProb: 0.2, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
jq -c 'def agg(s): reduce s as $x (0; . + 1); agg(inputs | select(( .author_flair_text | type == "string" )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + ($x | .retrieved_on)); agg(inputs | select(( ( ( .author_flair_text | type == "string" ) and ( ( .edited == 1420550177 ) or ( .parent_id | (. != null and startswith("t3")) ) ) ) and ( .retrieved_on | type == "number" ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + ($x | .gilded | 1)); agg(inputs | select(( ( ( .author_flair_text | type == "string" ) and ( ( .edited == 1420550177 ) or ( .parent_id | (. != null and startswith("t3")) ) ) ) and ( ( ( ( ( ( ( ( .author_flair_css_class | (. != null and startswith("e")) ) or ( .author_flair_css_class | (. != null and startswith("f")) ) ) or ( .author_flair_css_class | (. != null and startswith("L")) ) ) or ( .author_flair_css_class | (. != null and startswith("b")) ) ) or ( .author_flair_css_class | (. != null and startswith("t")) ) ) or ( ( ( ( ( .subreddit | (. != null and startswith("a")) ) or ( .subreddit | (. != null and startswith("R")) ) ) or ( .subreddit | (. != null and startswith("s")) ) ) or ( .subreddit | (. != null and startswith("F")) ) ) or ( .subreddit | (. != null and startswith("I")) ) ) ) or ( ( ( ( ( .body | (. != null and startswith("유")) ) or ( .body | (. != null and startswith("Ј")) ) ) or ( .body | (. != null and startswith("🐷")) ) ) or ( .body | (. != null and startswith("¬")) ) ) or ( .body | (. != null and startswith("춤")) ) ) ) or ( .gilded >= 9.024323 ) ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + ($x | .subreddit | 1)); agg(inputs | select(( ( ( .author_flair_text | type == "string" ) and ( ( .edited == 1420550177 ) or ( .parent_id | (. != null and startswith("t3")) ) ) ) and ( .ups <= 2868.242622 ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + 1); agg(inputs | select(( ( ( .author_flair_text | type == "string" ) and ( ( .edited == 1420550177 ) or ( .parent_id | (. != null and startswith("t3")) ) ) ) and ( ( ( .author_flair_css_class | type == "string" ) and ( .ups == 3570 ) ) or ( .gilded <= 10.861787 ) ) )))' Reddit.json