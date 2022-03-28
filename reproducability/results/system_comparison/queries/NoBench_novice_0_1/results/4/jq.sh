#!/bin/sh

# Created with Random Explorer Benchmark Generator (version v0.0.1), seed 1 (MinSelectivity: 0.2, MaxSelectivity: 0.9, MaxChain: 3, MaxTries: 100, RandomBrowseProb: 0.3, GoBackProb: 0.5, Weighted-Paths: false, Predicates: [Exists,BoolEquality,IsString,IntEquality,FloatComparison,StrPrefix,ObjectSize,ArraySize])
jq -c 'inputs | select(( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ))' NoBench.json
jq -c 'inputs | select(( ( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ) and ( ( ( ( .sparse_962 | (. != null and startswith("G")) ) or ( .sparse_766 | (. != null and startswith("GB")) ) ) or ( .sparse_349 | type == "string" ) ) or ( .dyn1 <= 5229369.426489 ) ) ))' NoBench.json
jq -c 'inputs | select(( ( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ) and ( .thousandth <= 490.737705 ) ))' NoBench.json
jq -c 'inputs | select(( ( ( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ) and ( .thousandth <= 490.737705 ) ) and ( ( ( ( .sparse_724 | type == "string" ) or ( .sparse_924 | type == "string" ) ) or ( . | has("sparse_069") ) ) or ( .thousandth <= 172.280907 ) ) ))' NoBench.json
jq -c 'inputs | select(( ( ( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ) and ( .thousandth <= 490.737705 ) ) and ( ( ( .sparse_069 | (. != null and startswith("G")) ) or ( .sparse_924 | type == "string" ) ) or ( .nested_obj.num >= 6423424.869679 ) ) ))' NoBench.json
jq -c 'inputs | select(( ( ( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ) and ( .thousandth <= 490.737705 ) ) and ( ( .sparse_828 | (. != null and startswith("G")) ) or ( .dyn1 <= 7203807.015665 ) ) ))' NoBench.json
jq -c 'inputs | select(( ( ( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ) and ( .thousandth <= 490.737705 ) ) and ( ( .sparse_167 | type == "string" ) or ( .thousandth <= 391.947352 ) ) ))' NoBench.json
jq -c 'inputs | select(( ( ( ( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ) and ( .thousandth <= 490.737705 ) ) and ( ( .sparse_167 | type == "string" ) or ( .thousandth <= 391.947352 ) ) ) and ( .dyn2 | type == "string" ) ))' NoBench.json
jq -c 'inputs | select(( ( ( ( ( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ) and ( .thousandth <= 490.737705 ) ) and ( ( .sparse_167 | type == "string" ) or ( .thousandth <= 391.947352 ) ) ) and ( .dyn2 | type == "string" ) ) and ( ( ( ( . | has("sparse_225") ) or ( .sparse_260 | type == "string" ) ) or ( .sparse_265 | type == "string" ) ) or ( .nested_obj.num >= 7911285.250101 ) ) ))' NoBench.json
jq -c 'inputs | select(( ( ( ( ( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ) and ( .thousandth <= 490.737705 ) ) and ( ( .sparse_167 | type == "string" ) or ( .thousandth <= 391.947352 ) ) ) and ( .dyn2 | type == "string" ) ) and ( .num <= 4182393.519807 ) ))' NoBench.json
jq -c 'inputs | select(( ( ( ( ( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ) and ( .thousandth <= 490.737705 ) ) and ( ( .sparse_167 | type == "string" ) or ( .thousandth <= 391.947352 ) ) ) and ( .dyn2 | type == "string" ) ) and ( ( ( ( . | has("sparse_945") ) or ( . | has("sparse_828") ) ) or ( .sparse_744 | (. != null and startswith("GB")) ) ) or ( .num <= 3811679.830981 ) ) ))' NoBench.json
jq -c 'inputs | select(( ( ( ( ( ( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ) and ( .thousandth <= 490.737705 ) ) and ( ( .sparse_167 | type == "string" ) or ( .thousandth <= 391.947352 ) ) ) and ( .dyn2 | type == "string" ) ) and ( ( ( ( . | has("sparse_945") ) or ( . | has("sparse_828") ) ) or ( .sparse_744 | (. != null and startswith("GB")) ) ) or ( .num <= 3811679.830981 ) ) ) and ( ( ( ( . | has("sparse_346") ) or ( .sparse_226 | type == "string" ) ) or ( . | has("sparse_485") ) ) or ( .dyn1 <= 3209284.044495 ) ) ))' NoBench.json
jq -c 'inputs | select(( ( ( ( ( ( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ) and ( .thousandth <= 490.737705 ) ) and ( ( .sparse_167 | type == "string" ) or ( .thousandth <= 391.947352 ) ) ) and ( .dyn2 | type == "string" ) ) and ( ( ( ( . | has("sparse_945") ) or ( . | has("sparse_828") ) ) or ( .sparse_744 | (. != null and startswith("GB")) ) ) or ( .num <= 3811679.830981 ) ) ) and ( ( ( .sparse_385 | (. != null and startswith("GB")) ) or ( . | has("sparse_328") ) ) or ( .nested_obj.num <= 8455766.023495 ) ) ))' NoBench.json
jq -c 'inputs | select(( ( ( ( ( ( ( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ) and ( .thousandth <= 490.737705 ) ) and ( ( .sparse_167 | type == "string" ) or ( .thousandth <= 391.947352 ) ) ) and ( .dyn2 | type == "string" ) ) and ( ( ( ( . | has("sparse_945") ) or ( . | has("sparse_828") ) ) or ( .sparse_744 | (. != null and startswith("GB")) ) ) or ( .num <= 3811679.830981 ) ) ) and ( ( ( .sparse_385 | (. != null and startswith("GB")) ) or ( . | has("sparse_328") ) ) or ( .nested_obj.num <= 8455766.023495 ) ) ) and ( ( ( .sparse_961 | (. != null and startswith("G")) ) or ( .sparse_221 | type == "string" ) ) or ( .sparse_260 | type == "string" ) ) ))' NoBench.json
jq -c 'inputs | select(( ( ( ( ( ( ( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ) and ( .thousandth <= 490.737705 ) ) and ( ( .sparse_167 | type == "string" ) or ( .thousandth <= 391.947352 ) ) ) and ( .dyn2 | type == "string" ) ) and ( ( ( ( . | has("sparse_945") ) or ( . | has("sparse_828") ) ) or ( .sparse_744 | (. != null and startswith("GB")) ) ) or ( .num <= 3811679.830981 ) ) ) and ( ( ( .sparse_385 | (. != null and startswith("GB")) ) or ( . | has("sparse_328") ) ) or ( .nested_obj.num <= 8455766.023495 ) ) ) and ( .thousandth <= 186.187630 ) ))' NoBench.json
jq -c 'inputs | select(( ( ( ( ( ( ( ( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ) and ( .thousandth <= 490.737705 ) ) and ( ( .sparse_167 | type == "string" ) or ( .thousandth <= 391.947352 ) ) ) and ( .dyn2 | type == "string" ) ) and ( ( ( ( . | has("sparse_945") ) or ( . | has("sparse_828") ) ) or ( .sparse_744 | (. != null and startswith("GB")) ) ) or ( .num <= 3811679.830981 ) ) ) and ( ( ( .sparse_385 | (. != null and startswith("GB")) ) or ( . | has("sparse_328") ) ) or ( .nested_obj.num <= 8455766.023495 ) ) ) and ( .thousandth <= 186.187630 ) ) and ( ( .sparse_961 | type == "string" ) or ( . | has("sparse_225") ) ) ))' NoBench.json
jq -c 'inputs | select(( ( ( ( ( ( ( ( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ) and ( .thousandth <= 490.737705 ) ) and ( ( .sparse_167 | type == "string" ) or ( .thousandth <= 391.947352 ) ) ) and ( .dyn2 | type == "string" ) ) and ( ( ( ( . | has("sparse_945") ) or ( . | has("sparse_828") ) ) or ( .sparse_744 | (. != null and startswith("GB")) ) ) or ( .num <= 3811679.830981 ) ) ) and ( ( ( .sparse_385 | (. != null and startswith("GB")) ) or ( . | has("sparse_328") ) ) or ( .nested_obj.num <= 8455766.023495 ) ) ) and ( .thousandth <= 186.187630 ) ) and ( .sparse_226 | type == "string" ) ))' NoBench.json
jq -c 'inputs | select(( ( ( ( ( ( ( ( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ) and ( .thousandth <= 490.737705 ) ) and ( ( .sparse_167 | type == "string" ) or ( .thousandth <= 391.947352 ) ) ) and ( .dyn2 | type == "string" ) ) and ( ( ( ( . | has("sparse_945") ) or ( . | has("sparse_828") ) ) or ( .sparse_744 | (. != null and startswith("GB")) ) ) or ( .num <= 3811679.830981 ) ) ) and ( ( ( .sparse_385 | (. != null and startswith("GB")) ) or ( . | has("sparse_328") ) ) or ( .nested_obj.num <= 8455766.023495 ) ) ) and ( .thousandth <= 186.187630 ) ) and ( ( ( . | has("sparse_963") ) or ( .sparse_966 | (. != null and startswith("GB")) ) ) or ( .sparse_227 | type == "string" ) ) ))' NoBench.json
jq -c 'inputs | select(( ( ( ( ( ( ( ( ( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ) and ( .thousandth <= 490.737705 ) ) and ( ( .sparse_167 | type == "string" ) or ( .thousandth <= 391.947352 ) ) ) and ( .dyn2 | type == "string" ) ) and ( ( ( ( . | has("sparse_945") ) or ( . | has("sparse_828") ) ) or ( .sparse_744 | (. != null and startswith("GB")) ) ) or ( .num <= 3811679.830981 ) ) ) and ( ( ( .sparse_385 | (. != null and startswith("GB")) ) or ( . | has("sparse_328") ) ) or ( .nested_obj.num <= 8455766.023495 ) ) ) and ( .thousandth <= 186.187630 ) ) and ( ( ( . | has("sparse_963") ) or ( .sparse_966 | (. != null and startswith("GB")) ) ) or ( .sparse_227 | type == "string" ) ) ) and ( ( ( ( .nested_obj.num >= 8295973.874278 ) or ( .dyn1 == 3049202 ) ) or ( .nested_obj.num == 6949254 ) ) or ( .num >= 2891817.838563 ) ) ))' NoBench.json
jq -c 'inputs | select(( ( ( ( ( ( ( ( ( ( ( ( ( . | has("sparse_462") ) or ( . | has("sparse_037") ) ) or ( .sparse_776 | type == "string" ) ) or ( .bool == false ) ) and ( .thousandth <= 490.737705 ) ) and ( ( .sparse_167 | type == "string" ) or ( .thousandth <= 391.947352 ) ) ) and ( .dyn2 | type == "string" ) ) and ( ( ( ( . | has("sparse_945") ) or ( . | has("sparse_828") ) ) or ( .sparse_744 | (. != null and startswith("GB")) ) ) or ( .num <= 3811679.830981 ) ) ) and ( ( ( .sparse_385 | (. != null and startswith("GB")) ) or ( . | has("sparse_328") ) ) or ( .nested_obj.num <= 8455766.023495 ) ) ) and ( .thousandth <= 186.187630 ) ) and ( ( ( . | has("sparse_963") ) or ( .sparse_966 | (. != null and startswith("GB")) ) ) or ( .sparse_227 | type == "string" ) ) ) and ( ( ( ( .nested_obj.num >= 8295973.874278 ) or ( .dyn1 == 3049202 ) ) or ( .nested_obj.num == 6949254 ) ) or ( .num >= 2891817.838563 ) ) ) and ( ( ( .nested_obj.num >= 8000488.454228 ) and ( .dyn1 == 2902446 ) ) or ( .nested_obj.num >= 8289344.252614 ) ) ))' NoBench.json
