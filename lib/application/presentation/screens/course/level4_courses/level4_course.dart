// OTHM Level 4 Diploma Data Model
class OTHMDiploma {
  final String id;
  final String image;
  final String courseName;
  final String level;
  final String description;
  final String objective;
  final int totalCredits;
  final int totalQualificationTime;
  final int guidedLearningHours;
  final int mandatoryUnits;
  final String deliveryPeriod;
  final List<String> entryRequirements;
  final List<Unit> units;
  final List<String> careerOpportunities;
  final List<String> progressionPathways;
  final List<String> keySkills;
  final AssessmentMethod assessmentMethod;

  OTHMDiploma({
    required this.image,
    required this.id,
    required this.courseName,
    required this.level,
    required this.description,
    required this.objective,
    required this.totalCredits,
    required this.totalQualificationTime,
    required this.guidedLearningHours,
    required this.mandatoryUnits,
    required this.deliveryPeriod,
    required this.entryRequirements,
    required this.units,
    required this.careerOpportunities,
    required this.progressionPathways,
    required this.keySkills,
    required this.assessmentMethod,
  });

  factory OTHMDiploma.fromJson(Map<String, dynamic> json) {
    return OTHMDiploma(
      image: json['image'],
      id: json['id'],
      courseName: json['courseName'],
      level: json['level'],
      description: json['description'],
      objective: json['objective'],
      totalCredits: json['totalCredits'],
      totalQualificationTime: json['totalQualificationTime'],
      guidedLearningHours: json['guidedLearningHours'],
      mandatoryUnits: json['mandatoryUnits'],
      deliveryPeriod: json['deliveryPeriod'],
      entryRequirements: List<String>.from(json['entryRequirements']),
      units:
          (json['units'] as List).map((unit) => Unit.fromJson(unit)).toList(),
      careerOpportunities: List<String>.from(json['careerOpportunities']),
      progressionPathways: List<String>.from(json['progressionPathways']),
      keySkills: List<String>.from(json['keySkills']),
      assessmentMethod: AssessmentMethod.fromJson(json['assessmentMethod']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'id': id,
      'courseName': courseName,
      'level': level,
      'description': description,
      'objective': objective,
      'totalCredits': totalCredits,
      'totalQualificationTime': totalQualificationTime,
      'guidedLearningHours': guidedLearningHours,
      'mandatoryUnits': mandatoryUnits,
      'deliveryPeriod': deliveryPeriod,
      'entryRequirements': entryRequirements,
      'units': units.map((unit) => unit.toJson()).toList(),
      'careerOpportunities': careerOpportunities,
      'progressionPathways': progressionPathways,
      'keySkills': keySkills,
      'assessmentMethod': assessmentMethod.toJson(),
    };
  }
}

class Unit {
  final String unitId;
  final String unitName;
  final int credits;
  final String description;
  final List<String> learningOutcomes;
  final int guidedLearningHours;

  Unit({
    required this.unitId,
    required this.unitName,
    required this.credits,
    required this.description,
    required this.learningOutcomes,
    required this.guidedLearningHours,
  });

  factory Unit.fromJson(Map<String, dynamic> json) {
    return Unit(
      unitId: json['unitId'],
      unitName: json['unitName'],
      credits: json['credits'],
      description: json['description'],
      learningOutcomes: List<String>.from(json['learningOutcomes']),
      guidedLearningHours: json['guidedLearningHours'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'unitId': unitId,
      'unitName': unitName,
      'credits': credits,
      'description': description,
      'learningOutcomes': learningOutcomes,
      'guidedLearningHours': guidedLearningHours,
    };
  }
}

class AssessmentMethod {
  final String type;
  final String description;
  final List<String> methods;

  AssessmentMethod({
    required this.type,
    required this.description,
    required this.methods,
  });

  factory AssessmentMethod.fromJson(Map<String, dynamic> json) {
    return AssessmentMethod(
      type: json['type'],
      description: json['description'],
      methods: List<String>.from(json['methods']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'description': description,
      'methods': methods,
    };
  }
}

// Sample JSON data for all OTHM Level 4 Diplomas
final List<Map<String, dynamic>> othmLevel4DiplomasJson = [
  {
    'image': "assets/images/level4BM.jpeg",
    "id": "othm_l4_business_management",
    "courseName": "OTHM Level 4 Diploma in Business Management",
    "level": "Level 4",
    "description":
        "This qualification provides learners with knowledge and understanding of business management principles, strategic planning, and organizational behavior. It develops foundational skills for effective management in various business contexts.",
    "objective":
        "To develop learners' knowledge and understanding of business management principles and build foundational managerial skills for progression to higher education or employment in management roles.",
    "totalCredits": 120,
    "totalQualificationTime": 1200,
    "guidedLearningHours": 600,
    "mandatoryUnits": 6,
    "deliveryPeriod": "One academic year",
    "entryRequirements": [
      "Learners must be 18 years or older at the beginning of the course",
      "Level 3 qualification or equivalent",
      "GCSE Mathematics and English at grade C or above (or equivalent)",
      "IELTS 5.5 or equivalent for international students"
    ],
    "units": [
      {
        "unitId": "BM001",
        "unitName": "Business Environment",
        "credits": 20,
        "description":
            "Understanding the business environment, market structures, and economic factors affecting business operations.",
        "learningOutcomes": [
          "Analyze the impact of economic environment on business operations",
          "Evaluate market structures and competitive forces",
          "Assess the role of government in business regulation"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "BM002",
        "unitName": "Managing People and Performance",
        "credits": 20,
        "description":
            "Developing skills in human resource management, team leadership, and performance management.",
        "learningOutcomes": [
          "Understand principles of human resource management",
          "Develop leadership and team management skills",
          "Implement performance management systems"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "BM003",
        "unitName": "Financial Management",
        "credits": 20,
        "description":
            "Understanding financial principles, budgeting, and financial decision-making in business contexts.",
        "learningOutcomes": [
          "Analyze financial statements and reports",
          "Develop budgeting and forecasting skills",
          "Understand investment and financing decisions"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "BM004",
        "unitName": "Marketing Principles",
        "credits": 20,
        "description":
            "Understanding marketing concepts, consumer behavior, and marketing strategies.",
        "learningOutcomes": [
          "Understand marketing mix and consumer behavior",
          "Develop marketing strategies and campaigns",
          "Analyze market research and segmentation"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "BM005",
        "unitName": "Operations Management",
        "credits": 20,
        "description":
            "Understanding operational processes, supply chain management, and quality control.",
        "learningOutcomes": [
          "Understand operations planning and control",
          "Analyze supply chain management principles",
          "Implement quality management systems"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "BM006",
        "unitName": "Business Research Methods",
        "credits": 20,
        "description":
            "Developing research skills and analytical thinking for business problem-solving.",
        "learningOutcomes": [
          "Understand research methodologies and techniques",
          "Conduct primary and secondary research",
          "Analyze and present research findings"
        ],
        "guidedLearningHours": 100
      }
    ],
    "careerOpportunities": [
      "Business Manager",
      "Operations Manager",
      "Project Manager",
      "Marketing Coordinator",
      "Human Resources Assistant",
      "Business Analyst",
      "Team Leader",
      "Administrative Manager"
    ],
    "progressionPathways": [
      "OTHM Level 5 Diploma in Business Management",
      "University degree in Business Management",
      "MBA programs",
      "Professional certifications (ACCA, CIMA, etc.)"
    ],
    "keySkills": [
      "Strategic thinking and planning",
      "Leadership and team management",
      "Financial analysis and budgeting",
      "Marketing and sales",
      "Operations management",
      "Research and analytical skills",
      "Communication and presentation",
      "Problem-solving and decision-making"
    ],
    "assessmentMethod": {
      "type": "Coursework",
      "description":
          "Assessment is through written assignments and case studies",
      "methods": [
        "Written assignments (2500-3000 words per unit)",
        "Case study analysis",
        "Business reports",
        "Presentations",
        "Research projects"
      ]
    }
  },
  {
    'image': "assets/images/level4IT.jpeg",
    "id": "othm_l4_information_technology",
    "courseName": "OTHM Level 4 Diploma in Information Technology",
    "level": "Level 4",
    "description":
        "This qualification focuses on developing technical skills and knowledge in information technology, covering areas such as cyber security, computer programming, web and mobile applications, and network technology.",
    "objective":
        "To provide learners with comprehensive knowledge and practical skills in information technology, preparing them for careers in IT or further study in computing and technology fields.",
    "totalCredits": 120,
    "totalQualificationTime": 1200,
    "guidedLearningHours": 600,
    "mandatoryUnits": 6,
    "deliveryPeriod": "One academic year",
    "entryRequirements": [
      "Learners must be 18 years or older at the beginning of the course",
      "Level 3 qualification or equivalent",
      "GCSE Mathematics and English at grade C or above (or equivalent)",
      "Basic computer literacy",
      "IELTS 5.5 or equivalent for international students"
    ],
    "units": [
      {
        "unitId": "IT001",
        "unitName": "Computer Programming",
        "credits": 20,
        "description":
            "Introduction to programming languages, software development principles, and coding best practices.",
        "learningOutcomes": [
          "Understand programming fundamentals and syntax",
          "Develop software applications using programming languages",
          "Apply debugging and testing techniques"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "IT002",
        "unitName": "Web and Mobile Applications",
        "credits": 20,
        "description":
            "Designing and developing web applications and mobile apps using modern technologies.",
        "learningOutcomes": [
          "Design responsive web interfaces",
          "Develop mobile applications for different platforms",
          "Implement user experience design principles"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "IT003",
        "unitName": "Computer and Network Technology",
        "credits": 20,
        "description":
            "Understanding computer hardware, networking principles, and network infrastructure.",
        "learningOutcomes": [
          "Understand computer hardware components and architecture",
          "Configure and manage network systems",
          "Troubleshoot network connectivity issues"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "IT004",
        "unitName": "Cyber Security",
        "credits": 20,
        "description":
            "Principles of information security, threat assessment, and security management.",
        "learningOutcomes": [
          "Identify security threats and vulnerabilities",
          "Implement security measures and protocols",
          "Conduct security risk assessments"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "IT005",
        "unitName": "Systems Analysis and Design",
        "credits": 20,
        "description":
            "Analyzing business requirements and designing information systems solutions.",
        "learningOutcomes": [
          "Analyze business requirements and processes",
          "Design information systems architectures",
          "Create system documentation and specifications"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "IT006",
        "unitName": "Managing Digital Information",
        "credits": 20,
        "description":
            "Database management, data analysis, and information governance principles.",
        "learningOutcomes": [
          "Design and implement database systems",
          "Analyze and interpret data",
          "Understand data privacy and governance"
        ],
        "guidedLearningHours": 100
      }
    ],
    "careerOpportunities": [
      "Software Developer",
      "Web Developer",
      "Network Administrator",
      "Cybersecurity Analyst",
      "Systems Analyst",
      "Database Administrator",
      "IT Support Specialist",
      "Mobile App Developer",
      "Technical Consultant"
    ],
    "progressionPathways": [
      "OTHM Level 5 Diploma in Information Technology",
      "University degree in Computer Science",
      "Software Engineering programs",
      "Professional certifications (CompTIA, Cisco, Microsoft, etc.)"
    ],
    "keySkills": [
      "Programming and software development",
      "Web and mobile application development",
      "Network configuration and management",
      "Cybersecurity and risk management",
      "Database design and management",
      "Systems analysis and design",
      "Technical troubleshooting",
      "Project management"
    ],
    "assessmentMethod": {
      "type": "Coursework",
      "description":
          "Assessment through practical projects and written assignments",
      "methods": [
        "Programming assignments",
        "Web development projects",
        "Network configuration tasks",
        "Security assessment reports",
        "System design documentation",
        "Database implementation projects"
      ]
    }
  },
  {
    'image': "assets/images/level4Accounting.jpeg",
    "id": "othm_l4_accounting_business",
    "courseName": "OTHM Level 4 Diploma in Accounting and Business",
    "level": "Level 4",
    "description":
        "This qualification combines accounting principles with business management skills, providing learners with knowledge of financial accounting, management accounting, and business operations.",
    "objective":
        "To develop learners' understanding of accounting principles and business management, preparing them for roles in finance, accounting, and business administration.",
    "totalCredits": 120,
    "totalQualificationTime": 1200,
    "guidedLearningHours": 600,
    "mandatoryUnits": 6,
    "deliveryPeriod": "One academic year",
    "entryRequirements": [
      "Learners must be 18 years or older at the beginning of the course",
      "Level 3 qualification or equivalent",
      "GCSE Mathematics and English at grade C or above (or equivalent)",
      "Strong numerical skills",
      "IELTS 5.5 or equivalent for international students"
    ],
    "units": [
      {
        "unitId": "AB001",
        "unitName": "Financial Accounting",
        "credits": 20,
        "description":
            "Principles of financial accounting, preparing financial statements, and accounting standards.",
        "learningOutcomes": [
          "Understand double-entry bookkeeping principles",
          "Prepare financial statements and reports",
          "Apply accounting standards and regulations"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "AB002",
        "unitName": "Management Accounting",
        "credits": 20,
        "description":
            "Cost accounting, budgeting, and management reporting for decision-making.",
        "learningOutcomes": [
          "Understand cost accounting principles",
          "Prepare budgets and forecasts",
          "Analyze financial performance for management"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "AB003",
        "unitName": "Business Law and Ethics",
        "credits": 20,
        "description":
            "Legal framework for business operations and ethical considerations in business.",
        "learningOutcomes": [
          "Understand business law and regulations",
          "Apply ethical principles in business decisions",
          "Understand contract law and company law"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "AB004",
        "unitName": "Business Finance",
        "credits": 20,
        "description":
            "Financial management, investment analysis, and corporate finance principles.",
        "learningOutcomes": [
          "Understand financial markets and instruments",
          "Analyze investment opportunities",
          "Apply capital budgeting techniques"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "AB005",
        "unitName": "Business Statistics",
        "credits": 20,
        "description":
            "Statistical methods for business analysis and decision-making.",
        "learningOutcomes": [
          "Apply statistical techniques to business problems",
          "Interpret statistical data and results",
          "Use statistical software for analysis"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "AB006",
        "unitName": "Auditing and Assurance",
        "credits": 20,
        "description":
            "Principles of auditing, internal controls, and assurance services.",
        "learningOutcomes": [
          "Understand auditing principles and procedures",
          "Evaluate internal control systems",
          "Prepare audit reports and recommendations"
        ],
        "guidedLearningHours": 100
      }
    ],
    "careerOpportunities": [
      "Accounts Assistant",
      "Bookkeeper",
      "Financial Analyst",
      "Management Accountant",
      "Audit Assistant",
      "Tax Advisor",
      "Business Analyst",
      "Finance Officer",
      "Credit Controller"
    ],
    "progressionPathways": [
      "OTHM Level 5 Diploma in Accounting and Business",
      "University degree in Accounting or Finance",
      "Professional accounting qualifications (ACCA, CIMA, ACA)",
      "Chartered Accountancy programs"
    ],
    "keySkills": [
      "Financial accounting and reporting",
      "Management accounting and budgeting",
      "Financial analysis and interpretation",
      "Auditing and assurance",
      "Business law and compliance",
      "Statistical analysis",
      "Excel and accounting software",
      "Critical thinking and problem-solving"
    ],
    "assessmentMethod": {
      "type": "Coursework",
      "description":
          "Assessment through written assignments and practical accounting tasks",
      "methods": [
        "Financial statement preparation",
        "Case study analysis",
        "Budget preparation exercises",
        "Audit report writing",
        "Statistical analysis projects",
        "Written assignments (2500-3000 words per unit)"
      ]
    }
  },
  {
    'image': "assets/images/level4THM.jpeg",
    "id": "othm_l4_tourism_hospitality",
    "courseName": "OTHM Level 4 Diploma in Tourism and Hospitality Management",
    "level": "Level 4",
    "description":
        "This qualification provides learners with knowledge and skills in tourism and hospitality management, covering areas such as customer service, operations management, and tourism industry analysis.",
    "objective":
        "To support learners' development as managers within the tourism and hospitality industry, combining theoretical knowledge with practical application.",
    "totalCredits": 120,
    "totalQualificationTime": 1200,
    "guidedLearningHours": 600,
    "mandatoryUnits": 6,
    "deliveryPeriod": "One academic year",
    "entryRequirements": [
      "Learners must be 18 years or older at the beginning of the course",
      "Level 3 qualification or equivalent",
      "GCSE Mathematics and English at grade C or above (or equivalent)",
      "Interest in tourism and hospitality industry",
      "IELTS 5.5 or equivalent for international students"
    ],
    "units": [
      {
        "unitId": "TH001",
        "unitName": "Tourism and Hospitality Business Environment",
        "credits": 20,
        "description":
            "Understanding the tourism and hospitality industry structure, trends, and economic impact.",
        "learningOutcomes": [
          "Analyze the structure of tourism and hospitality industry",
          "Understand economic impact of tourism",
          "Evaluate industry trends and developments"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "TH002",
        "unitName": "Customer Service Excellence",
        "credits": 20,
        "description":
            "Developing superior customer service skills and managing customer relationships.",
        "learningOutcomes": [
          "Understand customer service principles",
          "Develop customer relationship management skills",
          "Handle customer complaints and feedback"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "TH003",
        "unitName": "Tourism Operations Management",
        "credits": 20,
        "description":
            "Managing tourism operations, including tour planning, logistics, and quality control.",
        "learningOutcomes": [
          "Plan and organize tourism operations",
          "Manage tourism logistics and supply chains",
          "Implement quality assurance systems"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "TH004",
        "unitName": "Hospitality Operations Management",
        "credits": 20,
        "description":
            "Managing hospitality operations including accommodation, food service, and event management.",
        "learningOutcomes": [
          "Manage accommodation operations",
          "Understand food and beverage service operations",
          "Plan and execute events and functions"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "TH005",
        "unitName": "Marketing for Tourism and Hospitality",
        "credits": 20,
        "description":
            "Marketing strategies specific to tourism and hospitality sectors.",
        "learningOutcomes": [
          "Develop tourism marketing strategies",
          "Understand digital marketing for hospitality",
          "Analyze consumer behavior in tourism"
        ],
        "guidedLearningHours": 100
      },
      {
        "unitId": "TH006",
        "unitName": "Sustainable Tourism Development",
        "credits": 20,
        "description":
            "Understanding sustainable tourism practices and environmental considerations.",
        "learningOutcomes": [
          "Understand sustainable tourism principles",
          "Evaluate environmental impact of tourism",
          "Develop sustainable tourism strategies"
        ],
        "guidedLearningHours": 100
      }
    ],
    "careerOpportunities": [
      "Tourism Manager",
      "Hotel Manager",
      "Event Coordinator",
      "Travel Agent",
      "Customer Service Manager",
      "Restaurant Manager",
      "Tour Operations Manager",
      "Hospitality Supervisor",
      "Tourism Development Officer"
    ],
    "progressionPathways": [
      "OTHM Level 5 Extended Diploma in Tourism and Hospitality Management",
      "University degree in Tourism Management",
      "Hospitality Management programs",
      "Professional certifications in hospitality industry"
    ],
    "keySkills": [
      "Customer service and relationship management",
      "Operations management",
      "Marketing and promotion",
      "Event planning and coordination",
      "Sustainable tourism practices",
      "Cultural awareness and communication",
      "Problem-solving and decision-making",
      "Leadership and team management"
    ],
    "assessmentMethod": {
      "type": "Coursework",
      "description":
          "Assessment through written assignments and practical projects",
      "methods": [
        "Written assignments (2500-3000 words per unit)",
        "Case study analysis",
        "Business plans and proposals",
        "Marketing campaign development",
        "Operational planning projects",
        "Presentations and reports"
      ]
    }
  }
];
