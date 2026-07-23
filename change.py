import os

# Complete mapping based on the provided dashboard and tree structure[cite: 1, 2, 3]
job_map = {
    "automationexercise-20260705-110951": "automationexercise-20260719-021146",
    "practiceexpandtesting-20260705-133835": "practiceexpandtesting-20260719-102919",
    "parabank-20260705-124134": "parabank-20260719-123255",
    "practicetestautomation-20260705-111329": "practicetestautomation-login-20260719-025830",
    "regn-20260705-220416": "regn-20260719-025915",
    "tokyoflash-20260708-120906": "tokyoflash-20260717-013219",
    "thisiswhyimbroke-20260706-171125": "thisiswhyimbroke-20260716-225803",
    "suckuk-20260611-002828": "suckuk-20260719-042944",
    "re-foundobjects-20260701-195314": "re-foundobjects-20260716-220531",
    "brianbutterfield-20260704-102548": "brianbutterfield-20260719-010138",
    "garagemca-20260705-202609": "garagemca-20260719-021232",
    "uebki-material-design-20260705-174636": "uebki-material-design-20260719-030015",
    "nasir-studio-20260703-231238": "nasir-studio-20260719-010224",
    "displace-agency-nextjs-20260701-194507": "displace-e-20260719-021202",
    "faunarobotics-20260630-195947": "faunarobotics-20260719-021217",
    "govuk-20260708-000105": "govuk-20260719-021247",
    "designsystem-20260629-150454": "acorncompliance-20260716-151359",
    "practicalaccessibility-20260705-183508": "practicalaccessibility-20260719-102904",
    "acorncompliance-20260630-213410": "acorncompliance-20260716-151359",
    "wyldessweetshop-20260703-165307": "wyldessweetshop-20260719-043129",
    "infermedica-20260703-230710": "infermedica-20260716-194605",
    "wai-demo-bad-before-20260708-014246": "wai-demo-bad-before-20260719-093520",
    "wai-demo-bad-after-20260708-022329": "wai-demo-bad-after-20260719-043114",
    "badhtml-20260706-115921": "badhtml-20260719-010123",
    "userinyerface-20260708-105802": "userinyerface-20260719-043044"
}

files_to_update = ['index.html', 'vintage.html']

def update_html_files():
    for file_name in files_to_update:
        if not os.path.exists(file_name):
            print(f"File {file_name} not found, skipping.")
            continue
            
        with open(file_name, 'r', encoding='utf-8') as f:
            content = f.read()
            
        for old_id, new_id in job_map.items():
            content = content.replace(f"/jobs/{old_id}", f"/jobs/{new_id}")
            content = content.replace(f">{old_id}<", f">{new_id}<")
            
        with open(file_name, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"Updated {file_name} with new job references.")

if __name__ == "__main__":
    update_html_files()