#!/bin/sh

# Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.1, GoBackProb: 0.4, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
jq -c 'def agg(s): reduce s as $x (0; . + 1); agg(inputs | select(( .author_flair_text | type == "string" )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + 1); agg(inputs | select(( ( .ups == -168 ) or ( .parent_id | (. != null and startswith("t1")) ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + ($x | .score | 1)); agg(inputs | select(( .gilded <= 3.939531 )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + 1); agg(inputs | select(( ( .retrieved_on == 1426153442 ) or ( .gilded <= 4.314035 ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + 1); agg(inputs | select(( ( ( ( .edited == 1420184732 ) or ( ( ( ( ( .author | (. != null and startswith("e")) ) or ( .author | (. != null and startswith("c")) ) ) or ( .author | (. != null and startswith("J")) ) ) or ( .author | (. != null and startswith("2")) ) ) or ( .author | (. != null and startswith("E")) ) ) ) or ( .score == 3218 ) ) or ( .author_flair_text | type == "string" ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + ($x | .name | 1)); agg(inputs | select(( ( ( ( ( ( ( ( .author_flair_text | (. != null and startswith("ค")) ) or ( .author_flair_text | (. != null and startswith("⋙")) ) ) or ( .author_flair_text | (. != null and startswith("♒")) ) ) or ( .author_flair_text | (. != null and startswith("하")) ) ) or ( .author_flair_text | (. != null and startswith("श")) ) ) or ( ( ( .distinguished | (. != null and startswith("mo")) ) or ( .distinguished | (. != null and startswith("sp")) ) ) and ( .distinguished | (. != null and startswith("m")) ) ) ) or ( ( ( ( ( .author | (. != null and startswith("I")) ) or ( .author | (. != null and startswith("T")) ) ) or ( .author | (. != null and startswith("J")) ) ) or ( .author | (. != null and startswith("i")) ) ) or ( .author | (. != null and startswith("2")) ) ) ) or ( .gilded <= 4.929144 ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + 1); agg(inputs | select(( .author_flair_text | type == "string" )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + ($x | .archived | 1)); agg(inputs | select(( ( ( ( ( ( ( .subreddit | (. != null and startswith("A")) ) or ( .subreddit | (. != null and startswith("E")) ) ) or ( .subreddit | (. != null and startswith("S")) ) ) or ( .subreddit | (. != null and startswith("P")) ) ) or ( .subreddit | (. != null and startswith("C")) ) ) or ( .ups <= 5735.534501 ) ) and ( .author_flair_text | type == "string" ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + 1); agg(inputs | select(( ( .edited == 1424055301 ) or ( .parent_id | (. != null and startswith("t")) ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + 1); agg(inputs | select(( ( ( .edited == 1424055301 ) or ( .parent_id | (. != null and startswith("t")) ) ) and ( ( ( ( ( ( ( .author_flair_css_class | (. != null and startswith("T")) ) or ( .author_flair_css_class | (. != null and startswith("M")) ) ) or ( .author_flair_css_class | (. != null and startswith("E")) ) ) or ( .author_flair_css_class | (. != null and startswith("m")) ) ) or ( .author_flair_css_class | (. != null and startswith("H")) ) ) or ( ( ( ( ( .author | (. != null and startswith("I")) ) or ( .author | (. != null and startswith("C")) ) ) or ( .author | (. != null and startswith("K")) ) ) or ( .author | (. != null and startswith("P")) ) ) or ( .author | (. != null and startswith("d")) ) ) ) or ( .edited <= 1422820182.807527 ) ) )))' Reddit.json
