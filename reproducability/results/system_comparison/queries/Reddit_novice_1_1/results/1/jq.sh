#!/bin/sh

# Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.3, GoBackProb: 0.5, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
jq -c 'def agg(s): reduce s as $x (0; . + 1); agg(inputs | select(( .author_flair_text | type == "string" )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + ($x | .retrieved_on | 1)); agg(inputs | select(( .parent_id | (. != null and startswith("t1")) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + ($x | .subreddit | 1)); agg(inputs | select(( ( ( ( ( ( .author_flair_css_class | (. != null and startswith("A")) ) or ( .author_flair_css_class | (. != null and startswith("S")) ) ) or ( .author_flair_css_class | (. != null and startswith("z")) ) ) or ( .author_flair_css_class | (. != null and startswith("C")) ) ) or ( .author_flair_css_class | (. != null and startswith("O")) ) ) or ( ( .parent_id | (. != null and startswith("t1")) ) and ( .parent_id | (. != null and startswith("t")) ) ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + ($x | . | 1)); agg(inputs | select(( ( ( ( .ups >= 187.668806 ) and ( .gilded <= 14.373057 ) ) and ( ( ( ( ( .body | (. != null and startswith("℻")) ) or ( .body | (. != null and startswith("渇")) ) ) or ( .body | (. != null and startswith("的")) ) ) or ( .body | (. != null and startswith("🚹")) ) ) or ( .body | (. != null and startswith("誠")) ) ) ) or ( .retrieved_on <= 1426626003.101902 ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + ($x | .distinguished | 1)); agg(inputs | select(( .score <= 3223.997784 )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + 1); agg(inputs | select(( ( ( ( .distinguished | type == "string" ) or ( .score >= -1819.702755 ) ) and ( ( ( ( ( .author_flair_text | (. != null and startswith("佐")) ) or ( .author_flair_text | (. != null and startswith("ま")) ) ) or ( .author_flair_text | (. != null and startswith("ダ")) ) ) or ( .author_flair_text | (. != null and startswith("英")) ) ) or ( .author_flair_text | (. != null and startswith("♃")) ) ) ) or ( .author_flair_text | type == "string" ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + 1); agg(inputs | select(( ( .gilded <= 0.208424 ) or ( .retrieved_on >= 1427186370.359507 ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + ($x | . | 1)); agg(inputs | select(( ( .author_flair_text | type == "string" ) and ( ( ( ( .edited == false ) and ( .ups == 3145 ) ) or ( .gilded == 0 ) ) or ( .ups >= 3039.992676 ) ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + 1); agg(inputs | select(( ( ( .author_flair_text | type == "string" ) and ( ( ( ( .edited == false ) and ( .ups == 3145 ) ) or ( .gilded == 0 ) ) or ( .ups >= 3039.992676 ) ) ) and ( ( ( ( ( ( .author_flair_css_class | (. != null and startswith("S")) ) or ( .author_flair_css_class | (. != null and startswith("A")) ) ) or ( .author_flair_css_class | (. != null and startswith("z")) ) ) or ( .author_flair_css_class | (. != null and startswith("C")) ) ) or ( .author_flair_css_class | (. != null and startswith("O")) ) ) or ( .retrieved_on >= 1424847979.137940 ) ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + ($x | .edited)); agg(inputs | select(( ( ( ( ( ( ( ( .author_flair_css_class | (. != null and startswith("A")) ) or ( .author_flair_css_class | (. != null and startswith("S")) ) ) or ( .author_flair_css_class | (. != null and startswith("z")) ) ) or ( .author_flair_css_class | (. != null and startswith("C")) ) ) or ( .author_flair_css_class | (. != null and startswith("O")) ) ) or ( ( .parent_id | (. != null and startswith("t1")) ) and ( .parent_id | (. != null and startswith("t")) ) ) ) and ( ( ( .id | (. != null and startswith("cnf")) ) or ( .id | (. != null and startswith("co5")) ) ) or ( .score <= 2399.439596 ) ) ) and ( .edited | type == "number" ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + ($x | .subreddit | 1)); agg(inputs | select(( ( ( ( ( ( ( .author_flair_css_class | (. != null and startswith("A")) ) or ( .author_flair_css_class | (. != null and startswith("S")) ) ) or ( .author_flair_css_class | (. != null and startswith("z")) ) ) or ( .author_flair_css_class | (. != null and startswith("C")) ) ) or ( .author_flair_css_class | (. != null and startswith("O")) ) ) or ( ( .parent_id | (. != null and startswith("t1")) ) and ( .parent_id | (. != null and startswith("t")) ) ) ) and ( ( ( ( ( ( ( ( .body | (. != null and startswith("ח")) ) or ( .body | (. != null and startswith("Ǔ")) ) ) or ( .body | (. != null and startswith("ʎ")) ) ) or ( .body | (. != null and startswith("🔳")) ) ) or ( .body | (. != null and startswith("正")) ) ) or ( .ups == 2090 ) ) or ( ( ( ( ( .author_flair_css_class | (. != null and startswith("T")) ) or ( .author_flair_css_class | (. != null and startswith("M")) ) ) or ( .author_flair_css_class | (. != null and startswith("E")) ) ) or ( .author_flair_css_class | (. != null and startswith("m")) ) ) or ( .author_flair_css_class | (. != null and startswith("H")) ) ) ) or ( .gilded <= 5.702645 ) ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + ($x | . | 1)); agg(inputs | select(( ( ( ( ( ( ( .author_flair_css_class | (. != null and startswith("A")) ) or ( .author_flair_css_class | (. != null and startswith("S")) ) ) or ( .author_flair_css_class | (. != null and startswith("z")) ) ) or ( .author_flair_css_class | (. != null and startswith("C")) ) ) or ( .author_flair_css_class | (. != null and startswith("O")) ) ) or ( ( .parent_id | (. != null and startswith("t1")) ) and ( .parent_id | (. != null and startswith("t")) ) ) ) and ( ( ( ( ( ( ( .author | (. != null and startswith("C")) ) or ( .author | (. != null and startswith("I")) ) ) or ( .author | (. != null and startswith("F")) ) ) or ( .author | (. != null and startswith("_")) ) ) or ( .author | (. != null and startswith("z")) ) ) or ( .score == 3709 ) ) or ( .retrieved_on <= 1427694332.410212 ) ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + 1); agg(inputs | select(( ( ( ( ( ( ( .author_flair_css_class | (. != null and startswith("A")) ) or ( .author_flair_css_class | (. != null and startswith("S")) ) ) or ( .author_flair_css_class | (. != null and startswith("z")) ) ) or ( .author_flair_css_class | (. != null and startswith("C")) ) ) or ( .author_flair_css_class | (. != null and startswith("O")) ) ) or ( ( .parent_id | (. != null and startswith("t1")) ) and ( .parent_id | (. != null and startswith("t")) ) ) ) and ( ( ( .ups <= -300.871288 ) or ( .author_flair_css_class | type == "string" ) ) and ( .gilded <= 2.638175 ) ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + ($x | .id | 1)); agg(inputs | select(( ( ( ( ( ( ( .author_flair_css_class | (. != null and startswith("A")) ) or ( .author_flair_css_class | (. != null and startswith("S")) ) ) or ( .author_flair_css_class | (. != null and startswith("z")) ) ) or ( .author_flair_css_class | (. != null and startswith("C")) ) ) or ( .author_flair_css_class | (. != null and startswith("O")) ) ) or ( ( .parent_id | (. != null and startswith("t1")) ) and ( .parent_id | (. != null and startswith("t")) ) ) ) and ( ( ( .author_flair_css_class | type == "string" ) and ( .score_hidden == true ) ) or ( .ups <= 1611.321850 ) ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + 1); agg(inputs | select(( ( ( ( ( ( ( ( .author_flair_css_class | (. != null and startswith("A")) ) or ( .author_flair_css_class | (. != null and startswith("S")) ) ) or ( .author_flair_css_class | (. != null and startswith("z")) ) ) or ( .author_flair_css_class | (. != null and startswith("C")) ) ) or ( .author_flair_css_class | (. != null and startswith("O")) ) ) or ( ( .parent_id | (. != null and startswith("t1")) ) and ( .parent_id | (. != null and startswith("t")) ) ) ) and ( ( ( .author_flair_css_class | type == "string" ) and ( .score_hidden == true ) ) or ( .ups <= 1611.321850 ) ) ) and ( ( ( ( ( ( .id | (. != null and startswith("cnc")) ) or ( .id | (. != null and startswith("co6")) ) ) or ( .id | (. != null and startswith("cnm")) ) ) or ( .id | (. != null and startswith("co1")) ) ) or ( .id | (. != null and startswith("cnj")) ) ) or ( .retrieved_on <= 1424633622.017101 ) ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + 1); agg(inputs | select(( ( ( ( ( ( ( ( .author_flair_css_class | (. != null and startswith("A")) ) or ( .author_flair_css_class | (. != null and startswith("S")) ) ) or ( .author_flair_css_class | (. != null and startswith("z")) ) ) or ( .author_flair_css_class | (. != null and startswith("C")) ) ) or ( .author_flair_css_class | (. != null and startswith("O")) ) ) or ( ( .parent_id | (. != null and startswith("t1")) ) and ( .parent_id | (. != null and startswith("t")) ) ) ) and ( ( ( .author_flair_css_class | type == "string" ) and ( .score_hidden == true ) ) or ( .ups <= 1611.321850 ) ) ) and ( .ups <= 1255.875462 ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + 1); agg(inputs | select(( ( ( ( ( ( ( ( .author_flair_css_class | (. != null and startswith("A")) ) or ( .author_flair_css_class | (. != null and startswith("S")) ) ) or ( .author_flair_css_class | (. != null and startswith("z")) ) ) or ( .author_flair_css_class | (. != null and startswith("C")) ) ) or ( .author_flair_css_class | (. != null and startswith("O")) ) ) or ( ( .parent_id | (. != null and startswith("t1")) ) and ( .parent_id | (. != null and startswith("t")) ) ) ) and ( ( ( .author_flair_css_class | type == "string" ) and ( .score_hidden == true ) ) or ( .ups <= 1611.321850 ) ) ) and ( ( .edited == false ) and ( .score <= 641.083556 ) ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + 1); agg(inputs | select(( ( ( ( .author_flair_text | type == "string" ) and ( ( ( ( .edited == false ) and ( .ups == 3145 ) ) or ( .gilded == 0 ) ) or ( .ups >= 3039.992676 ) ) ) and ( ( ( ( ( ( .author_flair_css_class | (. != null and startswith("S")) ) or ( .author_flair_css_class | (. != null and startswith("A")) ) ) or ( .author_flair_css_class | (. != null and startswith("z")) ) ) or ( .author_flair_css_class | (. != null and startswith("C")) ) ) or ( .author_flair_css_class | (. != null and startswith("O")) ) ) or ( .retrieved_on >= 1424847979.137940 ) ) ) and ( .ups <= 300.441349 ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + ($x | .name | 1)); agg(inputs | select(( ( ( ( ( .author_flair_text | type == "string" ) and ( ( ( ( .edited == false ) and ( .ups == 3145 ) ) or ( .gilded == 0 ) ) or ( .ups >= 3039.992676 ) ) ) and ( ( ( ( ( ( .author_flair_css_class | (. != null and startswith("S")) ) or ( .author_flair_css_class | (. != null and startswith("A")) ) ) or ( .author_flair_css_class | (. != null and startswith("z")) ) ) or ( .author_flair_css_class | (. != null and startswith("C")) ) ) or ( .author_flair_css_class | (. != null and startswith("O")) ) ) or ( .retrieved_on >= 1424847979.137940 ) ) ) and ( .ups <= 300.441349 ) ) and ( ( ( .distinguished | type == "string" ) or ( .retrieved_on >= 1425047299.525709 ) ) or ( .retrieved_on >= 1425054174.734734 ) ) )))' Reddit.json
jq -c 'def agg(s): reduce s as $x (0; . + 1); agg(inputs | select(( ( ( ( ( .author_flair_text | type == "string" ) and ( ( ( ( .edited == false ) and ( .ups == 3145 ) ) or ( .gilded == 0 ) ) or ( .ups >= 3039.992676 ) ) ) and ( ( ( ( ( ( .author_flair_css_class | (. != null and startswith("S")) ) or ( .author_flair_css_class | (. != null and startswith("A")) ) ) or ( .author_flair_css_class | (. != null and startswith("z")) ) ) or ( .author_flair_css_class | (. != null and startswith("C")) ) ) or ( .author_flair_css_class | (. != null and startswith("O")) ) ) or ( .retrieved_on >= 1424847979.137940 ) ) ) and ( .ups <= 300.441349 ) ) and ( .retrieved_on >= 1425002718.836570 ) )))' Reddit.json
