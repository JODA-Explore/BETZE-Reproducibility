use benchmark;
db.setProfilingLevel(2,-1);
// Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.3, GoBackProb: 0.5, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
var cur=db.NoBench.aggregate([{$match:{ $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] }}]);
cur.forEach(printjsononeline);
var cur=db.NoBench.aggregate([{$match:{ $and: [ { $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] } , { $or: [ { $or: [ { $or: [ {"sparse_962": /^G.*/} , {"sparse_766": /^GB.*/} ] } , {"sparse_349" : { $type: "string" }} ] } , {"dyn1" : {$lte: 5229369.426489}} ] } ] }}]);
cur.forEach(printjsononeline);
var cur=db.NoBench.aggregate([{$match:{ $and: [ { $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] } , {"thousandth" : {$lte: 490.737705}} ] }}]);
cur.forEach(printjsononeline);
var cur=db.NoBench.aggregate([{$match:{ $and: [ { $and: [ { $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] } , {"thousandth" : {$lte: 490.737705}} ] } , { $or: [ { $or: [ { $or: [ {"sparse_724" : { $type: "string" }} , {"sparse_924" : { $type: "string" }} ] } , {"sparse_069" : { $exists: true }} ] } , {"thousandth" : {$lte: 172.280907}} ] } ] }}]);
cur.forEach(printjsononeline);
var cur=db.NoBench.aggregate([{$match:{ $and: [ { $and: [ { $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] } , {"thousandth" : {$lte: 490.737705}} ] } , { $or: [ { $or: [ {"sparse_069": /^G.*/} , {"sparse_924" : { $type: "string" }} ] } , {"nested_obj.num" : {$gte: 6423424.869679}} ] } ] }}]);
cur.forEach(printjsononeline);
var cur=db.NoBench.aggregate([{$match:{ $and: [ { $and: [ { $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] } , {"thousandth" : {$lte: 490.737705}} ] } , { $or: [ {"sparse_828": /^G.*/} , {"dyn1" : {$lte: 7203807.015665}} ] } ] }}]);
cur.forEach(printjsononeline);
var cur=db.NoBench.aggregate([{$match:{ $and: [ { $and: [ { $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] } , {"thousandth" : {$lte: 490.737705}} ] } , { $or: [ {"sparse_167" : { $type: "string" }} , {"thousandth" : {$lte: 391.947352}} ] } ] }}]);
cur.forEach(printjsononeline);
var cur=db.NoBench.aggregate([{$match:{ $and: [ { $and: [ { $and: [ { $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] } , {"thousandth" : {$lte: 490.737705}} ] } , { $or: [ {"sparse_167" : { $type: "string" }} , {"thousandth" : {$lte: 391.947352}} ] } ] } , {"dyn2" : { $type: "string" }} ] }}]);
cur.forEach(printjsononeline);
var cur=db.NoBench.aggregate([{$match:{ $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] } , {"thousandth" : {$lte: 490.737705}} ] } , { $or: [ {"sparse_167" : { $type: "string" }} , {"thousandth" : {$lte: 391.947352}} ] } ] } , {"dyn2" : { $type: "string" }} ] } , { $or: [ { $or: [ { $or: [ {"sparse_225" : { $exists: true }} , {"sparse_260" : { $type: "string" }} ] } , {"sparse_265" : { $type: "string" }} ] } , {"nested_obj.num" : {$gte: 7911285.250101}} ] } ] }}]);
cur.forEach(printjsononeline);
var cur=db.NoBench.aggregate([{$match:{ $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] } , {"thousandth" : {$lte: 490.737705}} ] } , { $or: [ {"sparse_167" : { $type: "string" }} , {"thousandth" : {$lte: 391.947352}} ] } ] } , {"dyn2" : { $type: "string" }} ] } , {"num" : {$lte: 4182393.519807}} ] }}]);
cur.forEach(printjsononeline);
var cur=db.NoBench.aggregate([{$match:{ $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] } , {"thousandth" : {$lte: 490.737705}} ] } , { $or: [ {"sparse_167" : { $type: "string" }} , {"thousandth" : {$lte: 391.947352}} ] } ] } , {"dyn2" : { $type: "string" }} ] } , { $or: [ { $or: [ { $or: [ {"sparse_945" : { $exists: true }} , {"sparse_828" : { $exists: true }} ] } , {"sparse_744": /^GB.*/} ] } , {"num" : {$lte: 3811679.830981}} ] } ] }}]);
cur.forEach(printjsononeline);
var cur=db.NoBench.aggregate([{$match:{ $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] } , {"thousandth" : {$lte: 490.737705}} ] } , { $or: [ {"sparse_167" : { $type: "string" }} , {"thousandth" : {$lte: 391.947352}} ] } ] } , {"dyn2" : { $type: "string" }} ] } , { $or: [ { $or: [ { $or: [ {"sparse_945" : { $exists: true }} , {"sparse_828" : { $exists: true }} ] } , {"sparse_744": /^GB.*/} ] } , {"num" : {$lte: 3811679.830981}} ] } ] } , { $or: [ { $or: [ { $or: [ {"sparse_346" : { $exists: true }} , {"sparse_226" : { $type: "string" }} ] } , {"sparse_485" : { $exists: true }} ] } , {"dyn1" : {$lte: 3209284.044495}} ] } ] }}]);
cur.forEach(printjsononeline);
var cur=db.NoBench.aggregate([{$match:{ $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] } , {"thousandth" : {$lte: 490.737705}} ] } , { $or: [ {"sparse_167" : { $type: "string" }} , {"thousandth" : {$lte: 391.947352}} ] } ] } , {"dyn2" : { $type: "string" }} ] } , { $or: [ { $or: [ { $or: [ {"sparse_945" : { $exists: true }} , {"sparse_828" : { $exists: true }} ] } , {"sparse_744": /^GB.*/} ] } , {"num" : {$lte: 3811679.830981}} ] } ] } , { $or: [ { $or: [ {"sparse_385": /^GB.*/} , {"sparse_328" : { $exists: true }} ] } , {"nested_obj.num" : {$lte: 8455766.023495}} ] } ] }}]);
cur.forEach(printjsononeline);
var cur=db.NoBench.aggregate([{$match:{ $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] } , {"thousandth" : {$lte: 490.737705}} ] } , { $or: [ {"sparse_167" : { $type: "string" }} , {"thousandth" : {$lte: 391.947352}} ] } ] } , {"dyn2" : { $type: "string" }} ] } , { $or: [ { $or: [ { $or: [ {"sparse_945" : { $exists: true }} , {"sparse_828" : { $exists: true }} ] } , {"sparse_744": /^GB.*/} ] } , {"num" : {$lte: 3811679.830981}} ] } ] } , { $or: [ { $or: [ {"sparse_385": /^GB.*/} , {"sparse_328" : { $exists: true }} ] } , {"nested_obj.num" : {$lte: 8455766.023495}} ] } ] } , { $or: [ { $or: [ {"sparse_961": /^G.*/} , {"sparse_221" : { $type: "string" }} ] } , {"sparse_260" : { $type: "string" }} ] } ] }}]);
cur.forEach(printjsononeline);
var cur=db.NoBench.aggregate([{$match:{ $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] } , {"thousandth" : {$lte: 490.737705}} ] } , { $or: [ {"sparse_167" : { $type: "string" }} , {"thousandth" : {$lte: 391.947352}} ] } ] } , {"dyn2" : { $type: "string" }} ] } , { $or: [ { $or: [ { $or: [ {"sparse_945" : { $exists: true }} , {"sparse_828" : { $exists: true }} ] } , {"sparse_744": /^GB.*/} ] } , {"num" : {$lte: 3811679.830981}} ] } ] } , { $or: [ { $or: [ {"sparse_385": /^GB.*/} , {"sparse_328" : { $exists: true }} ] } , {"nested_obj.num" : {$lte: 8455766.023495}} ] } ] } , {"thousandth" : {$lte: 186.187630}} ] }}]);
cur.forEach(printjsononeline);
var cur=db.NoBench.aggregate([{$match:{ $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] } , {"thousandth" : {$lte: 490.737705}} ] } , { $or: [ {"sparse_167" : { $type: "string" }} , {"thousandth" : {$lte: 391.947352}} ] } ] } , {"dyn2" : { $type: "string" }} ] } , { $or: [ { $or: [ { $or: [ {"sparse_945" : { $exists: true }} , {"sparse_828" : { $exists: true }} ] } , {"sparse_744": /^GB.*/} ] } , {"num" : {$lte: 3811679.830981}} ] } ] } , { $or: [ { $or: [ {"sparse_385": /^GB.*/} , {"sparse_328" : { $exists: true }} ] } , {"nested_obj.num" : {$lte: 8455766.023495}} ] } ] } , {"thousandth" : {$lte: 186.187630}} ] } , { $or: [ {"sparse_961" : { $type: "string" }} , {"sparse_225" : { $exists: true }} ] } ] }}]);
cur.forEach(printjsononeline);
var cur=db.NoBench.aggregate([{$match:{ $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] } , {"thousandth" : {$lte: 490.737705}} ] } , { $or: [ {"sparse_167" : { $type: "string" }} , {"thousandth" : {$lte: 391.947352}} ] } ] } , {"dyn2" : { $type: "string" }} ] } , { $or: [ { $or: [ { $or: [ {"sparse_945" : { $exists: true }} , {"sparse_828" : { $exists: true }} ] } , {"sparse_744": /^GB.*/} ] } , {"num" : {$lte: 3811679.830981}} ] } ] } , { $or: [ { $or: [ {"sparse_385": /^GB.*/} , {"sparse_328" : { $exists: true }} ] } , {"nested_obj.num" : {$lte: 8455766.023495}} ] } ] } , {"thousandth" : {$lte: 186.187630}} ] } , {"sparse_226" : { $type: "string" }} ] }}]);
cur.forEach(printjsononeline);
var cur=db.NoBench.aggregate([{$match:{ $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] } , {"thousandth" : {$lte: 490.737705}} ] } , { $or: [ {"sparse_167" : { $type: "string" }} , {"thousandth" : {$lte: 391.947352}} ] } ] } , {"dyn2" : { $type: "string" }} ] } , { $or: [ { $or: [ { $or: [ {"sparse_945" : { $exists: true }} , {"sparse_828" : { $exists: true }} ] } , {"sparse_744": /^GB.*/} ] } , {"num" : {$lte: 3811679.830981}} ] } ] } , { $or: [ { $or: [ {"sparse_385": /^GB.*/} , {"sparse_328" : { $exists: true }} ] } , {"nested_obj.num" : {$lte: 8455766.023495}} ] } ] } , {"thousandth" : {$lte: 186.187630}} ] } , { $or: [ { $or: [ {"sparse_963" : { $exists: true }} , {"sparse_966": /^GB.*/} ] } , {"sparse_227" : { $type: "string" }} ] } ] }}]);
cur.forEach(printjsononeline);
var cur=db.NoBench.aggregate([{$match:{ $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] } , {"thousandth" : {$lte: 490.737705}} ] } , { $or: [ {"sparse_167" : { $type: "string" }} , {"thousandth" : {$lte: 391.947352}} ] } ] } , {"dyn2" : { $type: "string" }} ] } , { $or: [ { $or: [ { $or: [ {"sparse_945" : { $exists: true }} , {"sparse_828" : { $exists: true }} ] } , {"sparse_744": /^GB.*/} ] } , {"num" : {$lte: 3811679.830981}} ] } ] } , { $or: [ { $or: [ {"sparse_385": /^GB.*/} , {"sparse_328" : { $exists: true }} ] } , {"nested_obj.num" : {$lte: 8455766.023495}} ] } ] } , {"thousandth" : {$lte: 186.187630}} ] } , { $or: [ { $or: [ {"sparse_963" : { $exists: true }} , {"sparse_966": /^GB.*/} ] } , {"sparse_227" : { $type: "string" }} ] } ] } , { $or: [ { $or: [ { $or: [ {"nested_obj.num" : {$gte: 8295973.874278}} , {"dyn1" : 3049202} ] } , {"nested_obj.num" : 6949254} ] } , {"num" : {$gte: 2891817.838563}} ] } ] }}]);
cur.forEach(printjsononeline);
var cur=db.NoBench.aggregate([{$match:{ $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ { $or: [ { $or: [ { $or: [ {"sparse_462" : { $exists: true }} , {"sparse_037" : { $exists: true }} ] } , {"sparse_776" : { $type: "string" }} ] } , {"bool" : false} ] } , {"thousandth" : {$lte: 490.737705}} ] } , { $or: [ {"sparse_167" : { $type: "string" }} , {"thousandth" : {$lte: 391.947352}} ] } ] } , {"dyn2" : { $type: "string" }} ] } , { $or: [ { $or: [ { $or: [ {"sparse_945" : { $exists: true }} , {"sparse_828" : { $exists: true }} ] } , {"sparse_744": /^GB.*/} ] } , {"num" : {$lte: 3811679.830981}} ] } ] } , { $or: [ { $or: [ {"sparse_385": /^GB.*/} , {"sparse_328" : { $exists: true }} ] } , {"nested_obj.num" : {$lte: 8455766.023495}} ] } ] } , {"thousandth" : {$lte: 186.187630}} ] } , { $or: [ { $or: [ {"sparse_963" : { $exists: true }} , {"sparse_966": /^GB.*/} ] } , {"sparse_227" : { $type: "string" }} ] } ] } , { $or: [ { $or: [ { $or: [ {"nested_obj.num" : {$gte: 8295973.874278}} , {"dyn1" : 3049202} ] } , {"nested_obj.num" : 6949254} ] } , {"num" : {$gte: 2891817.838563}} ] } ] } , { $or: [ { $and: [ {"nested_obj.num" : {$gte: 8000488.454228}} , {"dyn1" : 2902446} ] } , {"nested_obj.num" : {$gte: 8289344.252614}} ] } ] }}]);
cur.forEach(printjsononeline);
