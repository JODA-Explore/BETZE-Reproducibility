// Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.3, GoBackProb: 0.5, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
db.NoBench.aggregate([{ $match : { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } }, { $group: { _id: '$sparse_881', count: { $sum: {"$cond": [ { "$ifNull": ["$sparse_245", false] }, 1, 0 ]} } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_943" : { $exists: true }} , {"sparse_205" : { $type: "string" }} ] } , {"sparse_290": /^GB.*/} ] } , {"nested_obj.num" : {$lte: 4898327.767509}} ] } ] } }, { $group: { _id: '$sparse_946', count: { $sum: {"$cond": [ { "$ifNull": ["$sparse_064", false] }, 1, 0 ]} } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_943" : { $exists: true }} , {"sparse_205" : { $type: "string" }} ] } , {"sparse_290": /^GB.*/} ] } , {"nested_obj.num" : {$lte: 4898327.767509}} ] } ] } , { $or: [ { $or: [ {"sparse_501" : { $exists: true }} , {"sparse_682" : { $type: "string" }} ] } , {"dyn2" : false} ] } ] } }, { $group: { _id: '$sparse_728', count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_943" : { $exists: true }} , {"sparse_205" : { $type: "string" }} ] } , {"sparse_290": /^GB.*/} ] } , {"nested_obj.num" : {$lte: 4898327.767509}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_003" : { $type: "string" }} , {"sparse_924" : { $type: "string" }} ] } , {"sparse_445" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6036869.056139}} ] } ] } }, { $group: { _id: '$sparse_104', count: { $sum: {"$cond": [ { "$ifNull": ["$sparse_704", false] }, 1, 0 ]} } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_943" : { $exists: true }} , {"sparse_205" : { $type: "string" }} ] } , {"sparse_290": /^GB.*/} ] } , {"nested_obj.num" : {$lte: 4898327.767509}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_003" : { $type: "string" }} , {"sparse_924" : { $type: "string" }} ] } , {"sparse_445" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6036869.056139}} ] } ] } , { $or: [ {"sparse_167" : { $exists: true }} , {"nested_obj.num" : {$lte: 4119154.052569}} ] } ] } }, { $group: { _id: '$sparse_284', count: { $sum: {"$cond": [ { "$ifNull": ["$sparse_542", false] }, 1, 0 ]} } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_943" : { $exists: true }} , {"sparse_205" : { $type: "string" }} ] } , {"sparse_290": /^GB.*/} ] } , {"nested_obj.num" : {$lte: 4898327.767509}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_003" : { $type: "string" }} , {"sparse_924" : { $type: "string" }} ] } , {"sparse_445" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6036869.056139}} ] } ] } , { $or: [ {"sparse_041" : { $type: "string" }} , {"thousandth" : {$lte: 748.509291}} ] } ] } }, { $group: { _id: '$sparse_146', count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_943" : { $exists: true }} , {"sparse_205" : { $type: "string" }} ] } , {"sparse_290": /^GB.*/} ] } , {"nested_obj.num" : {$lte: 4898327.767509}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_003" : { $type: "string" }} , {"sparse_924" : { $type: "string" }} ] } , {"sparse_445" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6036869.056139}} ] } ] } , { $or: [ {"sparse_041" : { $type: "string" }} , {"thousandth" : {$lte: 748.509291}} ] } ] } , { $or: [ {"sparse_888" : { $type: "string" }} , {"nested_obj.num" : {$lte: 1833579.325452}} ] } ] } }, { $group: { _id: '$sparse_443', count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_943" : { $exists: true }} , {"sparse_205" : { $type: "string" }} ] } , {"sparse_290": /^GB.*/} ] } , {"nested_obj.num" : {$lte: 4898327.767509}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_003" : { $type: "string" }} , {"sparse_924" : { $type: "string" }} ] } , {"sparse_445" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6036869.056139}} ] } ] } , { $or: [ {"sparse_041" : { $type: "string" }} , {"thousandth" : {$lte: 748.509291}} ] } ] } , {"nested_obj.num" : {$lte: 4282128.405379}} ] } }, { $group: { _id: '$sparse_563', count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_943" : { $exists: true }} , {"sparse_205" : { $type: "string" }} ] } , {"sparse_290": /^GB.*/} ] } , {"nested_obj.num" : {$lte: 4898327.767509}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_003" : { $type: "string" }} , {"sparse_924" : { $type: "string" }} ] } , {"sparse_445" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6036869.056139}} ] } ] } , { $or: [ {"sparse_041" : { $type: "string" }} , {"thousandth" : {$lte: 748.509291}} ] } ] } , { $or: [ {"sparse_604" : { $exists: true }} , {"num" : {$lte: 6717660.843969}} ] } ] } }, { $group: { _id: '$sparse_009', count: { $sum: {"$cond": [ { "$ifNull": ["$sparse_509", false] }, 1, 0 ]} } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_943" : { $exists: true }} , {"sparse_205" : { $type: "string" }} ] } , {"sparse_290": /^GB.*/} ] } , {"nested_obj.num" : {$lte: 4898327.767509}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_003" : { $type: "string" }} , {"sparse_924" : { $type: "string" }} ] } , {"sparse_445" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6036869.056139}} ] } ] } , { $or: [ {"sparse_041" : { $type: "string" }} , {"thousandth" : {$lte: 748.509291}} ] } ] } , { $or: [ {"sparse_068" : { $type: "string" }} , {"dyn1" : {$lte: 7636745.199373}} ] } ] } }, { $group: { _id: '$sparse_648', count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_943" : { $exists: true }} , {"sparse_205" : { $type: "string" }} ] } , {"sparse_290": /^GB.*/} ] } , {"nested_obj.num" : {$lte: 4898327.767509}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_003" : { $type: "string" }} , {"sparse_924" : { $type: "string" }} ] } , {"sparse_445" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6036869.056139}} ] } ] } , { $or: [ {"sparse_041" : { $type: "string" }} , {"thousandth" : {$lte: 748.509291}} ] } ] } , { $or: [ { $or: [ {"sparse_748": /^GB.*/} , {"sparse_541": /^GB.*/} ] } , {"dyn1" : {$lte: 7363319.761092}} ] } ] } }, { $group: { _id: '$sparse_021', count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_943" : { $exists: true }} , {"sparse_205" : { $type: "string" }} ] } , {"sparse_290": /^GB.*/} ] } , {"nested_obj.num" : {$lte: 4898327.767509}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_003" : { $type: "string" }} , {"sparse_924" : { $type: "string" }} ] } , {"sparse_445" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6036869.056139}} ] } ] } , { $or: [ {"sparse_041" : { $type: "string" }} , {"thousandth" : {$lte: 748.509291}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_945" : { $type: "string" }} , {"sparse_824" : { $exists: true }} ] } , {"sparse_101" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 3419544.925467}} ] } ] } }, { $group: { _id: '$sparse_464', count: { $sum: {"$cond": [ { "$ifNull": ["$sparse_968", false] }, 1, 0 ]} } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_943" : { $exists: true }} , {"sparse_205" : { $type: "string" }} ] } , {"sparse_290": /^GB.*/} ] } , {"nested_obj.num" : {$lte: 4898327.767509}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_003" : { $type: "string" }} , {"sparse_924" : { $type: "string" }} ] } , {"sparse_445" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6036869.056139}} ] } ] } , { $or: [ {"sparse_041" : { $type: "string" }} , {"thousandth" : {$lte: 748.509291}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_945" : { $type: "string" }} , {"sparse_824" : { $exists: true }} ] } , {"sparse_101" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 3419544.925467}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_749" : { $exists: true }} , {"sparse_820" : { $exists: true }} ] } , {"sparse_065" : { $type: "string" }} ] } , {"num" : {$gte: 6456408.586739}} ] } ] } }, { $group: { _id: '$sparse_928', count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_943" : { $exists: true }} , {"sparse_205" : { $type: "string" }} ] } , {"sparse_290": /^GB.*/} ] } , {"nested_obj.num" : {$lte: 4898327.767509}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_003" : { $type: "string" }} , {"sparse_924" : { $type: "string" }} ] } , {"sparse_445" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6036869.056139}} ] } ] } , { $or: [ {"sparse_041" : { $type: "string" }} , {"thousandth" : {$lte: 748.509291}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_945" : { $type: "string" }} , {"sparse_824" : { $exists: true }} ] } , {"sparse_101" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 3419544.925467}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_749" : { $exists: true }} , {"sparse_820" : { $exists: true }} ] } , {"sparse_065" : { $type: "string" }} ] } , {"num" : {$gte: 6456408.586739}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_360" : { $type: "string" }} , {"sparse_168" : { $type: "string" }} ] } , {"sparse_062" : { $exists: true }} ] } , {"sparse_749" : { $exists: true }} ] } ] } }, { $group: { _id: '$sparse_285', count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_943" : { $exists: true }} , {"sparse_205" : { $type: "string" }} ] } , {"sparse_290": /^GB.*/} ] } , {"nested_obj.num" : {$lte: 4898327.767509}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_003" : { $type: "string" }} , {"sparse_924" : { $type: "string" }} ] } , {"sparse_445" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6036869.056139}} ] } ] } , { $or: [ {"sparse_041" : { $type: "string" }} , {"thousandth" : {$lte: 748.509291}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_945" : { $type: "string" }} , {"sparse_824" : { $exists: true }} ] } , {"sparse_101" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 3419544.925467}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_749" : { $exists: true }} , {"sparse_820" : { $exists: true }} ] } , {"sparse_065" : { $type: "string" }} ] } , {"num" : {$gte: 6456408.586739}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_360" : { $type: "string" }} , {"sparse_168" : { $type: "string" }} ] } , {"sparse_062" : { $exists: true }} ] } , {"sparse_749" : { $exists: true }} ] } ] } , { $or: [ {"sparse_360" : { $exists: true }} , {"sparse_062" : { $type: "string" }} ] } ] } }, { $group: { _id: '$sparse_067', count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_943" : { $exists: true }} , {"sparse_205" : { $type: "string" }} ] } , {"sparse_290": /^GB.*/} ] } , {"nested_obj.num" : {$lte: 4898327.767509}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_003" : { $type: "string" }} , {"sparse_924" : { $type: "string" }} ] } , {"sparse_445" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6036869.056139}} ] } ] } , { $or: [ {"sparse_041" : { $type: "string" }} , {"thousandth" : {$lte: 748.509291}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_945" : { $type: "string" }} , {"sparse_824" : { $exists: true }} ] } , {"sparse_101" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 3419544.925467}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_749" : { $exists: true }} , {"sparse_820" : { $exists: true }} ] } , {"sparse_065" : { $type: "string" }} ] } , {"num" : {$gte: 6456408.586739}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_360" : { $type: "string" }} , {"sparse_168" : { $type: "string" }} ] } , {"sparse_062" : { $exists: true }} ] } , {"sparse_749" : { $exists: true }} ] } ] } , { $or: [ {"sparse_364" : { $type: "string" }} , {"sparse_064" : { $type: "string" }} ] } ] } }, { $group: { _id: '$sparse_067', count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_943" : { $exists: true }} , {"sparse_205" : { $type: "string" }} ] } , {"sparse_290": /^GB.*/} ] } , {"nested_obj.num" : {$lte: 4898327.767509}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_003" : { $type: "string" }} , {"sparse_924" : { $type: "string" }} ] } , {"sparse_445" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6036869.056139}} ] } ] } , { $or: [ {"sparse_041" : { $type: "string" }} , {"thousandth" : {$lte: 748.509291}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_945" : { $type: "string" }} , {"sparse_824" : { $exists: true }} ] } , {"sparse_101" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 3419544.925467}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_749" : { $exists: true }} , {"sparse_820" : { $exists: true }} ] } , {"sparse_065" : { $type: "string" }} ] } , {"num" : {$gte: 6456408.586739}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_360" : { $type: "string" }} , {"sparse_168" : { $type: "string" }} ] } , {"sparse_062" : { $exists: true }} ] } , {"sparse_749" : { $exists: true }} ] } ] } , { $or: [ {"sparse_164" : { $type: "string" }} , {"sparse_064" : { $exists: true }} ] } ] } }, { $group: { _id: '$sparse_360', count: { $sum: {"$cond": [ { "$ifNull": ["$nested_obj", false] }, 1, 0 ]} } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_943" : { $exists: true }} , {"sparse_205" : { $type: "string" }} ] } , {"sparse_290": /^GB.*/} ] } , {"nested_obj.num" : {$lte: 4898327.767509}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_003" : { $type: "string" }} , {"sparse_924" : { $type: "string" }} ] } , {"sparse_445" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6036869.056139}} ] } ] } , { $or: [ {"sparse_041" : { $type: "string" }} , {"thousandth" : {$lte: 748.509291}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_945" : { $type: "string" }} , {"sparse_824" : { $exists: true }} ] } , {"sparse_101" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 3419544.925467}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_749" : { $exists: true }} , {"sparse_820" : { $exists: true }} ] } , {"sparse_065" : { $type: "string" }} ] } , {"num" : {$gte: 6456408.586739}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_360" : { $type: "string" }} , {"sparse_168" : { $type: "string" }} ] } , {"sparse_062" : { $exists: true }} ] } , {"sparse_749" : { $exists: true }} ] } ] } , { $or: [ {"sparse_164" : { $type: "string" }} , {"sparse_064" : { $exists: true }} ] } ] } , {"nested_obj.num" : {$lte: 510684.843109}} ] } }, { $group: { _id: '$str1', count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_943" : { $exists: true }} , {"sparse_205" : { $type: "string" }} ] } , {"sparse_290": /^GB.*/} ] } , {"nested_obj.num" : {$lte: 4898327.767509}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_003" : { $type: "string" }} , {"sparse_924" : { $type: "string" }} ] } , {"sparse_445" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6036869.056139}} ] } ] } , { $or: [ {"sparse_041" : { $type: "string" }} , {"thousandth" : {$lte: 748.509291}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_945" : { $type: "string" }} , {"sparse_824" : { $exists: true }} ] } , {"sparse_101" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 3419544.925467}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_749" : { $exists: true }} , {"sparse_820" : { $exists: true }} ] } , {"sparse_065" : { $type: "string" }} ] } , {"num" : {$gte: 6456408.586739}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_360" : { $type: "string" }} , {"sparse_168" : { $type: "string" }} ] } , {"sparse_062" : { $exists: true }} ] } , {"sparse_749" : { $exists: true }} ] } ] } , { $or: [ {"sparse_164" : { $type: "string" }} , {"sparse_064" : { $exists: true }} ] } ] } , {"nested_obj.num" : {$lte: 510684.843109}} ] } , { $or: [ {"nested_obj.num" : 11084} , {"thousandth" : {$lte: 335.668688}} ] } ] } }, { $group: { _id: '$dyn2', count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_943" : { $exists: true }} , {"sparse_205" : { $type: "string" }} ] } , {"sparse_290": /^GB.*/} ] } , {"nested_obj.num" : {$lte: 4898327.767509}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_003" : { $type: "string" }} , {"sparse_924" : { $type: "string" }} ] } , {"sparse_445" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6036869.056139}} ] } ] } , { $or: [ {"sparse_041" : { $type: "string" }} , {"thousandth" : {$lte: 748.509291}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_945" : { $type: "string" }} , {"sparse_824" : { $exists: true }} ] } , {"sparse_101" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 3419544.925467}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_749" : { $exists: true }} , {"sparse_820" : { $exists: true }} ] } , {"sparse_065" : { $type: "string" }} ] } , {"num" : {$gte: 6456408.586739}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_360" : { $type: "string" }} , {"sparse_168" : { $type: "string" }} ] } , {"sparse_062" : { $exists: true }} ] } , {"sparse_749" : { $exists: true }} ] } ] } , { $or: [ {"sparse_164" : { $type: "string" }} , {"sparse_064" : { $exists: true }} ] } ] } , {"nested_obj.num" : {$lte: 510684.843109}} ] } , { $or: [ {"nested_obj.num" : 11084} , {"thousandth" : {$lte: 335.668688}} ] } ] } , {"nested_obj.num" : {$lte: 320820.972778}} ] } }, { $group: { _id: '$sparse_068', count: { $sum: 1 } } }]);