// Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.05, GoBackProb: 0.2, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
db.Reddit.aggregate([{$match:{"author_flair_css_class" : { $type: "string" }}}]);
db.Reddit.aggregate([{$match:{ $or: [ { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"author": /^B.*/} , {"author": /^-.*/} ] } , {"author": /^d.*/} ] } , {"author": /^D.*/} ] } , {"author": /^J.*/} ] } , {"id": /^cn.*/} ] } , {"retrieved_on" : {$gte: 1426428876.437431}} ] }}]);
db.Reddit.aggregate([{$match:{"gilded" : {$lte: 11.344871}}}]);
db.Reddit.aggregate([{$match:{ $and: [ {"author_flair_css_class" : { $type: "string" }} , { $or: [ { $or: [ {"id": /^cn.*/} , { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_text": /^·.*/} , {"author_flair_text": /^ח.*/} ] } , {"author_flair_text": /^❝.*/} ] } , {"author_flair_text": /^ب.*/} ] } , {"author_flair_text": /^╒.*/} ] } ] } , {"ups" : {$lte: 3670.270400}} ] } ] }}]);
db.Reddit.aggregate([{$match:{ $and: [ { $and: [ {"author_flair_css_class" : { $type: "string" }} , { $or: [ { $or: [ {"id": /^cn.*/} , { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_text": /^·.*/} , {"author_flair_text": /^ח.*/} ] } , {"author_flair_text": /^❝.*/} ] } , {"author_flair_text": /^ب.*/} ] } , {"author_flair_text": /^╒.*/} ] } ] } , {"ups" : {$lte: 3670.270400}} ] } ] } , { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_css_class": /^3.*/} , {"author_flair_css_class": /^W.*/} ] } , {"author_flair_css_class": /^R.*/} ] } , {"author_flair_css_class": /^u.*/} ] } , {"author_flair_css_class": /^N.*/} ] } , {"parent_id": /^t3_.*/} ] } ] }}]);