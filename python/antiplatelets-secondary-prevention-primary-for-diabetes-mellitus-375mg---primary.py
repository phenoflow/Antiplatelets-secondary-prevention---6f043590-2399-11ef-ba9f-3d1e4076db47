# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0209000C0AAASAS","system":"bnf"},{"code":"0209000A0AAAKAK","system":"bnf"},{"code":"0209000A0BQAAAB","system":"bnf"},{"code":"0209000Y0BCAAAA","system":"bnf"},{"code":"0209000Y0BBAAAA","system":"bnf"},{"code":"0209000C0AAAMAM","system":"bnf"},{"code":"0209000L0AAAIAI","system":"bnf"},{"code":"0209000A0BRAAAB","system":"bnf"},{"code":"0209000A0BKAAAK","system":"bnf"},{"code":"0209000A0AACCCC","system":"bnf"},{"code":"0209000A0BPAAAK","system":"bnf"},{"code":"0209000A0AAA7A7","system":"bnf"},{"code":"0209000C0AAACAC","system":"bnf"},{"code":"0209000A0AABGBG","system":"bnf"},{"code":"0209000A0AAABAB","system":"bnf"},{"code":"0209000C0BDAAAA","system":"bnf"},{"code":"0209000C0AAAAAA","system":"bnf"},{"code":"0209000A0BIAAAK","system":"bnf"},{"code":"0209000A0BLAAAK","system":"bnf"},{"code":"0209000C0AAAKAK","system":"bnf"},{"code":"0209000A0BMAAAK","system":"bnf"},{"code":"0209000A0AABIBI","system":"bnf"},{"code":"0209000A0AAAJAJ","system":"bnf"},{"code":"0209000A0BNAAAB","system":"bnf"},{"code":"0209000C0AAAJAJ","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antiplatelets-secondary-prevention-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-375mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-375mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-375mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
