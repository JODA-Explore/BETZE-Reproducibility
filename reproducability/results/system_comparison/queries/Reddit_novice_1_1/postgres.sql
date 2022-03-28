-- Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.3, GoBackProb: 0.5, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
SELECT COUNT(*) FROM Reddit  WHERE jsonb_path_exists(doc,'$.author_flair_text.type() ? (@ == "string")') ;
SELECT COUNT(doc #> '{retrieved_on}') FROM Reddit  WHERE jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t1")') ;
SELECT COUNT(doc #> '{subreddit}') FROM Reddit  WHERE ( ( ( ( ( jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "A")') OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "S")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "C")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "O")') ) OR ( jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t1")') AND jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t")') ) ) ;
SELECT COUNT(doc #> '{}') FROM Reddit  WHERE ( ( ( jsonb_path_exists(doc,'$.ups ? (@ >= 187.668806)') AND jsonb_path_exists(doc,'$.gilded ? (@ <= 14.373057)') ) AND ( ( ( ( jsonb_path_exists(doc,'$.body ? (@ starts with "℻")') OR jsonb_path_exists(doc,'$.body ? (@ starts with "渇")') ) OR jsonb_path_exists(doc,'$.body ? (@ starts with "的")') ) OR jsonb_path_exists(doc,'$.body ? (@ starts with "🚹")') ) OR jsonb_path_exists(doc,'$.body ? (@ starts with "誠")') ) ) OR jsonb_path_exists(doc,'$.retrieved_on ? (@ <= 1426626003.101902)') ) ;
SELECT COUNT(doc #> '{distinguished}') FROM Reddit  WHERE jsonb_path_exists(doc,'$.score ? (@ <= 3223.997784)') ;
SELECT COUNT(*) FROM Reddit  WHERE ( ( ( jsonb_path_exists(doc,'$.distinguished.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.score ? (@ >= -1819.702755)') ) AND ( ( ( ( jsonb_path_exists(doc,'$.author_flair_text ? (@ starts with "佐")') OR jsonb_path_exists(doc,'$.author_flair_text ? (@ starts with "ま")') ) OR jsonb_path_exists(doc,'$.author_flair_text ? (@ starts with "ダ")') ) OR jsonb_path_exists(doc,'$.author_flair_text ? (@ starts with "英")') ) OR jsonb_path_exists(doc,'$.author_flair_text ? (@ starts with "♃")') ) ) OR jsonb_path_exists(doc,'$.author_flair_text.type() ? (@ == "string")') ) ;
SELECT COUNT(*) FROM Reddit  WHERE ( jsonb_path_exists(doc,'$.gilded ? (@ <= 0.208424)') OR jsonb_path_exists(doc,'$.retrieved_on ? (@ >= 1427186370.359507)') ) ;
SELECT COUNT(doc #> '{}') FROM Reddit  WHERE ( jsonb_path_exists(doc,'$.author_flair_text.type() ? (@ == "string")') AND ( ( ( jsonb_path_exists(doc,'$.edited ? (@ == false)') AND jsonb_path_exists(doc,'$.ups ? (@ == 3145)') ) OR jsonb_path_exists(doc,'$.gilded ? (@ == 0)') ) OR jsonb_path_exists(doc,'$.ups ? (@ >= 3039.992676)') ) ) ;
SELECT COUNT(*) FROM Reddit  WHERE ( ( jsonb_path_exists(doc,'$.author_flair_text.type() ? (@ == "string")') AND ( ( ( jsonb_path_exists(doc,'$.edited ? (@ == false)') AND jsonb_path_exists(doc,'$.ups ? (@ == 3145)') ) OR jsonb_path_exists(doc,'$.gilded ? (@ == 0)') ) OR jsonb_path_exists(doc,'$.ups ? (@ >= 3039.992676)') ) ) AND ( ( ( ( ( jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "S")') OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "A")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "C")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "O")') ) OR jsonb_path_exists(doc,'$.retrieved_on ? (@ >= 1424847979.137940)') ) ) ;
SELECT SUM((doc #>> '{edited}')::float) FROM Reddit  WHERE ( ( ( ( ( ( ( jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "A")') OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "S")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "C")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "O")') ) OR ( jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t1")') AND jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t")') ) ) AND ( ( jsonb_path_exists(doc,'$.id ? (@ starts with "cnf")') OR jsonb_path_exists(doc,'$.id ? (@ starts with "co5")') ) OR jsonb_path_exists(doc,'$.score ? (@ <= 2399.439596)') ) ) AND jsonb_path_exists(doc,'$.edited.type() ? (@ == "number")') ) ;
SELECT COUNT(doc #> '{subreddit}') FROM Reddit  WHERE ( ( ( ( ( ( jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "A")') OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "S")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "C")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "O")') ) OR ( jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t1")') AND jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t")') ) ) AND ( ( ( ( ( ( ( jsonb_path_exists(doc,'$.body ? (@ starts with "ח")') OR jsonb_path_exists(doc,'$.body ? (@ starts with "Ǔ")') ) OR jsonb_path_exists(doc,'$.body ? (@ starts with "ʎ")') ) OR jsonb_path_exists(doc,'$.body ? (@ starts with "🔳")') ) OR jsonb_path_exists(doc,'$.body ? (@ starts with "正")') ) OR jsonb_path_exists(doc,'$.ups ? (@ == 2090)') ) OR ( ( ( ( jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "T")') OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "M")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "E")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "m")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "H")') ) ) OR jsonb_path_exists(doc,'$.gilded ? (@ <= 5.702645)') ) ) ;
SELECT COUNT(doc #> '{}') FROM Reddit  WHERE ( ( ( ( ( ( jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "A")') OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "S")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "C")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "O")') ) OR ( jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t1")') AND jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t")') ) ) AND ( ( ( ( ( ( jsonb_path_exists(doc,'$.author ? (@ starts with "C")') OR jsonb_path_exists(doc,'$.author ? (@ starts with "I")') ) OR jsonb_path_exists(doc,'$.author ? (@ starts with "F")') ) OR jsonb_path_exists(doc,'$.author ? (@ starts with "_")') ) OR jsonb_path_exists(doc,'$.author ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.score ? (@ == 3709)') ) OR jsonb_path_exists(doc,'$.retrieved_on ? (@ <= 1427694332.410212)') ) ) ;
SELECT COUNT(*) FROM Reddit  WHERE ( ( ( ( ( ( jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "A")') OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "S")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "C")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "O")') ) OR ( jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t1")') AND jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t")') ) ) AND ( ( jsonb_path_exists(doc,'$.ups ? (@ <= -300.871288)') OR jsonb_path_exists(doc,'$.author_flair_css_class.type() ? (@ == "string")') ) AND jsonb_path_exists(doc,'$.gilded ? (@ <= 2.638175)') ) ) ;
SELECT COUNT(doc #> '{id}') FROM Reddit  WHERE ( ( ( ( ( ( jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "A")') OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "S")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "C")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "O")') ) OR ( jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t1")') AND jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t")') ) ) AND ( ( jsonb_path_exists(doc,'$.author_flair_css_class.type() ? (@ == "string")') AND jsonb_path_exists(doc,'$.score_hidden ? (@ == true)') ) OR jsonb_path_exists(doc,'$.ups ? (@ <= 1611.321850)') ) ) ;
SELECT COUNT(*) FROM Reddit  WHERE ( ( ( ( ( ( ( jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "A")') OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "S")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "C")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "O")') ) OR ( jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t1")') AND jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t")') ) ) AND ( ( jsonb_path_exists(doc,'$.author_flair_css_class.type() ? (@ == "string")') AND jsonb_path_exists(doc,'$.score_hidden ? (@ == true)') ) OR jsonb_path_exists(doc,'$.ups ? (@ <= 1611.321850)') ) ) AND ( ( ( ( ( jsonb_path_exists(doc,'$.id ? (@ starts with "cnc")') OR jsonb_path_exists(doc,'$.id ? (@ starts with "co6")') ) OR jsonb_path_exists(doc,'$.id ? (@ starts with "cnm")') ) OR jsonb_path_exists(doc,'$.id ? (@ starts with "co1")') ) OR jsonb_path_exists(doc,'$.id ? (@ starts with "cnj")') ) OR jsonb_path_exists(doc,'$.retrieved_on ? (@ <= 1424633622.017101)') ) ) ;
SELECT COUNT(*) FROM Reddit  WHERE ( ( ( ( ( ( ( jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "A")') OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "S")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "C")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "O")') ) OR ( jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t1")') AND jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t")') ) ) AND ( ( jsonb_path_exists(doc,'$.author_flair_css_class.type() ? (@ == "string")') AND jsonb_path_exists(doc,'$.score_hidden ? (@ == true)') ) OR jsonb_path_exists(doc,'$.ups ? (@ <= 1611.321850)') ) ) AND jsonb_path_exists(doc,'$.ups ? (@ <= 1255.875462)') ) ;
SELECT COUNT(*) FROM Reddit  WHERE ( ( ( ( ( ( ( jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "A")') OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "S")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "C")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "O")') ) OR ( jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t1")') AND jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t")') ) ) AND ( ( jsonb_path_exists(doc,'$.author_flair_css_class.type() ? (@ == "string")') AND jsonb_path_exists(doc,'$.score_hidden ? (@ == true)') ) OR jsonb_path_exists(doc,'$.ups ? (@ <= 1611.321850)') ) ) AND ( jsonb_path_exists(doc,'$.edited ? (@ == false)') AND jsonb_path_exists(doc,'$.score ? (@ <= 641.083556)') ) ) ;
SELECT COUNT(*) FROM Reddit  WHERE ( ( ( jsonb_path_exists(doc,'$.author_flair_text.type() ? (@ == "string")') AND ( ( ( jsonb_path_exists(doc,'$.edited ? (@ == false)') AND jsonb_path_exists(doc,'$.ups ? (@ == 3145)') ) OR jsonb_path_exists(doc,'$.gilded ? (@ == 0)') ) OR jsonb_path_exists(doc,'$.ups ? (@ >= 3039.992676)') ) ) AND ( ( ( ( ( jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "S")') OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "A")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "C")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "O")') ) OR jsonb_path_exists(doc,'$.retrieved_on ? (@ >= 1424847979.137940)') ) ) AND jsonb_path_exists(doc,'$.ups ? (@ <= 300.441349)') ) ;
SELECT COUNT(doc #> '{name}') FROM Reddit  WHERE ( ( ( ( jsonb_path_exists(doc,'$.author_flair_text.type() ? (@ == "string")') AND ( ( ( jsonb_path_exists(doc,'$.edited ? (@ == false)') AND jsonb_path_exists(doc,'$.ups ? (@ == 3145)') ) OR jsonb_path_exists(doc,'$.gilded ? (@ == 0)') ) OR jsonb_path_exists(doc,'$.ups ? (@ >= 3039.992676)') ) ) AND ( ( ( ( ( jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "S")') OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "A")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "C")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "O")') ) OR jsonb_path_exists(doc,'$.retrieved_on ? (@ >= 1424847979.137940)') ) ) AND jsonb_path_exists(doc,'$.ups ? (@ <= 300.441349)') ) AND ( ( jsonb_path_exists(doc,'$.distinguished.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.retrieved_on ? (@ >= 1425047299.525709)') ) OR jsonb_path_exists(doc,'$.retrieved_on ? (@ >= 1425054174.734734)') ) ) ;
SELECT COUNT(*) FROM Reddit  WHERE ( ( ( ( jsonb_path_exists(doc,'$.author_flair_text.type() ? (@ == "string")') AND ( ( ( jsonb_path_exists(doc,'$.edited ? (@ == false)') AND jsonb_path_exists(doc,'$.ups ? (@ == 3145)') ) OR jsonb_path_exists(doc,'$.gilded ? (@ == 0)') ) OR jsonb_path_exists(doc,'$.ups ? (@ >= 3039.992676)') ) ) AND ( ( ( ( ( jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "S")') OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "A")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "C")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "O")') ) OR jsonb_path_exists(doc,'$.retrieved_on ? (@ >= 1424847979.137940)') ) ) AND jsonb_path_exists(doc,'$.ups ? (@ <= 300.441349)') ) AND jsonb_path_exists(doc,'$.retrieved_on ? (@ >= 1425002718.836570)') ) ;
