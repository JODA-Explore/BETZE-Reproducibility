// Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.3, GoBackProb: 0.5, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
db.NoBench.aggregate([{ $match : {"bool" : false} }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ {"bool" : false} , {"dyn1" : {$lte: 4233903.238324}} ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ {"bool" : false} , {"dyn1" : {$lte: 4233903.238324}} ] } , { $or: [ { $or: [ {"sparse_024" : { $type: "string" }} , {"sparse_105" : { $type: "string" }} ] } , {"dyn2" : { $type: "string" }} ] } ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ {"bool" : false} , {"dyn1" : {$lte: 4233903.238324}} ] } , { $or: [ { $or: [ {"sparse_024" : { $type: "string" }} , {"sparse_105" : { $type: "string" }} ] } , {"dyn2" : { $type: "string" }} ] } ] } , {"nested_obj.num" : {$lte: 5881008.243705}} ] } }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$sparse_021", false] }, 1, 0 ]} } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ {"bool" : false} , {"dyn1" : {$lte: 4233903.238324}} ] } , { $or: [ { $or: [ {"sparse_024" : { $type: "string" }} , {"sparse_105" : { $type: "string" }} ] } , {"dyn2" : { $type: "string" }} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_346" : { $exists: true }} , {"sparse_862": /^GB.*/} ] } , {"sparse_269" : { $exists: true }} ] } , {"num" : {$lte: 1356130.171610}} ] } ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ {"bool" : false} , {"dyn1" : {$lte: 4233903.238324}} ] } , { $or: [ { $or: [ {"sparse_024" : { $type: "string" }} , {"sparse_105" : { $type: "string" }} ] } , {"dyn2" : { $type: "string" }} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_346" : { $exists: true }} , {"sparse_862": /^GB.*/} ] } , {"sparse_269" : { $exists: true }} ] } , {"num" : {$lte: 1356130.171610}} ] } ] } , { $or: [ { $or: [ {"sparse_661" : { $type: "string" }} , {"sparse_341" : { $type: "string" }} ] } , {"thousandth" : {$lte: 695.244074}} ] } ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ {"bool" : false} , {"dyn1" : {$lte: 4233903.238324}} ] } , { $or: [ { $or: [ {"sparse_024" : { $type: "string" }} , {"sparse_105" : { $type: "string" }} ] } , {"dyn2" : { $type: "string" }} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_346" : { $exists: true }} , {"sparse_862": /^GB.*/} ] } , {"sparse_269" : { $exists: true }} ] } , {"num" : {$lte: 1356130.171610}} ] } ] } , { $or: [ { $or: [ {"sparse_548" : { $exists: true }} , {"sparse_583" : { $exists: true }} ] } , {"nested_obj.num" : {$lte: 5378695.583031}} ] } ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ {"bool" : false} , {"dyn1" : {$lte: 4233903.238324}} ] } , { $or: [ { $or: [ {"sparse_024" : { $type: "string" }} , {"sparse_105" : { $type: "string" }} ] } , {"dyn2" : { $type: "string" }} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_346" : { $exists: true }} , {"sparse_862": /^GB.*/} ] } , {"sparse_269" : { $exists: true }} ] } , {"num" : {$lte: 1356130.171610}} ] } ] } , { $or: [ { $or: [ {"sparse_840" : { $type: "string" }} , {"sparse_869" : { $exists: true }} ] } , {"nested_obj.num" : {$lte: 5518518.739241}} ] } ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ {"bool" : false} , {"dyn1" : {$lte: 4233903.238324}} ] } , { $or: [ { $or: [ {"sparse_024" : { $type: "string" }} , {"sparse_105" : { $type: "string" }} ] } , {"dyn2" : { $type: "string" }} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_346" : { $exists: true }} , {"sparse_862": /^GB.*/} ] } , {"sparse_269" : { $exists: true }} ] } , {"num" : {$lte: 1356130.171610}} ] } ] } , { $or: [ { $or: [ {"sparse_661" : { $type: "string" }} , {"sparse_341" : { $type: "string" }} ] } , {"thousandth" : {$lte: 695.244074}} ] } ] } , { $or: [ { $or: [ {"sparse_588" : { $type: "string" }} , {"sparse_564" : { $type: "string" }} ] } , {"num" : {$lte: 370406.438885}} ] } ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ {"bool" : false} , {"dyn1" : {$lte: 4233903.238324}} ] } , { $or: [ { $or: [ {"sparse_024" : { $type: "string" }} , {"sparse_105" : { $type: "string" }} ] } , {"dyn2" : { $type: "string" }} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_346" : { $exists: true }} , {"sparse_862": /^GB.*/} ] } , {"sparse_269" : { $exists: true }} ] } , {"num" : {$lte: 1356130.171610}} ] } ] } , { $or: [ { $or: [ {"sparse_661" : { $type: "string" }} , {"sparse_341" : { $type: "string" }} ] } , {"thousandth" : {$lte: 695.244074}} ] } ] } , {"nested_obj.num" : {$lte: 5351608.652389}} ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ {"bool" : false} , {"dyn1" : {$lte: 4233903.238324}} ] } , { $or: [ { $or: [ {"sparse_024" : { $type: "string" }} , {"sparse_105" : { $type: "string" }} ] } , {"dyn2" : { $type: "string" }} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_346" : { $exists: true }} , {"sparse_862": /^GB.*/} ] } , {"sparse_269" : { $exists: true }} ] } , {"num" : {$lte: 1356130.171610}} ] } ] } , { $or: [ { $or: [ {"sparse_661" : { $type: "string" }} , {"sparse_341" : { $type: "string" }} ] } , {"thousandth" : {$lte: 695.244074}} ] } ] } , { $or: [ {"sparse_241" : { $exists: true }} , {"nested_obj.num" : {$lte: 5470235.288555}} ] } ] } }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$sparse_828", false] }, 1, 0 ]} } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ {"bool" : false} , {"dyn1" : {$lte: 4233903.238324}} ] } , { $or: [ { $or: [ {"sparse_024" : { $type: "string" }} , {"sparse_105" : { $type: "string" }} ] } , {"dyn2" : { $type: "string" }} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_346" : { $exists: true }} , {"sparse_862": /^GB.*/} ] } , {"sparse_269" : { $exists: true }} ] } , {"num" : {$lte: 1356130.171610}} ] } ] } , { $or: [ { $or: [ {"sparse_661" : { $type: "string" }} , {"sparse_341" : { $type: "string" }} ] } , {"thousandth" : {$lte: 695.244074}} ] } ] } , {"nested_obj.num" : {$lte: 5765694.144993}} ] } }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$sparse_486", false] }, 1, 0 ]} } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ {"bool" : false} , {"dyn1" : {$lte: 4233903.238324}} ] } , { $or: [ { $or: [ {"sparse_024" : { $type: "string" }} , {"sparse_105" : { $type: "string" }} ] } , {"dyn2" : { $type: "string" }} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_346" : { $exists: true }} , {"sparse_862": /^GB.*/} ] } , {"sparse_269" : { $exists: true }} ] } , {"num" : {$lte: 1356130.171610}} ] } ] } , { $or: [ { $or: [ {"sparse_661" : { $type: "string" }} , {"sparse_341" : { $type: "string" }} ] } , {"thousandth" : {$lte: 695.244074}} ] } ] } , {"nested_obj.num" : {$lte: 5765694.144993}} ] } , { $or: [ { $or: [ { $or: [ {"sparse_920" : { $type: "string" }} , {"sparse_646" : { $exists: true }} ] } , {"sparse_124" : { $type: "string" }} ] } , {"num" : {$lte: 62312.177404}} ] } ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ {"bool" : false} , {"dyn1" : {$lte: 4233903.238324}} ] } , { $or: [ { $or: [ {"sparse_024" : { $type: "string" }} , {"sparse_105" : { $type: "string" }} ] } , {"dyn2" : { $type: "string" }} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_346" : { $exists: true }} , {"sparse_862": /^GB.*/} ] } , {"sparse_269" : { $exists: true }} ] } , {"num" : {$lte: 1356130.171610}} ] } ] } , { $or: [ { $or: [ {"sparse_661" : { $type: "string" }} , {"sparse_341" : { $type: "string" }} ] } , {"thousandth" : {$lte: 695.244074}} ] } ] } , {"nested_obj.num" : {$lte: 5765694.144993}} ] } , { $or: [ { $or: [ { $or: [ {"sparse_920" : { $type: "string" }} , {"sparse_646" : { $exists: true }} ] } , {"sparse_124" : { $type: "string" }} ] } , {"num" : {$lte: 62312.177404}} ] } ] } , { $or: [ { $or: [ {"sparse_644" : { $exists: true }} , {"sparse_028" : { $exists: true }} ] } , {"sparse_924" : { $type: "string" }} ] } ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ {"bool" : false} , {"dyn1" : {$lte: 4233903.238324}} ] } , { $or: [ { $or: [ {"sparse_024" : { $type: "string" }} , {"sparse_105" : { $type: "string" }} ] } , {"dyn2" : { $type: "string" }} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_346" : { $exists: true }} , {"sparse_862": /^GB.*/} ] } , {"sparse_269" : { $exists: true }} ] } , {"num" : {$lte: 1356130.171610}} ] } ] } , { $or: [ { $or: [ {"sparse_661" : { $type: "string" }} , {"sparse_341" : { $type: "string" }} ] } , {"thousandth" : {$lte: 695.244074}} ] } ] } , {"nested_obj.num" : {$lte: 5765694.144993}} ] } , { $or: [ { $or: [ { $or: [ {"sparse_920" : { $type: "string" }} , {"sparse_646" : { $exists: true }} ] } , {"sparse_124" : { $type: "string" }} ] } , {"num" : {$lte: 62312.177404}} ] } ] } , { $or: [ { $or: [ {"sparse_644" : { $exists: true }} , {"sparse_028" : { $exists: true }} ] } , {"sparse_924" : { $type: "string" }} ] } ] } , {"sparse_646" : { $type: "string" }} ] } }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$sparse_920", false] }, 1, 0 ]} } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ {"bool" : false} , {"dyn1" : {$lte: 4233903.238324}} ] } , { $or: [ { $or: [ {"sparse_024" : { $type: "string" }} , {"sparse_105" : { $type: "string" }} ] } , {"dyn2" : { $type: "string" }} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_346" : { $exists: true }} , {"sparse_862": /^GB.*/} ] } , {"sparse_269" : { $exists: true }} ] } , {"num" : {$lte: 1356130.171610}} ] } ] } , { $or: [ { $or: [ {"sparse_661" : { $type: "string" }} , {"sparse_341" : { $type: "string" }} ] } , {"thousandth" : {$lte: 695.244074}} ] } ] } , {"nested_obj.num" : {$lte: 5765694.144993}} ] } , { $or: [ { $or: [ { $or: [ {"sparse_920" : { $type: "string" }} , {"sparse_646" : { $exists: true }} ] } , {"sparse_124" : { $type: "string" }} ] } , {"num" : {$lte: 62312.177404}} ] } ] } , { $or: [ { $or: [ {"sparse_644" : { $exists: true }} , {"sparse_028" : { $exists: true }} ] } , {"sparse_924" : { $type: "string" }} ] } ] } , {"sparse_646" : { $type: "string" }} ] } , {"nested_obj.num" : {$lte: 5248984.561253}} ] } }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$nested_arr", false] }, 1, 0 ]} } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ {"bool" : false} , {"dyn1" : {$lte: 4233903.238324}} ] } , { $or: [ { $or: [ {"sparse_024" : { $type: "string" }} , {"sparse_105" : { $type: "string" }} ] } , {"dyn2" : { $type: "string" }} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_346" : { $exists: true }} , {"sparse_862": /^GB.*/} ] } , {"sparse_269" : { $exists: true }} ] } , {"num" : {$lte: 1356130.171610}} ] } ] } , { $or: [ { $or: [ {"sparse_661" : { $type: "string" }} , {"sparse_341" : { $type: "string" }} ] } , {"thousandth" : {$lte: 695.244074}} ] } ] } , {"nested_obj.num" : {$lte: 5765694.144993}} ] } , { $or: [ { $or: [ { $or: [ {"sparse_920" : { $type: "string" }} , {"sparse_646" : { $exists: true }} ] } , {"sparse_124" : { $type: "string" }} ] } , {"num" : {$lte: 62312.177404}} ] } ] } , { $or: [ { $or: [ {"sparse_644" : { $exists: true }} , {"sparse_028" : { $exists: true }} ] } , {"sparse_924" : { $type: "string" }} ] } ] } , {"sparse_646" : { $type: "string" }} ] } , { $or: [ {"nested_obj.num" : 5165239} , {"dyn1" : {$lte: 71908.288536}} ] } ] } }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$dyn2", false] }, 1, 0 ]} } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ {"bool" : false} , {"dyn1" : {$lte: 4233903.238324}} ] } , { $or: [ { $or: [ {"sparse_024" : { $type: "string" }} , {"sparse_105" : { $type: "string" }} ] } , {"dyn2" : { $type: "string" }} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_346" : { $exists: true }} , {"sparse_862": /^GB.*/} ] } , {"sparse_269" : { $exists: true }} ] } , {"num" : {$lte: 1356130.171610}} ] } ] } , { $or: [ { $or: [ {"sparse_661" : { $type: "string" }} , {"sparse_341" : { $type: "string" }} ] } , {"thousandth" : {$lte: 695.244074}} ] } ] } , {"nested_obj.num" : {$lte: 5765694.144993}} ] } , { $or: [ { $or: [ { $or: [ {"sparse_920" : { $type: "string" }} , {"sparse_646" : { $exists: true }} ] } , {"sparse_124" : { $type: "string" }} ] } , {"num" : {$lte: 62312.177404}} ] } ] } , { $or: [ { $or: [ {"sparse_644" : { $exists: true }} , {"sparse_028" : { $exists: true }} ] } , {"sparse_924" : { $type: "string" }} ] } ] } , {"sparse_646" : { $type: "string" }} ] } , { $or: [ { $or: [ { $or: [ {"nested_obj.num" : {$lte: 5056806.067982}} , {"dyn1" : 209055} ] } , {"nested_obj.num" : 5283486} ] } , {"num" : {$lte: 224053.215888}} ] } ] } }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$str2", false] }, 1, 0 ]} } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ {"bool" : false} , {"dyn1" : {$lte: 4233903.238324}} ] } , { $or: [ { $or: [ {"sparse_024" : { $type: "string" }} , {"sparse_105" : { $type: "string" }} ] } , {"dyn2" : { $type: "string" }} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_346" : { $exists: true }} , {"sparse_862": /^GB.*/} ] } , {"sparse_269" : { $exists: true }} ] } , {"num" : {$lte: 1356130.171610}} ] } ] } , { $or: [ { $or: [ {"sparse_661" : { $type: "string" }} , {"sparse_341" : { $type: "string" }} ] } , {"thousandth" : {$lte: 695.244074}} ] } ] } , {"nested_obj.num" : {$lte: 5765694.144993}} ] } , { $or: [ { $or: [ { $or: [ {"sparse_920" : { $type: "string" }} , {"sparse_646" : { $exists: true }} ] } , {"sparse_124" : { $type: "string" }} ] } , {"num" : {$lte: 62312.177404}} ] } ] } , { $or: [ { $or: [ {"sparse_644" : { $exists: true }} , {"sparse_028" : { $exists: true }} ] } , {"sparse_924" : { $type: "string" }} ] } ] } , {"sparse_646" : { $type: "string" }} ] } , {"dyn1" : {$lte: 211933.839101}} ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.NoBench.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ {"bool" : false} , {"dyn1" : {$lte: 4233903.238324}} ] } , { $or: [ { $or: [ {"sparse_024" : { $type: "string" }} , {"sparse_105" : { $type: "string" }} ] } , {"dyn2" : { $type: "string" }} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_346" : { $exists: true }} , {"sparse_862": /^GB.*/} ] } , {"sparse_269" : { $exists: true }} ] } , {"num" : {$lte: 1356130.171610}} ] } ] } , { $or: [ { $or: [ {"sparse_661" : { $type: "string" }} , {"sparse_341" : { $type: "string" }} ] } , {"thousandth" : {$lte: 695.244074}} ] } ] } , {"nested_obj.num" : {$lte: 5765694.144993}} ] } , { $or: [ { $or: [ { $or: [ {"sparse_920" : { $type: "string" }} , {"sparse_646" : { $exists: true }} ] } , {"sparse_124" : { $type: "string" }} ] } , {"num" : {$lte: 62312.177404}} ] } ] } , { $or: [ { $or: [ {"sparse_644" : { $exists: true }} , {"sparse_028" : { $exists: true }} ] } , {"sparse_924" : { $type: "string" }} ] } ] } , {"sparse_646" : { $type: "string" }} ] } , { $or: [ { $and: [ {"thousandth" : {$gte: 330.511666}} , {"thousandth" : 357} ] } , {"dyn1" : {$lte: 266943.022959}} ] } ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
