// Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.1, GoBackProb: 0.4, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
db.Reddit.aggregate([{$match:{"author_flair_css_class" : { $type: "string" }}}]);
db.Reddit.aggregate([{$match:{ $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"subreddit": /^A.*/} , {"subreddit": /^E.*/} ] } , {"subreddit": /^S.*/} ] } , {"subreddit": /^P.*/} ] } , {"subreddit": /^C.*/} ] } , {"retrieved_on" : {$lte: 1425366448.059361}} ] }}]);
db.Reddit.aggregate([{$match:{ $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"author": /^c.*/} , {"author": /^H.*/} ] } , {"author": /^L.*/} ] } , {"author": /^N.*/} ] } , {"author": /^S.*/} ] } , {"author_flair_text" : { $type: "string" }} ] }}]);
db.Reddit.aggregate([{$match:{"author_flair_text" : { $type: "string" }}}]);
db.Reddit.aggregate([{$match:{"parent_id": /^t.*/}}]);
db.Reddit.aggregate([{$match:{ $or: [ { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_text": /^💃.*/} , {"author_flair_text": /^น.*/} ] } , {"author_flair_text": /^티.*/} ] } , {"author_flair_text": /^つ.*/} ] } , {"author_flair_text": /^".*/} ] } , { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_text": /^💖.*/} , {"author_flair_text": /^漢.*/} ] } , {"author_flair_text": /^こ.*/} ] } , {"author_flair_text": /^넬.*/} ] } , {"author_flair_text": /^τ.*/} ] } ] } , { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_text": /^🐟.*/} , {"author_flair_text": /^黒.*/} ] } , {"author_flair_text": /^Ó.*/} ] } , {"author_flair_text": /^浙.*/} ] } , {"author_flair_text": /^Ø.*/} ] } ] } , {"author_flair_css_class" : { $type: "string" }} ] }}]);
db.Reddit.aggregate([{$match:{"parent_id": /^t.*/}}]);
db.Reddit.aggregate([{$match:{ $or: [ { $or: [ {"gilded" : 15} , {"distinguished": /^m.*/} ] } , {"author_flair_css_class" : { $type: "string" }} ] }}]);
db.Reddit.aggregate([{$match:{ $and: [ { $or: [ { $or: [ {"gilded" : 15} , {"distinguished": /^m.*/} ] } , {"author_flair_css_class" : { $type: "string" }} ] } , {"parent_id": /^t1.*/} ] }}]);
db.Reddit.aggregate([{$match:{ $and: [ { $or: [ { $or: [ {"gilded" : 15} , {"distinguished": /^m.*/} ] } , {"author_flair_css_class" : { $type: "string" }} ] } , {"retrieved_on" : {$lte: 1425929955.906181}} ] }}]);