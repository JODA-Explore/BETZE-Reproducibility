-- Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.1, GoBackProb: 0.4, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
SELECT doc #> '{author_flair_css_class}' as group, COUNT(*) FROM Reddit  WHERE jsonb_path_exists(doc,'$.author_flair_text.type() ? (@ == "string")')  GROUP BY doc #> '{author_flair_css_class}';
SELECT doc #> '{subreddit_id}' as group, COUNT(*) FROM Reddit  WHERE jsonb_path_exists(doc,'$.author_flair_text.type() ? (@ == "string")')  GROUP BY doc #> '{subreddit_id}';
SELECT doc #> '{subreddit_id}' as group, COUNT(doc #> '{retrieved_on}') FROM Reddit  WHERE ( ( ( jsonb_path_exists(doc,'$.ups ? (@ >= -2568.142387)') AND jsonb_path_exists(doc,'$.retrieved_on ? (@ == 1426815198)') ) OR jsonb_path_exists(doc,'$.score_hidden ? (@ == false)') ) AND jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t1_")') )  GROUP BY doc #> '{subreddit_id}';
SELECT doc #> '{subreddit_id}' as group, COUNT(doc #> '{controversiality}') FROM Reddit  WHERE jsonb_path_exists(doc,'$.gilded ? (@ <= 9.694694)')  GROUP BY doc #> '{subreddit_id}';
SELECT doc #> '{id}' as group, COUNT(doc #> '{subreddit_id}') FROM Reddit  WHERE ( jsonb_path_exists(doc,'$.retrieved_on ? (@ == 1426747845)') OR jsonb_path_exists(doc,'$.author_flair_text.type() ? (@ == "string")') )  GROUP BY doc #> '{id}';
SELECT doc #> '{author_flair_css_class}' as group, COUNT(*) FROM Reddit  WHERE jsonb_path_exists(doc,'$.author_flair_text.type() ? (@ == "string")')  GROUP BY doc #> '{author_flair_css_class}';
SELECT doc #> '{score}' as group, COUNT(*) FROM Reddit  WHERE jsonb_path_exists(doc,'$.gilded ? (@ <= 10.911910)')  GROUP BY doc #> '{score}';
SELECT doc #> '{body}' as group, COUNT(*) FROM Reddit  WHERE ( ( ( jsonb_path_exists(doc,'$.retrieved_on ? (@ == 1426067628)') OR jsonb_path_exists(doc,'$.score_hidden ? (@ == false)') ) AND ( ( ( ( jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "S")') OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "A")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "C")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "O")') ) ) OR jsonb_path_exists(doc,'$.parent_id ? (@ starts with "t1_")') )  GROUP BY doc #> '{body}';
SELECT doc #> '{author_flair_css_class}' as group, COUNT(doc #> '{link_id}') FROM Reddit  WHERE jsonb_path_exists(doc,'$.author_flair_text.type() ? (@ == "string")')  GROUP BY doc #> '{author_flair_css_class}';
SELECT doc #> '{body}' as group, COUNT(*) FROM Reddit  WHERE ( ( ( ( ( ( jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "S")') OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "A")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "z")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "C")') ) OR jsonb_path_exists(doc,'$.author_flair_css_class ? (@ starts with "O")') ) OR jsonb_path_exists(doc,'$.edited ? (@ >= 1427185962.264386)') ) OR jsonb_path_exists(doc,'$.author_flair_text.type() ? (@ == "string")') )  GROUP BY doc #> '{body}';