# Your Final Challenge!

### Last Run!
Yes! The Cyber Defense Portfolio will be your final major project in the cybersecurity specialization!

---

## Make Your Choice
You'll have 4 weeks to develop your portfolio project during this time, you can choose to work solo or in a team to create a fully functional cybersecurity solution.

Before writing a single line of code, you will need to research, define, and plan your project carefully.

---

## Why Is This Project Important?
- This project marks the culmination of your cybersecurity pathway.
- It will demonstrate your mastery of cybersecurity concepts.
- This project carries significant weight in your final evaluation.
- You can be as creative as you want  leverage tools, frameworks, or methodologies you explored during the course.
- Most importantly: Be proud of it! This portfolio will be your go-to project when showcasing your skills in interviews.

---

## Solo or Teamwork?
Good question!  
First, ask yourself: What do I want to build?

Do you want to focus on:  
- A penetration testing tool?  
- A threat monitoring dashboard?  
- A network defense automation system?  
- A malware analysis toolkit?  
- A web application firewall (WAF) or a honeypot system?  

- Working in a Team? Collaboration enables you to build a bigger project and enhances your soft skills (teamwork, communication, etc.).  
- Working Solo? This is completely fine! Just keep your scope manageable and aim for impactful features.

---

## Project Ideas and Steps

### CTI:

In this section, you will explore how cyber threat intelligence (CTI) is gathered, automated, and used to defend against cyber threats. The projects focus on using open-source tools, data analysis, detection frameworks, and automation techniques to simulate the work of threat intelligence analysts in real-world environments.

### C.1 Automated Threat Intelligence Collection Platform

This project guides you through building a platform that automates the collection of cyber threat intelligence data from public OSINT sources. Using OpenCTI and MISP along with custom Python scripts, you will create scheduled jobs and API integrations with services like VirusTotal and AlienVault to gather and normalize Indicators of Compromise (IOCs) such as IPs, domains, and hashes. The outcome is a scalable, documented system that allows for continuous, structured data ingestion and export for security teams.

* Objective: Develop an automated system that collects, normalizes, and stores threat intelligence from public sources.
* Tools: OpenCTI, MISP, Python (requests, sched), Cron, VirusTotal API, AlienVault OTX.
- Team Size: 3-4  
- Duration: 1 month  

- Timeline:

	* Week 1: Research reliable OSINT sources, configure OpenCTI or MISP on local/cloud instance.
	* Week 2: Write Python scripts to connect to 3+ APIs and extract IOCs (hashes, IPs, domains).
	* Week 3: Automate IOC pulling via cron jobs, and log errors/successes.
	* Week 4: Test functionality, remove duplicates, export IOC database, create documentation.
	
- Deliverables: Python script repo, API integration logs, exported data, architecture diagram, user guide.

### C.2 APTs & Detection Framework

In this project, you will learn how to detect tactics used by Advanced Persistent Threat (APT) groups using the MITRE ATT&CK framework. You will study attacker behaviors, develop Sigma rules based on those behaviors, and test them in SIEM environments like Splunk or Elastic. This hands-on experience teaches how to engineer detections aligned with structured threat intelligence and improve rule quality through iterative testing.

- Objective: Build and test detection rules against advanced persistent threats using MITRE ATT&CK.
- Tools: Sigma, Splunk/Elastic, MITRE ATT&CK Navigator.
- Team Size: 2-3  
- Duration: 1 month  

- Timeline:

	* Week 1: Select 2 APT groups (e.g., APT29, Lazarus), analyze TTPs.
	* Week 2: Write Sigma rules for detection (e.g., process injection, credential access).
	* Week 3: Deploy in Splunk/ELK, simulate TTPs with Sysmon/log test data.
	* Week 4: Evaluate effectiveness, iterate rule tuning.
	
- Deliverables: Sigma rules, test logs, ATT&CK matrix mapping, detection report.



### C.3 Darknet Analysis for Threat Detection

This project introduces you to darknet intelligence gathering. You will configure crawlers over the TOR network using tools like Scrapy and BeautifulSoup to collect information from underground forums and marketplaces. By extracting and indexing data in Elasticsearch, you will uncover threat trends related to malware, breaches, and exploits, culminating in an ethical analysis report. The project emphasizes privacy and responsible use of data.

- Objective: Crawl the darknet to discover emerging threats and generate actionable intelligence.
- Tools: TOR, Scrapy, BeautifulSoup, Elasticsearch, Kibana.
- Team Size: 3  
- Duration: 1 month  
- Timeline:

	* Week 1: Set up TOR proxy, configure crawler for onion services.
	* Week 2: Extract text from forums, marketplaces; apply keyword filtering.
	* Week 3: Index content to Elasticsearch, visualize trends.
	* Week 4: Document analysis results, review ethical concerns.

- Deliverables: Crawler code, indexed data sample, screenshots, ethical review checklist, findings r

### C.4 AI & Automation in CTI

You will explore the integration of machine learning into CTI workflows. This includes collecting labeled threat data, training classifiers like Random Forest or SVM, and integrating models into a live IOC processing engine. The project also covers evaluation metrics, model limitations, and the challenge of false positives. This experience prepares you to leverage AI responsibly within threat intelligence systems.

- Objective: Automate threat classification using machine learning on collected indicators.
- Tools: Scikit-learn, Pandas, Jupyter, TensorFlow (optional), MISP export.
- Team Size: 4-5  
- Duration: 1 month  
- Timeline:
	* Week 1: Gather and preprocess labeled threat data (phishing, benign, malware domains).
	* Week 2: Train machine learning models (Random Forest, SVM, etc.).
	* Week 3: Build script that classifies new IOCs based on trained models.
	* Week 4: Test model, evaluate false-positive rate, tune features.

- Deliverables: Jupyter notebooks, trained models, test results, classification engine.

### C.5 OSINT IOC Collector (No API Keys)

This project builds a pipeline to fetch, normalize, deduplicate, and export IOCs from fully public feeds (no sign-ups).

- Objective: Collect and normalize IOCs from public feeds for downstream use.
- Tools: Python, requests, SQLite/CSV, sched/Cron or Task Scheduler; Feodo Tracker, URLhaus, MalwareBazaar, Spamhaus DROP.
- Team Size: 2-3
- Duration: 1 month
- Timeline:
	* Week 1: Select feeds, define schema, set up storage.
	* Week 2: Implement parsers and normalizers for IPs/domains/hashes.
	* Week 3: Deduplication, basic scoring, logging, scheduling.
	* Week 4: Exporters (CSV/JSON), docs, sample dataset.

- Deliverables: Scripts, normalized dataset, feed map, user guide.


****
### Blue Team:

The Blue Team section trains you in defensive cybersecurity techniques and systems. Projects include building detection platforms, setting up analysis environments, and simulating attack scenarios to identify, respond to, and document real-world threats using industry-standard tools.

### B.1 Virtual SOC Setup

This project involves building a fully functional virtual Security Operations Center (SOC). You will install and configure tools like ELK Stack, Wazuh, and Splunk to collect and analyze security logs. Through simulated attacks (e.g., brute force, malware infection), the system will generate alerts that analysts can triage. You will document the SOC workflow, setup procedures, and create dashboards that reflect real-world analyst tasks.

- Objective: Deploy a complete Security Operations Center (SOC) environment for centralized monitoring.
- Tools: ELK Stack, Wazuh, Sysmon, Splunk, Graylog.
- Team Size: 4-5  
- Duration: 1 month  
Timeline:
	- Week 1: Install ELK and Wazuh, deploy agents to endpoints.
	- Week 2: Configure parsing, enrich logs with geo-IP/threat info.
	- Week 3: Simulate incidents (port scan, malware execution) to trigger alerts.
	- Week 4: Write analyst playbooks and document SOC operations.

- Deliverables: Dashboards, alert workflows, simulation scripts, SOC procedure guide.



### B.2 Malware Analysis & Custom Sandbox

You will set up a malware analysis environment using Cuckoo Sandbox alongside analysis tools like IDA, PEStudio, and Wireshark. You will analyze malware samples to observe behavior, network activity, and persistence mechanisms. By generating behavioral reports and extracting IOCs, you gain insight into malware functionality and detection opportunities, forming the basis for further defense mechanisms.

- Objective: Detect, analyze, and classify malware in a contained environment.
- Tools: Cuckoo Sandbox, IDA Free, Wireshark, PEStudio, Windows VM.
- Team Size: 3  
- Duration: 1 month  
- Timeline:
	* Week 1: Set up sandbox (Windows guest, Linux host), test submissions.
	* Week 2: Submit multiple malware types, capture behavior reports.
	* Week 3: Analyze file drops, registry edits, network activity.
	* Week 4: Summarize findings, update sandbox to improve stability.

- Deliverables: Sample reports, behavior summaries, malware IOCs.

### B.3 Honeypot for Cyberattack Monitoring

This project teaches you how to deploy honeypots like Cowrie and Honeyd to simulate vulnerable systems. These honeypots will attract real-world attackers, and you will collect and analyze attack data to understand common techniques, tools, and origins. Deliverables include threat trend reports, log analysis, and recommendations for improving system defenses based on observed behavior.

- Objective: Deploy honeypots to study attacker methods in the wild.
- Tools: Cowrie (SSH), Honeyd, ELK, Suricata.
- Team Size: 3  
- Duration: 1 month  
- Timeline:
	* Week 1: Deploy Cowrie on public VPS, configure with fake credentials.
	* Week 2: Capture attacker commands, upload behavior.
	* Week 3: Analyze patterns, fingerprint attacks (IP, country, tools used).
	* Week 4: Report results, suggest network hardening.

- Deliverables: Honeypot logs, attack timeline, network analysis report.

### B.4 Threat Hunting Using YARA & Sigma

Here, you will proactively search for threats using custom YARA and Sigma rules. You’ll develop rules for detecting malware in files, memory dumps, and log events. Testing against simulated attack scenarios will help refine detection logic, reduce false positives, and sharpen analytical skills through hands-on threat hunting exercises.

- Objective: Identify malware and TTPs using custom rules.
- Tools: YARA, Sigma, Volatility, Sysmon.
- Team Size: 3-4  
- Duration: 1 month  
- Timeline:
	* Week 1: Create YARA rules to detect specific malware types.
	* Week 2: Test on memory dumps and file systems.
	* Week 3: Develop Sigma rules for correlated endpoint detection.
	* Week 4: Automate scanning, review detection rate

- Deliverables: Rule packs, test reports, memory snapshots.

### B.5 Local Mini‑SIEM (Wazuh + OpenSearch)

Stand up a home SOC stack with free components, ingest logs, and build detections.

- Objective: Centralize logs and trigger alerts without any paid services.
- Tools: Wazuh OSS, OpenSearch, Filebeat/Winlogbeat, Sysmon.
- Team Size: 3-4
- Duration: 1 month
- Timeline:
	* Week 1: Install stack, deploy agents, enable Sysmon.
	* Week 2: Parsing, ECS-style normalization, geo-IP enrichment.
	* Week 3: Simulate incidents (port scan, brute force, LOLBins), alerts.
	* Week 4: Dashboards, playbooks, ops guide.

- Deliverables: Dashboards, alert rules, lab scripts, procedure guide.

****
### Red Team:

This section immerses you in offensive cybersecurity tactics. Projects are designed to simulate real-world attacks in a controlled environment. You will build tools, exploit systems, and test defenses—while following ethical guidelines—to understand how adversaries operate and how defenders can counter them.

### R.1 Wireless Penetration Testing Tool

In this project, you will simulate wireless attacks to assess the security of Wi-Fi networks. Using tools like Aircrack-ng and Scapy, you’ll perform deauthentication attacks, capture WPA/WPA2 handshakes, and analyze traffic. The project includes creating a toolkit for automating these tests and reporting vulnerabilities and suggested security improvements.

- Objective: Simulate wireless attacks and assess wireless security.
- Tools: Aircrack-ng, Bettercap, Python, Scapy.
- Team Size: 2-3  
- Duration: 1 month  
-Timeline:
	- Week 1: Enable monitor mode, identify local SSIDs.
	- Week 2: Create modules for deauthentication and handshake capture.
	- Week 3: Crack handshakes using wordlists, implement DoS.
	- Week 4: Document vulnerabilities, suggest mitigations.

- Deliverables: Toolset scripts, demo videos, analysis log.


### R.2 Phishing Simulation Platform

This social engineering-focused project tasks you with building and running phishing simulations using GoPhish. You will create realistic email campaigns, simulate credential harvesting, and monitor user interaction. The project concludes with a training-oriented analysis report and promotes ethical execution and user awareness as key defense strategies.

- Objective: Test user awareness through simulated phishing campaigns.
- Tools: GoPhish, Flask, Mailtrap, SendGrid.
- Team Size: 3-4  
- Duration: 1 month  
- Timeline:
	- Week 1: Install GoPhish, configure SMTP.
	- Week 2: Create phishing templates (credential harvest, fake update).
	- Week 3: Launch internal campaign, record clicks/data input.
	- Week 4: Summarize campaign, suggest awareness training.

- Deliverables: Email templates, logs, response stats, training document.

### R.3 Bypassing EDR Systems

You will investigate how to evade endpoint detection and response (EDR) solutions using advanced techniques. You’ll create obfuscated malware using methods like DLL injection, packers, and shellcode encryption. Testing these against Windows Defender and other solutions will teach you the challenges of defensive design and how attackers avoid detection.

- Objective: Study EDR evasion tactics by modifying payloads.
- Tools: Metasploit, Cobalt Strike, PowerShell, C/C++, Obfuscator-LLVM.
- Team Size: 2-3  
- Duration: 1 month  
- Timeline:
	- Week 1: Understand EDR mechanics, common bypasses .
	- Week 2: Build custom payloads with obfuscation.
	- Week 3: Test on Defender and CrowdStrike VMs.
	- Week 4: Record bypass results, propose blue team detections.
- Deliverables: PoC binaries, evasion success logs, defensive recommendations.



### R.4 C2 Framework Development

This project explores how adversaries create and operate command and control (C2) frameworks. You will design a lightweight C2 system using Flask and WebSockets with encrypted channels, remote shells, and persistence mechanisms. The project reinforces secure communication practices, stealth operations, and blue team countermeasures.

- Objective: Build a stealthy Command & Control platform.
- Tools: Flask, WebSockets, AES encryption, Python sockets.
- Team Size: 2-3  
- Duration: 1 month  
- Timeline:
	- Week 1: Design architecture with server, agent, encryption.
	- Week 2: Implement secure channel using HTTPS or WebSocket.
	- Week 3: Add persistence, command execution features.
	- Week 4: Add stealth, evade detection, test communication.

- Deliverables: C2 framework codebase, deployment guide, threat model.



### R.5 Post-Exploitation & Data Exfiltration

Focused on advanced attack stages, this project teaches you how attackers maintain access and extract sensitive data. Using techniques like DNS tunneling, HTTP-based exfiltration, and stealth movement, you will simulate attacks in a test environment and propose defensive strategies. This helps reinforce detection, response, and policy-making skills.

- Objective: Simulate advanced persistence and data exfil techniques.
- Tools: PowerShell, Netcat, DNSCat2, Python.
- Team Size: 3  
- Duration: 1 month  
- Timeline:
	- Week 1: Identify types of data to extract (credentials, docs).
	- Week 2: Script stealthy exfil via DNS/HTTP channels.
	- Week 3: Bypass DLP/firewall restrictions.
	- Week 4: Document findings, propose detection methods.

- Deliverables: Exfiltration script samples, data logs, detection bypass checklist.

### Purple Team:
This section focuses on the integration of offensive and defensive cybersecurity practices. Purple Team projects aim to bridge the gap between Red Team (attack) and Blue Team (defense) activities by simulating attacks, analyzing responses, and improving detection and mitigation strategies. You will collaborate to test defenses, refine alerts, and strengthen overall security posture, all while following ethical guidelines and documenting lessons learned.

### P.1 Adversary Emulation Lab
Emulate attacks and validate detections end-to-end, all free.


- Objective: Link attack playbooks to detections and improvements.
- Tools: MITRE Caldera, Atomic Red Team, Wazuh/ELK, Sysmon.
- Team Size: 3
- Duration: 1 month
- Timeline:
	- Week 1: Lab + telemetry.
	- Week 2: Emulation playbooks and runbooks.
	- Week 3: Detection rules, coverage mapping.
	- Week 4: After‑action report and tuning.

- Deliverables: Playbooks, detections, AAR template.

---

## Final Tip
Be proud of your project  this is your cybersecurity journey showcased for the world to see. Good luck!