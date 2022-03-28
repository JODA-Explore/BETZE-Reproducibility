// Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.3, GoBackProb: 0.5, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
db.Reddit.aggregate([{ $match : {"author_flair_text" : { $type: "string" }} }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.Reddit.aggregate([{ $match : {"parent_id": /^t1.*/} }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$retrieved_on", false] }, 1, 0 ]} } } }]);
db.Reddit.aggregate([{ $match : { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_css_class": /^A.*/} , {"author_flair_css_class": /^S.*/} ] } , {"author_flair_css_class": /^z.*/} ] } , {"author_flair_css_class": /^C.*/} ] } , {"author_flair_css_class": /^O.*/} ] } , { $and: [ {"parent_id": /^t1.*/} , {"parent_id": /^t.*/} ] } ] } }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$subreddit", false] }, 1, 0 ]} } } }]);
db.Reddit.aggregate([{ $match : { $or: [ { $and: [ { $and: [ {"ups" : {$gte: 187.668806}} , {"gilded" : {$lte: 14.373057}} ] } , { $or: [ { $or: [ { $or: [ { $or: [ {"body": /^℻.*/} , {"body": /^渇.*/} ] } , {"body": /^的.*/} ] } , {"body": /^🚹.*/} ] } , {"body": /^誠.*/} ] } ] } , {"retrieved_on" : {$lte: 1426626003.101902}} ] } }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$$ROOT", false] }, 1, 0 ]} } } }]);
db.Reddit.aggregate([{ $match : {"score" : {$lte: 3223.997784}} }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$distinguished", false] }, 1, 0 ]} } } }]);
db.Reddit.aggregate([{ $match : { $or: [ { $and: [ { $or: [ {"distinguished" : { $type: "string" }} , {"score" : {$gte: -1819.702755}} ] } , { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_text": /^佐.*/} , {"author_flair_text": /^ま.*/} ] } , {"author_flair_text": /^ダ.*/} ] } , {"author_flair_text": /^英.*/} ] } , {"author_flair_text": /^♃.*/} ] } ] } , {"author_flair_text" : { $type: "string" }} ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.Reddit.aggregate([{ $match : { $or: [ {"gilded" : {$lte: 0.208424}} , {"retrieved_on" : {$gte: 1427186370.359507}} ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.Reddit.aggregate([{ $match : { $and: [ {"author_flair_text" : { $type: "string" }} , { $or: [ { $or: [ { $and: [ {"edited" : false} , {"ups" : 3145} ] } , {"gilded" : 0} ] } , {"ups" : {$gte: 3039.992676}} ] } ] } }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$$ROOT", false] }, 1, 0 ]} } } }]);
db.Reddit.aggregate([{ $match : { $and: [ { $and: [ {"author_flair_text" : { $type: "string" }} , { $or: [ { $or: [ { $and: [ {"edited" : false} , {"ups" : 3145} ] } , {"gilded" : 0} ] } , {"ups" : {$gte: 3039.992676}} ] } ] } , { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_css_class": /^S.*/} , {"author_flair_css_class": /^A.*/} ] } , {"author_flair_css_class": /^z.*/} ] } , {"author_flair_css_class": /^C.*/} ] } , {"author_flair_css_class": /^O.*/} ] } , {"retrieved_on" : {$gte: 1424847979.137940}} ] } ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.Reddit.aggregate([{ $match : { $and: [ { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_css_class": /^A.*/} , {"author_flair_css_class": /^S.*/} ] } , {"author_flair_css_class": /^z.*/} ] } , {"author_flair_css_class": /^C.*/} ] } , {"author_flair_css_class": /^O.*/} ] } , { $and: [ {"parent_id": /^t1.*/} , {"parent_id": /^t.*/} ] } ] } , { $or: [ { $or: [ {"id": /^cnf.*/} , {"id": /^co5.*/} ] } , {"score" : {$lte: 2399.439596}} ] } ] } }, { $group: { _id: null, sum: { $sum: "$edited"} } }]);
db.Reddit.aggregate([{ $match : { $and: [ { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_css_class": /^A.*/} , {"author_flair_css_class": /^S.*/} ] } , {"author_flair_css_class": /^z.*/} ] } , {"author_flair_css_class": /^C.*/} ] } , {"author_flair_css_class": /^O.*/} ] } , { $and: [ {"parent_id": /^t1.*/} , {"parent_id": /^t.*/} ] } ] } , { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"body": /^ח.*/} , {"body": /^Ǔ.*/} ] } , {"body": /^ʎ.*/} ] } , {"body": /^🔳.*/} ] } , {"body": /^正.*/} ] } , {"ups" : 2090} ] } , { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_css_class": /^T.*/} , {"author_flair_css_class": /^M.*/} ] } , {"author_flair_css_class": /^E.*/} ] } , {"author_flair_css_class": /^m.*/} ] } , {"author_flair_css_class": /^H.*/} ] } ] } , {"gilded" : {$lte: 5.702645}} ] } ] } }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$subreddit", false] }, 1, 0 ]} } } }]);
db.Reddit.aggregate([{ $match : { $and: [ { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_css_class": /^A.*/} , {"author_flair_css_class": /^S.*/} ] } , {"author_flair_css_class": /^z.*/} ] } , {"author_flair_css_class": /^C.*/} ] } , {"author_flair_css_class": /^O.*/} ] } , { $and: [ {"parent_id": /^t1.*/} , {"parent_id": /^t.*/} ] } ] } , { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"author": /^C.*/} , {"author": /^I.*/} ] } , {"author": /^F.*/} ] } , {"author": /^_.*/} ] } , {"author": /^z.*/} ] } , {"score" : 3709} ] } , {"retrieved_on" : {$lte: 1427694332.410212}} ] } ] } }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$$ROOT", false] }, 1, 0 ]} } } }]);
db.Reddit.aggregate([{ $match : { $and: [ { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_css_class": /^A.*/} , {"author_flair_css_class": /^S.*/} ] } , {"author_flair_css_class": /^z.*/} ] } , {"author_flair_css_class": /^C.*/} ] } , {"author_flair_css_class": /^O.*/} ] } , { $and: [ {"parent_id": /^t1.*/} , {"parent_id": /^t.*/} ] } ] } , { $and: [ { $or: [ {"ups" : {$lte: -300.871288}} , {"author_flair_css_class" : { $type: "string" }} ] } , {"gilded" : {$lte: 2.638175}} ] } ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.Reddit.aggregate([{ $match : { $and: [ { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_css_class": /^A.*/} , {"author_flair_css_class": /^S.*/} ] } , {"author_flair_css_class": /^z.*/} ] } , {"author_flair_css_class": /^C.*/} ] } , {"author_flair_css_class": /^O.*/} ] } , { $and: [ {"parent_id": /^t1.*/} , {"parent_id": /^t.*/} ] } ] } , { $or: [ { $and: [ {"author_flair_css_class" : { $type: "string" }} , {"score_hidden" : true} ] } , {"ups" : {$lte: 1611.321850}} ] } ] } }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$id", false] }, 1, 0 ]} } } }]);
db.Reddit.aggregate([{ $match : { $and: [ { $and: [ { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_css_class": /^A.*/} , {"author_flair_css_class": /^S.*/} ] } , {"author_flair_css_class": /^z.*/} ] } , {"author_flair_css_class": /^C.*/} ] } , {"author_flair_css_class": /^O.*/} ] } , { $and: [ {"parent_id": /^t1.*/} , {"parent_id": /^t.*/} ] } ] } , { $or: [ { $and: [ {"author_flair_css_class" : { $type: "string" }} , {"score_hidden" : true} ] } , {"ups" : {$lte: 1611.321850}} ] } ] } , { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"id": /^cnc.*/} , {"id": /^co6.*/} ] } , {"id": /^cnm.*/} ] } , {"id": /^co1.*/} ] } , {"id": /^cnj.*/} ] } , {"retrieved_on" : {$lte: 1424633622.017101}} ] } ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.Reddit.aggregate([{ $match : { $and: [ { $and: [ { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_css_class": /^A.*/} , {"author_flair_css_class": /^S.*/} ] } , {"author_flair_css_class": /^z.*/} ] } , {"author_flair_css_class": /^C.*/} ] } , {"author_flair_css_class": /^O.*/} ] } , { $and: [ {"parent_id": /^t1.*/} , {"parent_id": /^t.*/} ] } ] } , { $or: [ { $and: [ {"author_flair_css_class" : { $type: "string" }} , {"score_hidden" : true} ] } , {"ups" : {$lte: 1611.321850}} ] } ] } , {"ups" : {$lte: 1255.875462}} ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.Reddit.aggregate([{ $match : { $and: [ { $and: [ { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_css_class": /^A.*/} , {"author_flair_css_class": /^S.*/} ] } , {"author_flair_css_class": /^z.*/} ] } , {"author_flair_css_class": /^C.*/} ] } , {"author_flair_css_class": /^O.*/} ] } , { $and: [ {"parent_id": /^t1.*/} , {"parent_id": /^t.*/} ] } ] } , { $or: [ { $and: [ {"author_flair_css_class" : { $type: "string" }} , {"score_hidden" : true} ] } , {"ups" : {$lte: 1611.321850}} ] } ] } , { $and: [ {"edited" : false} , {"score" : {$lte: 641.083556}} ] } ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.Reddit.aggregate([{ $match : { $and: [ { $and: [ { $and: [ {"author_flair_text" : { $type: "string" }} , { $or: [ { $or: [ { $and: [ {"edited" : false} , {"ups" : 3145} ] } , {"gilded" : 0} ] } , {"ups" : {$gte: 3039.992676}} ] } ] } , { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_css_class": /^S.*/} , {"author_flair_css_class": /^A.*/} ] } , {"author_flair_css_class": /^z.*/} ] } , {"author_flair_css_class": /^C.*/} ] } , {"author_flair_css_class": /^O.*/} ] } , {"retrieved_on" : {$gte: 1424847979.137940}} ] } ] } , {"ups" : {$lte: 300.441349}} ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.Reddit.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ {"author_flair_text" : { $type: "string" }} , { $or: [ { $or: [ { $and: [ {"edited" : false} , {"ups" : 3145} ] } , {"gilded" : 0} ] } , {"ups" : {$gte: 3039.992676}} ] } ] } , { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_css_class": /^S.*/} , {"author_flair_css_class": /^A.*/} ] } , {"author_flair_css_class": /^z.*/} ] } , {"author_flair_css_class": /^C.*/} ] } , {"author_flair_css_class": /^O.*/} ] } , {"retrieved_on" : {$gte: 1424847979.137940}} ] } ] } , {"ups" : {$lte: 300.441349}} ] } , { $or: [ { $or: [ {"distinguished" : { $type: "string" }} , {"retrieved_on" : {$gte: 1425047299.525709}} ] } , {"retrieved_on" : {$gte: 1425054174.734734}} ] } ] } }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$name", false] }, 1, 0 ]} } } }]);
db.Reddit.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ {"author_flair_text" : { $type: "string" }} , { $or: [ { $or: [ { $and: [ {"edited" : false} , {"ups" : 3145} ] } , {"gilded" : 0} ] } , {"ups" : {$gte: 3039.992676}} ] } ] } , { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"author_flair_css_class": /^S.*/} , {"author_flair_css_class": /^A.*/} ] } , {"author_flair_css_class": /^z.*/} ] } , {"author_flair_css_class": /^C.*/} ] } , {"author_flair_css_class": /^O.*/} ] } , {"retrieved_on" : {$gte: 1424847979.137940}} ] } ] } , {"ups" : {$lte: 300.441349}} ] } , {"retrieved_on" : {$gte: 1425002718.836570}} ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
