// Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.1, GoBackProb: 0.4, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
db.NoBench.aggregate([{ $match : { $or: [ { $or: [ {"sparse_983" : { $exists: true }} , {"sparse_293" : { $exists: true }} ] } , {"bool" : false} ] } }, { $group: { _id: '$sparse_881', count: { $sum: {"$cond": [ { "$ifNull": ["$sparse_245", false] }, 1, 0 ]} } } }]);
db.NoBench.aggregate([{ $match : { $or: [ { $or: [ {"sparse_881": /^GB.*/} , {"sparse_446" : { $exists: true }} ] } , {"thousandth" : {$lte: 781.424742}} ] } }, { $group: { _id: '$nested_obj.num', count: { $sum: {"$cond": [ { "$ifNull": ["$sparse_530", false] }, 1, 0 ]} } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $or: [ { $or: [ {"sparse_881": /^GB.*/} , {"sparse_446" : { $exists: true }} ] } , {"thousandth" : {$lte: 781.424742}} ] } , { $or: [ {"sparse_327" : { $exists: true }} , {"thousandth" : {$lte: 218.186211}} ] } ] } }, { $group: { _id: '$sparse_487', count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_881": /^GB.*/} , {"sparse_446" : { $exists: true }} ] } , {"thousandth" : {$lte: 781.424742}} ] } , { $or: [ {"sparse_327" : { $exists: true }} , {"thousandth" : {$lte: 218.186211}} ] } ] } , { $or: [ { $or: [ {"sparse_728" : { $type: "string" }} , {"sparse_042": /^G.*/} ] } , {"dyn2": /^G.*/} ] } ] } }, { $group: { _id: '$sparse_360', count: { $sum: {"$cond": [ { "$ifNull": ["$sparse_148", false] }, 1, 0 ]} } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_881": /^GB.*/} , {"sparse_446" : { $exists: true }} ] } , {"thousandth" : {$lte: 781.424742}} ] } , { $or: [ {"sparse_327" : { $exists: true }} , {"thousandth" : {$lte: 218.186211}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_464" : { $type: "string" }} , {"sparse_041" : { $exists: true }} ] } , {"sparse_228" : { $exists: true }} ] } , {"dyn2" : { $type: "string" }} ] } ] } }, { $group: { _id: '$sparse_404', count: { $sum: {"$cond": [ { "$ifNull": ["$sparse_726", false] }, 1, 0 ]} } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_881": /^GB.*/} , {"sparse_446" : { $exists: true }} ] } , {"thousandth" : {$lte: 781.424742}} ] } , { $or: [ {"sparse_327" : { $exists: true }} , {"thousandth" : {$lte: 218.186211}} ] } ] } , {"thousandth" : {$lte: 344.458698}} ] } }, { $group: { _id: '$sparse_666', count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_881": /^GB.*/} , {"sparse_446" : { $exists: true }} ] } , {"thousandth" : {$lte: 781.424742}} ] } , { $or: [ {"sparse_327" : { $exists: true }} , {"thousandth" : {$lte: 218.186211}} ] } ] } , {"thousandth" : {$lte: 344.458698}} ] } , {"nested_obj.num" : {$lte: 6762295.732432}} ] } }, { $group: { _id: '$sparse_045', count: { $sum: {"$cond": [ { "$ifNull": ["$sparse_207", false] }, 1, 0 ]} } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_881": /^GB.*/} , {"sparse_446" : { $exists: true }} ] } , {"thousandth" : {$lte: 781.424742}} ] } , { $or: [ {"sparse_327" : { $exists: true }} , {"thousandth" : {$lte: 218.186211}} ] } ] } , {"thousandth" : {$lte: 344.458698}} ] } , { $or: [ { $or: [ { $or: [ {"sparse_426": /^GB.*/} , {"sparse_906" : { $type: "string" }} ] } , {"sparse_765" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6219026.651830}} ] } ] } }, { $group: { _id: '$sparse_662', count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_881": /^GB.*/} , {"sparse_446" : { $exists: true }} ] } , {"thousandth" : {$lte: 781.424742}} ] } , { $or: [ {"sparse_327" : { $exists: true }} , {"thousandth" : {$lte: 218.186211}} ] } ] } , {"thousandth" : {$lte: 344.458698}} ] } , { $or: [ { $or: [ { $or: [ {"sparse_426": /^GB.*/} , {"sparse_906" : { $type: "string" }} ] } , {"sparse_765" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6219026.651830}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_941" : { $type: "string" }} , {"sparse_766" : { $exists: true }} ] } , {"sparse_984" : { $exists: true }} ] } , {"num" : {$lte: 6211650.081494}} ] } ] } }, { $group: { _id: '$sparse_427', count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ {"sparse_881": /^GB.*/} , {"sparse_446" : { $exists: true }} ] } , {"thousandth" : {$lte: 781.424742}} ] } , { $or: [ {"sparse_327" : { $exists: true }} , {"thousandth" : {$lte: 218.186211}} ] } ] } , {"thousandth" : {$lte: 344.458698}} ] } , { $or: [ { $or: [ { $or: [ {"sparse_426": /^GB.*/} , {"sparse_906" : { $type: "string" }} ] } , {"sparse_765" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 6219026.651830}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_941" : { $type: "string" }} , {"sparse_766" : { $exists: true }} ] } , {"sparse_984" : { $exists: true }} ] } , {"num" : {$lte: 6211650.081494}} ] } ] } , { $or: [ {"sparse_342" : { $exists: true }} , {"dyn1" : {$lte: 7001212.848801}} ] } ] } }, { $group: { _id: '$sparse_468', count: { $sum: 1 } } }]);
