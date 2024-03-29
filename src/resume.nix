{
  #rec {
  "$schema" = "https://raw.githubusercontent.com/jsonresume/resume-schema/v1.0.0/schema.json";
  basics = {
    #let domain = "samlehman.dev"; in
    name = "Sam Lehman";
    #label = "Programmer"; #"Software Engineer";
    label = "Software Developer";
    image = "photo.png";
    email = "dev@samlehman.dev"; # "sam@${domain}";
    url = "https://samlehman.dev"; # "https://${domain}";
    summary = "Sam is a full-stack software developer that creates web applications, backend services, and the infrastructure used to run them. Sam has both a depth and breadth of experience using programming languages, frameworks, and development utilities to build everything necessary to build software and deploy it to end users.";
    #"Sam hails from ${basics.location.city}, ${basics.location.region}. He has studied at ${education.institution}. Before starting FakeCompany,
    location = {
      city = "Erie";
      countryCode = "US";
      region = "Pennsylvania";
    };
    profiles = [
      {
        network = "Mastodon";
        username = "@sam@samlehman.dev"; # "@sam@${domain}";
        url = "https://social.samlehman.dev/sam"; # "https://${domain}/sam";
      }
      {
        network = "Twitter";
        username = "publicSam";
        url = "https://twitter.com/publicSam";
      }
      {
        network = "Matrix";
        username = "@lehmanator:tchncs.de";
        url = "https://tchncs.de/lehmanator";
      }
      {
        network = "GitHub";
        username = "Lehmanator";
        url = "https://github.com/Lehmanator";
      }
    ];
  };

  work = [
    {
      name = "Presque Isle Wine Cellars";
      location = "North East, PA";
      description = "Winery & Wine Supplies Sales";
      position = "Systems Administrator";
      url = "https://piwine.com";
      startDate = "2021-08-01";
      endDate = "2023-11-01";
      summary = "Responsible for administration of servers and all user workstations for the entire company.";
      highlights = [
        "Migrated local domain controller to Azure cloud."
        "Migrated local servers to container-based infrastructure."
        "Migrated local databases to cloud-based PostgreSQL instance."
        "Managed virtual machines running company infrastructure."
        "Managed DNS server & configured records to improve security, routing behavior, and standards compliance"
        "Deployed internal company mesh VPN to secure company infrastructure in remote & hybrid work environments."
        "Enhanced mail server security by configuring DMARC, DKIM, & SPF DNS records."
      ];
    }
    {
      name = "Brazen";
      location = "Arlington, VA";
      position = "Software Engineering Intern";
      description = "Brazen is a company developing software for hosting video conferencing.";
      url = "https://brazenconnect.com";
      startDate = "2020-02-01";
      endDate = "2020-05-01";
      summary = "Developed features for video conferencing platform & chatbots for automated candidate onboarding.";
      highlights = [
        "Wrote Java code with Tensorflow API to integrate chatbot NLP agents with custom business logic."
        "Wrote frontend & backend code in Java for video conferencing web platform."
      ];
    }
    {
      name = "General Electric: Transportation";
      location = "Lawrence Park, PA";
      description = "Locomotive manufacturer";
      position = "Electrical Integration - Software Engineering Intern";
      url = "https://ge.com";
      startDate = "2018-06-01";
      endDate = "2018-09-01";
      summary = "GE Transportation (now Wabtec) is a global leader in locomotive manufacturing.";
      highlights = [
        "Wrote C program to validate configurations to control locomotive hardware."
        "Wrote Python program to analyze locomotive schematics for possible points of failure."
        "Wrote Visual Basic for Applications (VBA) code to integrate Python & C programs with Excel spreadsheets used by engineers."
      ];
    }
    {
      name = "General Electric: Transportation";
      location = "Lawrence Park, PA";
      description = "Locomotive manufacturer";
      position = "Electrical Integration - Software Engineering Intern";
      url = "https://ge.com";
      startDate = "2017-06-01";
      endDate = "2017-09-01";
      summary = "GE Transportation (now Wabtec) is a global leader in locomotive manufacturing.";
      highlights = [
        "Wrote C program to validate configurations to control locomotive hardware."
        "Wrote Python program to analyze locomotive schematics for possible points of failure."
        "Wrote Visual Basic for Applications (VBA) code to integrate Python & C programs with Excel spreadsheets used by engineers."
      ];
    }
  ];

  volunteer = [
    {
      organization = "THON Technology";
      position = "Captain";
      url = "https://think.thon.org";
      startDate = "2018-09-01";
      endDate = "2019-04-01";
      summary = "THON is a student-run non-profit organization raising money for pediatric cancer research and the children affected by it. The THON Technology committee develops software to facilitate volunteer work and manage the annual dance marathon event.";
      highlights = [
        "Containerized developer environment to speed up onboarding new volunteer developers."
        "Containerized production webserver to make production environment reproducible."
        "Used Python & Django to create informational webpages to update volunteers on latest events & news."
        "Used Python & Django to create forms to collect and process information from volunteers."
      ];
    }
  ];

  education = [
    {
      institution = "Penn State University";
      url = "https://psu.edu";
      area = "Computer Science";
      studyType = "Bachelor";
      startDate = "2014-08-20";
      endDate = "2019-05-31";
      score = "3.2";
      courses = [
        "CMPSC121 - "
        "CMPSC122 - "
        "CMPSC221 - "
        "CMPSC360 - Discrete Mathematics"
        "CMPSC461 - "
        "CMPSC465 - Algorithms & Data Scriptures"
      ];
    }
  ];
  #awards = [
  #  {
  #    title = "Digital Compression Pioneer Award";
  #    date = "2014-11-01";
  #    awarder = "Techcrunch";
  #    summary = "There is no spoon.";
  #  }
  #];
  publications = [
    {
      name = "Hello World - Blog";
      publisher = "Sam Lehman - Blog";
      releaseDate = "2024-02-10";
      url = "https://blog.samlehman.dev/posts/hello_world.html";
      summary = "First post to my self-hosted blog!";
    }
  ];

  skills = [
    {
      name = "Web Development";
      level = "Master";
      keywords = [
        "HTML"
        "CSS"
        "Javascript"
        "Typescript"
        "Node.js"
        "React.js"
        "Webpack.js"
        "Babel.js"
        "Django"
        "Python"
      ];
    }
    {
      name = "Nix";
      level = "Master";
      keywords = [
        "Nix"
        "NixOS"
        "DevOps"
        "reproducible builds"
        "functional programming"
      ];
    }
    {
      name = "Kubernetes";
      level = "Beginner";
      keywords = ["DevOps" "containers" "infrastructure" "orchestration"];
    }
    {
      name = "Containers";
      level = "Master";
      keywords = [
        "DevOps"
        "Docker"
        "Podman"
        "containers"
        "infrastructure"
        "orchestration"
        "deployment"
      ];
    }
    {
      name = "Rust";
      level = "Beginner";
      keywords = ["Rust" "memory-safe" "systems"];
    }
    {
      name = "Python";
      level = "Intermediate";
      keywords = ["Python" "Django" "data science"];
    }
    {
      name = "Terraform";
      level = "Beginner";
      keywords = ["Terraform" "DevOps" "infrastructure" "infrastructure-as-code"];
    }
    {
      name = "Microsoft Azure";
      level = "Intermediate";
      keywords = ["DevOps" "cloud computing" "OAuth2" "directory server"];
    }
  ];

  languages = [
    {
      language = "English";
      fluency = "Native speaker";
    }
    {
      language = "Spanish";
      fluency = "Basic";
    }
    {
      language = "Mandarin";
      fluency = "Basic";
    }
  ];

  interests = [
    {
      name = "Home Automation";
      keywords = [
        "Home Assistant"
        "ESPHome"
        "Self-Hosting"
        "Raspberry Pi"
        "ESP32"
        "Microcontrollers"
        "Circuitry"
      ];
    }
    {
      name = "Wrestling";
      keywords = ["Sports" "Martial Arts" "Fitness" "Athletics" "Competition"];
    }
    {
      name = "Weight Lifting";
      keywords = ["Fitness" "Athletics" "Health"];
    }
  ];

  references = [
    {
      name = "Lauri Lewis";
      reference = "It is my pleasure to recommend Richard, his performance working as a consultant for Main St. Company proved that he will be a valuable addition to any company.";
    }
  ];

  projects = [
    {
      name = "Meehive";
      description = "Personal Nix configurations for personal computing devices & cluster infrastructure.";
      highlights = [
        "Declarative configurations representing both personal workstations and server infrastructure."
        "Encrypted secret management with sops."
        "Deployment of configurations via SSH."
        "Running many self-hosted server applications in Kubernetes"
      ];
      url = "https://github.com/Lehmanator/meehive";
      keywords = [
        "Kubernetes"
        "Helm"
        "Nix"
        "NixOS"
        "DevOps"
        "CI / CD"
        "deployment"
        "infrastructure-as-code"
      ];
    }
    {
      name = "resume.nix";
      description = "Nix flake project to build & deploy my personal resume using jsonresume.";
      highlights = [
        "Reproducible environment that pulls all dependencies to build a static webpage for my resume."
        "Automatic deployment using GitHub Actions and GitHub Pages."
        "Development shell with automatic installations of dependencies needed to hack on, build, and deploy my resume."
      ];
      keywords = [
        "Nix"
        "GitHub"
        "GitHub Pages"
        "GitHub Actions"
        "DevOps"
        "Node.js"
        "static site"
        "reproducible builds"
        "declarative"
        "CI / CD"
      ];
      startDate = "2024-01-24";
      url = "resume.samlehman.me";
      roles = ["Team lead" "Designer"];
      entity = "Sam Lehman";
      type = "application";
    }
  ];

  meta = {
    canonical = "https://raw.githubusercontent.com/jsonresume/resume-schema/master/schema.json";
    version = "v1.0.1";
    lastModified = "2024-02-01T15:53:00";

    # Set default theme when fetching through
    # https://registry.jsonresume.org/<github-user-name>, see themes
    # here: https://jsonresume.org/themes/
    theme = "fullmoon"; # "papirus";
  };
}
