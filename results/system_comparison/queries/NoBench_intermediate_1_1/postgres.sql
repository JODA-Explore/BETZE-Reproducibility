-- Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.1, GoBackProb: 0.4, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
SELECT COUNT(*) FROM NoBench  WHERE jsonb_path_exists(doc,'$.bool ? (@ == false)') ;
SELECT COUNT(doc #> '{sparse_660}') FROM NoBench  WHERE ( jsonb_path_exists(doc,'$.bool ? (@ == false)') AND jsonb_path_exists(doc,'$.dyn2.type() ? (@ == "string")') ) ;
SELECT COUNT(doc #> '{sparse_548}') FROM NoBench  WHERE ( ( jsonb_path_exists(doc,'$.bool ? (@ == false)') AND jsonb_path_exists(doc,'$.dyn2.type() ? (@ == "string")') ) AND ( ( jsonb_path_exists(doc,'$.sparse_207.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_041') ) OR jsonb_path_exists(doc,'$.dyn1 ? (@ >= 7144911.043220)') ) ) ;
SELECT COUNT(*) FROM NoBench  WHERE ( ( ( jsonb_path_exists(doc,'$.bool ? (@ == false)') AND jsonb_path_exists(doc,'$.dyn2.type() ? (@ == "string")') ) AND ( ( jsonb_path_exists(doc,'$.sparse_207.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_041') ) OR jsonb_path_exists(doc,'$.dyn1 ? (@ >= 7144911.043220)') ) ) AND ( ( jsonb_path_exists(doc,'$.sparse_622.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_228 ? (@ starts with "G")') ) OR jsonb_path_exists(doc,'$.thousandth ? (@ <= 283.432638)') ) ) ;
SELECT COUNT(doc #> '{sparse_122}') FROM NoBench  WHERE ( ( ( jsonb_path_exists(doc,'$.bool ? (@ == false)') AND jsonb_path_exists(doc,'$.dyn2.type() ? (@ == "string")') ) AND ( ( jsonb_path_exists(doc,'$.sparse_207.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_041') ) OR jsonb_path_exists(doc,'$.dyn1 ? (@ >= 7144911.043220)') ) ) AND ( ( ( jsonb_path_exists(doc,'$.sparse_241.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_642 ? (@ starts with "GB")') ) OR jsonb_path_exists(doc,'$.sparse_843.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.thousandth ? (@ <= 625.148410)') ) ) ;
SELECT COUNT(doc #> '{sparse_429}') FROM NoBench  WHERE ( ( ( ( jsonb_path_exists(doc,'$.bool ? (@ == false)') AND jsonb_path_exists(doc,'$.dyn2.type() ? (@ == "string")') ) AND ( ( jsonb_path_exists(doc,'$.sparse_207.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_041') ) OR jsonb_path_exists(doc,'$.dyn1 ? (@ >= 7144911.043220)') ) ) AND ( ( ( jsonb_path_exists(doc,'$.sparse_241.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_642 ? (@ starts with "GB")') ) OR jsonb_path_exists(doc,'$.sparse_843.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.thousandth ? (@ <= 625.148410)') ) ) AND ( ( jsonb_path_exists(doc,'$.sparse_909.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_162') ) OR jsonb_path_exists(doc,'$.thousandth ? (@ <= 230.865335)') ) ) ;
SELECT COUNT(doc #> '{sparse_541}') FROM NoBench  WHERE ( ( ( ( ( jsonb_path_exists(doc,'$.bool ? (@ == false)') AND jsonb_path_exists(doc,'$.dyn2.type() ? (@ == "string")') ) AND ( ( jsonb_path_exists(doc,'$.sparse_207.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_041') ) OR jsonb_path_exists(doc,'$.dyn1 ? (@ >= 7144911.043220)') ) ) AND ( ( ( jsonb_path_exists(doc,'$.sparse_241.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_642 ? (@ starts with "GB")') ) OR jsonb_path_exists(doc,'$.sparse_843.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.thousandth ? (@ <= 625.148410)') ) ) AND ( ( jsonb_path_exists(doc,'$.sparse_909.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_162') ) OR jsonb_path_exists(doc,'$.thousandth ? (@ <= 230.865335)') ) ) AND ( ( ( jsonb_path_exists(doc,'$.dyn1.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_523.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.sparse_245') ) OR jsonb_path_exists(doc,'$.sparse_042.type() ? (@ == "string")') ) ) ;
SELECT COUNT(*) FROM NoBench  WHERE ( ( ( ( ( ( jsonb_path_exists(doc,'$.bool ? (@ == false)') AND jsonb_path_exists(doc,'$.dyn2.type() ? (@ == "string")') ) AND ( ( jsonb_path_exists(doc,'$.sparse_207.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_041') ) OR jsonb_path_exists(doc,'$.dyn1 ? (@ >= 7144911.043220)') ) ) AND ( ( ( jsonb_path_exists(doc,'$.sparse_241.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_642 ? (@ starts with "GB")') ) OR jsonb_path_exists(doc,'$.sparse_843.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.thousandth ? (@ <= 625.148410)') ) ) AND ( ( jsonb_path_exists(doc,'$.sparse_909.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_162') ) OR jsonb_path_exists(doc,'$.thousandth ? (@ <= 230.865335)') ) ) AND ( ( ( jsonb_path_exists(doc,'$.dyn1.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_523.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.sparse_245') ) OR jsonb_path_exists(doc,'$.sparse_042.type() ? (@ == "string")') ) ) AND ( jsonb_path_exists(doc,'$.sparse_247') OR jsonb_path_exists(doc,'$.sparse_042.type() ? (@ == "string")') ) ) ;
SELECT COUNT(doc #> '{}') FROM NoBench  WHERE ( ( ( ( ( ( ( jsonb_path_exists(doc,'$.bool ? (@ == false)') AND jsonb_path_exists(doc,'$.dyn2.type() ? (@ == "string")') ) AND ( ( jsonb_path_exists(doc,'$.sparse_207.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_041') ) OR jsonb_path_exists(doc,'$.dyn1 ? (@ >= 7144911.043220)') ) ) AND ( ( ( jsonb_path_exists(doc,'$.sparse_241.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_642 ? (@ starts with "GB")') ) OR jsonb_path_exists(doc,'$.sparse_843.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.thousandth ? (@ <= 625.148410)') ) ) AND ( ( jsonb_path_exists(doc,'$.sparse_909.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_162') ) OR jsonb_path_exists(doc,'$.thousandth ? (@ <= 230.865335)') ) ) AND ( ( ( jsonb_path_exists(doc,'$.dyn1.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_523.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.sparse_245') ) OR jsonb_path_exists(doc,'$.sparse_042.type() ? (@ == "string")') ) ) AND ( jsonb_path_exists(doc,'$.sparse_247') OR jsonb_path_exists(doc,'$.sparse_042.type() ? (@ == "string")') ) ) AND jsonb_path_exists(doc,'$.sparse_245.type() ? (@ == "string")') ) ;
SELECT COUNT(doc #> '{str1}') FROM NoBench  WHERE ( ( ( ( ( ( ( jsonb_path_exists(doc,'$.bool ? (@ == false)') AND jsonb_path_exists(doc,'$.dyn2.type() ? (@ == "string")') ) AND ( ( jsonb_path_exists(doc,'$.sparse_207.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_041') ) OR jsonb_path_exists(doc,'$.dyn1 ? (@ >= 7144911.043220)') ) ) AND ( ( ( jsonb_path_exists(doc,'$.sparse_241.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_642 ? (@ starts with "GB")') ) OR jsonb_path_exists(doc,'$.sparse_843.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.thousandth ? (@ <= 625.148410)') ) ) AND ( ( jsonb_path_exists(doc,'$.sparse_909.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_162') ) OR jsonb_path_exists(doc,'$.thousandth ? (@ <= 230.865335)') ) ) AND ( ( ( jsonb_path_exists(doc,'$.dyn1.type() ? (@ == "string")') OR jsonb_path_exists(doc,'$.sparse_523.type() ? (@ == "string")') ) OR jsonb_path_exists(doc,'$.sparse_245') ) OR jsonb_path_exists(doc,'$.sparse_042.type() ? (@ == "string")') ) ) AND ( jsonb_path_exists(doc,'$.sparse_247') OR jsonb_path_exists(doc,'$.sparse_042.type() ? (@ == "string")') ) ) AND jsonb_path_exists(doc,'$.sparse_246') ) ;