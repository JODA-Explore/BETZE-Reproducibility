// Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.1, GoBackProb: 0.4, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
db.Twitter.aggregate([{ $match : {"user.lang" : { $type: "string" }} }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$place.name", false] }, 1, 0 ]} } } }]);
db.Twitter.aggregate([{ $match : {"retweeted_status.in_reply_to_screen_name" : { $exists: true }} }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$retweeted_status.user", false] }, 1, 0 ]} } } }]);
db.Twitter.aggregate([{ $match : { $and: [ {"retweeted_status.in_reply_to_screen_name" : { $exists: true }} , { $or: [ {"quoted_status.place.name" : { $type: "string" }} , {"retweeted_status.user.location" : { $type: "string" }} ] } ] } }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$quoted_status.user.profile_background_image_url_https", false] }, 1, 0 ]} } } }]);
db.Twitter.aggregate([{ $match : { $and: [ {"retweeted_status.in_reply_to_screen_name" : { $exists: true }} , { $or: [ { $or: [ { $or: [ {"retweeted_status.place.full_name" : { $type: "string" }} , {"retweeted_status.quoted_status.user.description" : { $exists: true }} ] } , {"retweeted_status.withheld_copyright" : true} ] } , { $and: [ {"retweeted_status.entities.media" : {$type : "array"}} , {$expr:{$lte:[{$size:"$retweeted_status.entities.media"}, 1]}} ] } ] } ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.Twitter.aggregate([{ $match : { $and: [ {"retweeted_status.in_reply_to_screen_name" : { $exists: true }} , { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"retweeted_status.quoted_status.user.profile_link_color": /^1.*/} , {"retweeted_status.quoted_status.user.profile_link_color": /^2.*/} ] } , {"retweeted_status.quoted_status.user.profile_link_color": /^0.*/} ] } , {"retweeted_status.quoted_status.user.profile_link_color": /^3.*/} ] } , {"retweeted_status.quoted_status.user.profile_link_color": /^F.*/} ] } , {"retweeted_status.user.profile_background_image_url": /^ht.*/} ] } ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.Twitter.aggregate([{ $match : { $and: [ { $and: [ {"retweeted_status.in_reply_to_screen_name" : { $exists: true }} , { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"retweeted_status.quoted_status.user.profile_link_color": /^1.*/} , {"retweeted_status.quoted_status.user.profile_link_color": /^2.*/} ] } , {"retweeted_status.quoted_status.user.profile_link_color": /^0.*/} ] } , {"retweeted_status.quoted_status.user.profile_link_color": /^3.*/} ] } , {"retweeted_status.quoted_status.user.profile_link_color": /^F.*/} ] } , {"retweeted_status.user.profile_background_image_url": /^ht.*/} ] } ] } , {"user.geo_enabled" : true} ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.Twitter.aggregate([{ $match : { $and: [ { $and: [ { $and: [ {"retweeted_status.in_reply_to_screen_name" : { $exists: true }} , { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"retweeted_status.quoted_status.user.profile_link_color": /^1.*/} , {"retweeted_status.quoted_status.user.profile_link_color": /^2.*/} ] } , {"retweeted_status.quoted_status.user.profile_link_color": /^0.*/} ] } , {"retweeted_status.quoted_status.user.profile_link_color": /^3.*/} ] } , {"retweeted_status.quoted_status.user.profile_link_color": /^F.*/} ] } , {"retweeted_status.user.profile_background_image_url": /^ht.*/} ] } ] } , {"user.geo_enabled" : true} ] } , { $or: [ {"retweeted_status.place.country_code" : { $exists: true }} , {"quoted_status.user.is_translator" : { $exists: true }} ] } ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.Twitter.aggregate([{ $match : { $and: [ { $and: [ { $and: [ {"retweeted_status.in_reply_to_screen_name" : { $exists: true }} , { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"retweeted_status.quoted_status.user.profile_link_color": /^1.*/} , {"retweeted_status.quoted_status.user.profile_link_color": /^2.*/} ] } , {"retweeted_status.quoted_status.user.profile_link_color": /^0.*/} ] } , {"retweeted_status.quoted_status.user.profile_link_color": /^3.*/} ] } , {"retweeted_status.quoted_status.user.profile_link_color": /^F.*/} ] } , {"retweeted_status.user.profile_background_image_url": /^ht.*/} ] } ] } , {"user.geo_enabled" : true} ] } , { $or: [ {"retweeted_status.quoted_status.user.description" : { $exists: true }} , {"retweeted_status.place.url" : { $type: "string" }} ] } ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.Twitter.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ {"retweeted_status.in_reply_to_screen_name" : { $exists: true }} , { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"retweeted_status.quoted_status.user.profile_link_color": /^1.*/} , {"retweeted_status.quoted_status.user.profile_link_color": /^2.*/} ] } , {"retweeted_status.quoted_status.user.profile_link_color": /^0.*/} ] } , {"retweeted_status.quoted_status.user.profile_link_color": /^3.*/} ] } , {"retweeted_status.quoted_status.user.profile_link_color": /^F.*/} ] } , {"retweeted_status.user.profile_background_image_url": /^ht.*/} ] } ] } , {"user.geo_enabled" : true} ] } , { $or: [ {"retweeted_status.quoted_status.user.description" : { $exists: true }} , {"retweeted_status.place.url" : { $type: "string" }} ] } ] } , { $or: [ {"retweeted_status.user.id" : 767070079017431812} , {"user.time_zone" : { $type: "string" }} ] } ] } }, { $group: { _id: null, count: { $sum: 1 } } }]);
db.Twitter.aggregate([{ $match : { $and: [ { $and: [ { $and: [ { $and: [ { $and: [ {"retweeted_status.in_reply_to_screen_name" : { $exists: true }} , { $or: [ { $or: [ { $or: [ { $or: [ { $or: [ {"retweeted_status.quoted_status.user.profile_link_color": /^1.*/} , {"retweeted_status.quoted_status.user.profile_link_color": /^2.*/} ] } , {"retweeted_status.quoted_status.user.profile_link_color": /^0.*/} ] } , {"retweeted_status.quoted_status.user.profile_link_color": /^3.*/} ] } , {"retweeted_status.quoted_status.user.profile_link_color": /^F.*/} ] } , {"retweeted_status.user.profile_background_image_url": /^ht.*/} ] } ] } , {"user.geo_enabled" : true} ] } , { $or: [ {"retweeted_status.quoted_status.user.description" : { $exists: true }} , {"retweeted_status.place.url" : { $type: "string" }} ] } ] } , { $or: [ {"retweeted_status.user.id" : 767070079017431812} , {"user.time_zone" : { $type: "string" }} ] } ] } , {"retweeted_status.quoted_status.created_at" : { $type: "string" }} ] } }, { $group: { _id: null, count: { $sum: {"$cond": [ { "$ifNull": ["$retweeted_status.quoted_status.user.profile_use_background_image", false] }, 1, 0 ]} } } }]);
