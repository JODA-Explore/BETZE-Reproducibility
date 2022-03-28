
import sys
from typing import Dict, List
import re
import os
import numpy as np


dirs = sys.argv[1:]
if len(sys.argv) < 2:
    dirs = []


class RunTime:
    def __init__(self, system: str,  overall: float, queries: List[float] = [], imports: List[float] = []) -> None:
        self.system = system
        self.overall = overall
        self.queries = queries
        self.imports = imports
        self.querysum = 0.0
        self.importsum = 0.0
        pass

    def average(runtimes):
        if len(runtimes) == 0:
            return None
        count = 0
        overallSum = 0.0
        queriesSum = []
        importsSum = []
        for rt in runtimes:
            count += 1
            overallSum += rt.getWallclock()
            for i, q in enumerate(rt.queries):
                if len(queriesSum) <= i:
                    queriesSum.append(q)
                else:
                    queriesSum[i] += q
            for i, q in enumerate(rt.imports):
                if len(importsSum) <= i:
                    importsSum.append(q)
                else:
                    importsSum[i] += q
        for i, q in enumerate(queriesSum):
            queriesSum[i] = q/count
        for i, q in enumerate(importsSum):
            importsSum[i] = q/count
        return RunTime(runtimes[0].system, overallSum / count, queriesSum, importsSum)

    def percentile(runtimes, percentile):
        if len(runtimes) == 0:
            return None
        overall: List[float] = []
        queries: List[List[float]] = []
        imports: List[List[float]] = []
        querysum: List[float] = []
        importsum: List[float] = []
        for rt in runtimes:
            overall.append(rt.getWallclock())
            querysum.append(rt.getQueryRuntimes())
            importsum.append(rt.getImportRuntimes())
            for i, q in enumerate(rt.queries):
                if len(queries) <= i:
                    queries.append([q])
                else:
                    queries[i].append(q)
            for i, q in enumerate(rt.imports):
                if len(imports) <= i:
                    imports.append([q])
                else:
                    imports[i].append(q)

        o = 0
        if len(overall) > 0:
            o = np.percentile(overall, percentile)
        q = []
        if len(queries) > 0:
            q =np.percentile(queries,percentile,axis=1)
        i = []
        if len(imports) > 0:
            i = np.percentile(imports,percentile,axis=1)
        ext = RunTime(runtimes[0].system, o, q , i)
        ext.querysum = np.percentile(querysum,percentile)
        ext.importsum = np.percentile(importsum,percentile)
        return ext

    def getWallclock(self) -> float:
        return self.overall

    def getCombined(self) -> float:
        return sum(self.queries) + sum(self.imports)

    def getQueryRuntimes(self) -> float:
        if self.querysum != 0:
            return self.querysum
        if len(self.queries) == 0:
            return 0.0
        return sum(self.queries)

    def getImportRuntimes(self) -> float:
        if self.importsum != 0:
            return self.importsum
        if len(self.imports) == 0:
            return 0.0
        return sum(self.imports)

    def __str__(self) -> str:
        out = ""
        if self.overall != 0:
            out = "{}\t{:.2f}".format(self.system, self.overall)

        query = self.getQueryRuntimes()
        if query != 0:
            if len(out) > 0:
                out += "\n"
            out += "{} w/o import\t{:.2f}".format(self.system, query)

        impor = self.getImportRuntimes()
        if impor != 0:
            if len(out) > 0:
                out += "\n"
            out += "{} import\t{:.2f}".format(self.system, impor)

        return out


def main():
    # Dict[class/directory, Dict[system, RunTime]]
    all_runtimes: Dict[str, Dict[str, RunTime]] = {}
    for dir in dirs:
        #Dict[system, RunTime]
        final_runtimes: Dict[str, RunTime] = {}

        if os.path.isdir(os.path.join(dir, "1")):  # Multiple results in dir
            runtimes: Dict[str, List[RunTime]] = {}
            i = 0
            while True:
                i += 1
                d = os.path.join(dir, str(i))
                if os.path.isdir(d):
                    run_runtimes = analyze_dir(d)
                    for (system, rt) in run_runtimes.items():
                        runtime_list = runtimes.get(system, [])
                        runtime_list.append(rt)
                        runtimes[system] = runtime_list
                else:
                    break
            for (system, runtime_list) in runtimes.items():
                final_runtimes[system] = RunTime.average(runtime_list)
        else:
            final_runtimes = analyze_dir(dir)
        all_runtimes[os.path.basename(dir)] = final_runtimes

    systems = get_systems(all_runtimes.values())

    lines: Dict[str, List[float]] = {}
    for entry in get_entries(all_runtimes.values()):
        lines[entry] = []

    #### Aggregate overall runtimes per system ####
    print("\t".join(["System"]+list(all_runtimes.keys())))
    for system in systems:
      for (dir, runtimes) in all_runtimes.items():
        rt = runtimes.get(system)
        if rt is None:
          lines[system].append(0.0)
          lines[system+" w/o import"].append(0.0)
          lines[system+" import"].append(0.0)
        else:
          lines[system].append(rt.getWallclock())
          lines[system+" w/o import"].append(rt.getQueryRuntimes())
          lines[system+" import"].append(rt.getImportRuntimes())
    for (entry, line) in lines.items():
      print("\t".join([entry]+["{:.2f}".format(x) for x in line]))

    #### Show aggregated values of each query per system ####
    # for (dir, runtimes) in all_runtimes.items():
    #     print("==="+dir+"===")
    #     for system in systems:
    #         rt = runtimes.get(system)
    #         if rt is not None:
    #             lines[system] = rt.queries
    #     for (entry, line) in lines.items():
    #         print("\t".join([entry]+["{:.2f}".format(x) for x in line]))
    #     lines = {}


# Get all unique keys of all dictionaries in the given list
def get_systems(list_of_dicts: List[Dict[str, RunTime]]) -> List[str]:
    keys = []
    for d in list_of_dicts:
        for k in d.keys():
            if k not in keys:
                keys.append(k)
    return keys


def get_entries(list_of_dicts: List[Dict[str, RunTime]]) -> List[str]:
    keys = []
    for d in list_of_dicts:
        for k in d.keys():
            if k not in keys:
                keys.append(k)
                keys.append(k + " w/o import")
                keys.append(k + " import")
    return keys


def analyze_dir(dir: str) -> Dict[str, RunTime]:
    runtimes: Dict[str, RunTime] = {}

    jodalog = os.path.join(dir, "joda.log")
    if os.path.isfile(jodalog):
        file = open(jodalog, mode='r')
        logcontent = file.read()
        file.close()
        rt = analyzeJodaLog(logcontent)
        runtimes[rt.system] = rt

    mongoLog = os.path.join(dir, "mongo.log")
    if os.path.isfile(mongoLog):
        file = open(mongoLog, mode='r')
        logcontent = file.read()
        file.close()
        rt = analyzeMongoLog(logcontent)
        runtimes[rt.system] = rt

    psqlLog = os.path.join(dir, "psql.log")
    if os.path.isfile(psqlLog):
        file = open(psqlLog, mode='r')
        logcontent = file.read()
        file.close()
        rt = analyzePSQLLog(logcontent)
        runtimes[rt.system] = rt

    runLog = os.path.join(dir, "run.log")
    if os.path.isfile(runLog):
        file = open(runLog, mode='r')
        logcontent = file.read()
        file.close()
        rt = analyzeRunLog(logcontent, runtimes)

    return runtimes


def analyzeJodaLog(log: str) -> RunTime:
    imports = []
    queries = []
    stats = re.findall(
        '(?<=-----STATISTICS------)(.*?)(?=----------------)', log, flags=re.S)
    for stat in stats:
        isImport = len(re.findall('FROM FILE', stat, flags=re.S)) > 0
        time_str = re.findall(
            '(?<="Query": )(\d+\.\d+?)\n', stat, flags=re.S)[0]
        if isImport:
            imports.append(float(time_str))
        else:
            queries.append(float(time_str))
    return RunTime("JODA", 0, queries, imports)


def analyzeMongoLog(log: str) -> RunTime:
    queries = []
    r = re.compile(
        '"appName":"MongoDB Shell","command":.*"query":.*"durationMillis":(?P<time>\d+)')
    for stat in re.finditer(r, log):
        matches = stat.groupdict()
        time_str = matches["time"]
        queries.append(float(time_str)/1000.0)
    return RunTime("Mongo", 0, queries)


def analyzePSQLLog(log: str) -> RunTime:
    queries = []
    imports = []
    r = re.compile(
        'LOG:  statement:(?P<query>.*?;).*?LOG:  duration: (?P<time>\d+\.?\d*)', flags=re.S)
    for stat in re.finditer(r, log):
        matches = stat.groupdict()
        query_str = matches["query"]
        if query_str.count("pg_database") > 0 or query_str.count("CREATE") > 0 or query_str.count("nonexistingsopostgresstops") > 0:
            continue
        time_str = matches["time"]
        isImport = query_str.count("COPY") > 0
        if isImport:
            imports.append(float(time_str)/1000.0)
        else:
            queries.append(float(time_str)/1000.0)

    return RunTime("PostgreSQL", 0, queries, imports)


def analyzeRunLog(log: str, runtimes: Dict[str, RunTime]) -> None:

    timeLog = re.findall(
        "\=\=\= Results \=\=\=(?P<log>.*?)(?:\=\=\= AGG Results \=\=\=|\Z)", log, flags=re.S)[0]

    r = re.compile(
        '\= (?P<system>.*?) \=\nOverall: (?P<time>\d+\.?\d*)?', flags=re.S)
    for m in r.finditer(timeLog):
        matches = m.groupdict()
        rt = runtimes.get(matches["system"], RunTime(matches["system"], 0))
        if matches["time"] is not None and len(matches["time"]) > 0:
            rt.overall = float(matches["time"])
            runtimes[matches["system"]] = rt


if __name__ == "__main__":
    main()
