import 'package:fmi_core/fmi_core.dart';

class MockEmployeeRepositoryImpl implements EmployeeRepository {
  @override
  Future<List<Employee>> getEmployees({bool forceApiCall = false}) async {
    return mockEmployees
        .map((employeeJson) => Employee.fromJson(employeeJson))
        .toList();
  }

  @override
  Future<Employee?> getEmployeeById(String employeeId, {bool forceApiCall = false}) async {
    return mockEmployees
        .map((employeeJson) => Employee.fromJson(employeeJson))
        .firstWhere((employee) => employee.employeeID == employeeId);
  }

  @override
  Future initialize({bool forceApiCall = false}) async {}

  List<Map<String, dynamic>> mockEmployees = [
    {
      "employeeID": "9999990021",
      "firstName": "AUTOMATION PROCESS",
      "lastName": "",
      "displayName": "AUTOMATION PROCESS ",
      "email": "MIS-Helpdesk-NA@fmi.com",
      "jobTitle": "",
      "photoUrl": "",
      "companyDescription": "",
      "supervisorID": null,
      "supervisorName": ""
    },
    {
      "employeeID": "9999990016",
      "firstName": "MIS Asset Management",
      "lastName": "",
      "displayName": "MIS ASSET MANAGEMENT ",
      "email": "",
      "jobTitle": "",
      "photoUrl": "",
      "companyDescription": "",
      "supervisorID": null,
      "supervisorName": ""
    },
    {
      "employeeID": "9999990012",
      "firstName": "MIS Helpdesk North America",
      "lastName": "",
      "displayName": "MIS HELPDESK NORTH AMERICA ",
      "email": "MIS-Helpdesk-NA@fmi.com",
      "jobTitle": "",
      "photoUrl": "",
      "companyDescription": "",
      "supervisorID": null,
      "supervisorName": ""
    },
    {
      "employeeID": "9999990017",
      "firstName": "SCOM Alert",
      "lastName": "",
      "displayName": "SCOM ALERT ",
      "email": "MIS-Helpdesk-NA@fmi.com",
      "jobTitle": "",
      "photoUrl": "",
      "companyDescription": "",
      "supervisorID": null,
      "supervisorName": ""
    },
    {
      "employeeID": "0060081458",
      "firstName": "Asset",
      "lastName": "Abdualiyev",
      "displayName": "ASSET ABDUALIYEV",
      "email": "aabduali@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081458.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024792",
      "supervisorName": "JASON BOWSHER"
    },
    {
      "employeeID": "0000010897",
      "firstName": "Tracy",
      "lastName": "Abernethy",
      "displayName": "TRACY ABERNETHY",
      "email": "tbame@fmi.com",
      "jobTitle": "Dir Social Resonsibility & Community Dev",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000010897.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000050843",
      "supervisorName": "BILL COBB"
    },
    {
      "employeeID": "0000056616",
      "firstName": "Rene",
      "lastName": "Abreu",
      "displayName": "RENE ABREU",
      "email": "rabreu@fmi.com",
      "jobTitle": "Accounting Mgr",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000056616.jpg",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000051252",
      "supervisorName": "GRANT WELKER"
    },
    {
      "employeeID": "0060081836",
      "firstName": "Aaron",
      "lastName": "Abril",
      "displayName": "AARON ABRIL",
      "email": "aabril2@fmi.com",
      "jobTitle": "Support Technician",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081836.JPG",
      "companyDescription": "PDI El Paso Rod Plant",
      "supervisorID": "0000010845",
      "supervisorName": "KEVIN SCOTT"
    },
    {
      "employeeID": "0060077852",
      "firstName": "Angel",
      "lastName": "Acuña",
      "displayName": "ANGEL ACUÑA",
      "email": "aacuna1@fmi.com",
      "jobTitle": "ECM/SharePoint Business Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077852.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060069816",
      "supervisorName": "PETER RYAN"
    },
    {
      "employeeID": "0000062765",
      "firstName": "Brian",
      "lastName": "Adair",
      "displayName": "BRIAN ADAIR",
      "email": "badair@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000062765.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051658",
      "supervisorName": "BILL VON KOLEN"
    },
    {
      "employeeID": "0060049674",
      "firstName": "Ryan",
      "lastName": "Adair",
      "displayName": "RYAN ADAIR",
      "email": "radair@fmi.com",
      "jobTitle": "Sr Metallurgist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060049674.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060037865",
      "supervisorName": "ED RYBINSKI"
    },
    {
      "employeeID": "0060089328",
      "firstName": "Sergio",
      "lastName": "Adame",
      "displayName": "SERGIO ADAME",
      "email": "sadame@fmi.com",
      "jobTitle": "ROD & COMPANY",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089328.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060083074",
      "firstName": "Clive",
      "lastName": "Adams",
      "displayName": "CLIVE ADAMS",
      "email": "cadams2@fmi.com",
      "jobTitle": "Lead Estimator Project Controls",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083074.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060083755",
      "firstName": "Kaida",
      "lastName": "Adams",
      "displayName": "KAIDA ADAMS",
      "email": "kadams2@fmi.com",
      "jobTitle": "Sr Accounting Clerk",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083755.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015474",
      "supervisorName": "STACY COSTELLO"
    },
    {
      "employeeID": "0000051584",
      "firstName": "Melanie",
      "lastName": "Adams",
      "displayName": "MELANIE ADAMS",
      "email": "madams@fmi.com",
      "jobTitle": "Procurement Technician",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051584.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051339",
      "supervisorName": "MIKE MCADAM"
    },
    {
      "employeeID": "0060077595",
      "firstName": "Michael",
      "lastName": "Adams",
      "displayName": "MICHAEL ADAMS",
      "email": "madams6@fmi.com",
      "jobTitle": "Ricoh Onsite Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077595.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057338",
      "supervisorName": "KEVIN TRASENTE"
    },
    {
      "employeeID": "0060081819",
      "firstName": "Vinay",
      "lastName": "Adisheshan",
      "displayName": "VINAY ADISHESHAN",
      "email": "vadishes@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081819.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000085369",
      "firstName": "Richard",
      "lastName": "Adkerson",
      "displayName": "RICHARD ADKERSON",
      "email": "radkerso@fmi.com",
      "jobTitle": "President & Chief Executive Officer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085369.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085369",
      "supervisorName": "RICHARD ADKERSON"
    },
    {
      "employeeID": "0060024012",
      "firstName": "Barbara",
      "lastName": "Aemmer",
      "displayName": "BARBARA AEMMER",
      "email": "baemmer@fmi.com",
      "jobTitle": "Leave Management Representative",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060024012.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060029856",
      "supervisorName": "LORIE FORBIS"
    },
    {
      "employeeID": "0060040718",
      "firstName": "Ritika",
      "lastName": "Agarwal",
      "displayName": "RITIKA AGARWAL",
      "email": "ragarwal@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060040718.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000053577",
      "firstName": "David",
      "lastName": "Agnello",
      "displayName": "DAVID AGNELLO",
      "email": "dagnello@fmi.com",
      "jobTitle": "Sr Process Ldr Supply Chain",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000053577.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0060020357",
      "firstName": "Enrique Alfonso",
      "lastName": "Aguilar",
      "displayName": "ENRIQUE ALFONSO AGUILAR",
      "email": "eaguilar@fmi.com",
      "jobTitle": "Mgr HR FMMC",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060020357.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000054069",
      "supervisorName": "TODD GRAVER"
    },
    {
      "employeeID": "0060023380",
      "firstName": "Amy",
      "lastName": "Aguirre",
      "displayName": "AMY AGUIRRE",
      "email": "aaguirre@fmi.com",
      "jobTitle": "Sr Benefits Spec Retire",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060023380.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028334",
      "supervisorName": "RACHAEL LAUFENBERG"
    },
    {
      "employeeID": "0000064050",
      "firstName": "Venta",
      "lastName": "Agustri",
      "displayName": "VENTA AGUSTRI",
      "email": "vagustri@fmi.com",
      "jobTitle": "Area Construction Mgr",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000064050.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060088545",
      "firstName": "Arif Fajar",
      "lastName": "Ahadian",
      "displayName": "ARIF FAJAR AHADIAN",
      "email": "aahadian@fmi.com",
      "jobTitle": "Construction Assistant",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088545.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060081289",
      "firstName": "Waqas",
      "lastName": "Ahmad",
      "displayName": "WAQAS AHMAD",
      "email": "wahmad1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081289.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060039834",
      "firstName": "Farooq",
      "lastName": "Ahmed",
      "displayName": "FAROOQ AHMED",
      "email": "fahmed@fmi.com",
      "jobTitle": "SAP HR Bus Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060039834.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060058379",
      "supervisorName": "NIRMOD KUMAR"
    },
    {
      "employeeID": "0060065529",
      "firstName": "Nafy",
      "lastName": "Ahmed",
      "displayName": "NAFY AHMED",
      "email": "nahmed@fmi.com",
      "jobTitle": "Systems Integrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065529.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088954",
      "supervisorName": "MIKE LEMMOND"
    },
    {
      "employeeID": "0000030672",
      "firstName": "Sharon",
      "lastName": "Ahmed",
      "displayName": "SHARON AHMED",
      "email": "sahmed@fmi.com",
      "jobTitle": "Sr Bus Info/Sys Proc Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030672.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089987",
      "supervisorName": "JIM SCHIFFER"
    },
    {
      "employeeID": "0060078804",
      "firstName": "Terri",
      "lastName": "Aholelei",
      "displayName": "TERRI AHOLELEI",
      "email": "taholele@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078804.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0060089187",
      "firstName": "Vasanthi",
      "lastName": "Ajessh",
      "displayName": "VASANTHI AJESSH",
      "email": "vajessh@fmi.com",
      "jobTitle": "PROMETHEUS GROUP ENTERPRISE LLC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089187.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0000030187",
      "firstName": "Zhanna",
      "lastName": "Akopova",
      "displayName": "ZHANNA AKOPOVA",
      "email": "zakopova@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030187.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055955",
      "supervisorName": "CAROLYN GAFFNEY"
    },
    {
      "employeeID": "0060087375",
      "firstName": "Rachel",
      "lastName": "Al Malak",
      "displayName": "RACHEL AL MALAK",
      "email": "ralmalak@fmi.com",
      "jobTitle": "Developer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087375.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0060063118",
      "supervisorName": "TONY PETERSON"
    },
    {
      "employeeID": "0000090364",
      "firstName": "Courtney",
      "lastName": "Albertsen",
      "displayName": "COURTNEY ALBERTSEN",
      "email": "calberts@fmi.com",
      "jobTitle": "Logistics Analyst II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090364.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000063845",
      "supervisorName": "RYAN FORMAN"
    },
    {
      "employeeID": "0060062509",
      "firstName": "Misty",
      "lastName": "Albertsen",
      "displayName": "MISTY ALBERTSEN",
      "email": "malberts1@fmi.com",
      "jobTitle": "Sales Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060062509.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000017824",
      "supervisorName": "CINDY BURAS"
    },
    {
      "employeeID": "0000063630",
      "firstName": "Rob",
      "lastName": "Albright",
      "displayName": "ROB ALBRIGHT",
      "email": "ralbrigh@fmi.com",
      "jobTitle": "Dir Project Commissioning",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000063630.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0000086419",
      "firstName": "Jaquelin",
      "lastName": "Alcantar",
      "displayName": "JAQUIE ALCANTAR",
      "email": "jalcanta@fmi.com",
      "jobTitle": "Manager Operations Accounting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086419.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0060035922",
      "supervisorName": "STEPHEN WINGERSON"
    },
    {
      "employeeID": "0000062328",
      "firstName": "Kimberly",
      "lastName": "Aldridge",
      "displayName": "KIMBERLY ALDRIDGE",
      "email": "kaldridg@fmi.com",
      "jobTitle": "Sr Mgr Tax",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000062328.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052232",
      "supervisorName": "HUGH DONAHUE"
    },
    {
      "employeeID": "0060081230",
      "firstName": "Anica",
      "lastName": "Ali",
      "displayName": "ANICA ALI",
      "email": "aali4@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081230.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089905",
      "supervisorName": "SCOTT STATHAM"
    },
    {
      "employeeID": "0060059832",
      "firstName": "Jerod",
      "lastName": "Alleman",
      "displayName": "JEROD ALLEMAN",
      "email": "jalleman@fmi.com",
      "jobTitle": "Credit Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060059832.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017273",
      "supervisorName": "JON BORGE"
    },
    {
      "employeeID": "0060061832",
      "firstName": "Joel",
      "lastName": "Allen",
      "displayName": "JOEL ALLEN",
      "email": "jallen5@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060061832.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060073188",
      "firstName": "Michael",
      "lastName": "Allen",
      "displayName": "MICHAEL ALLEN",
      "email": "mallen3@fmi.com",
      "jobTitle": "SuccessFactors Subject Matter Advisor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060073188.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065010",
      "supervisorName": "JAMES PATTERSON"
    },
    {
      "employeeID": "0060059457",
      "firstName": "Reacel",
      "lastName": "Allen",
      "displayName": "REACEL ALLEN",
      "email": "rallen1@fmi.com",
      "jobTitle": "Leave Management Representative",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060059457.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060029856",
      "supervisorName": "LORIE FORBIS"
    },
    {
      "employeeID": "0000085492",
      "firstName": "Thomas",
      "lastName": "Allen",
      "displayName": "TOMMY ALLEN",
      "email": "tallen@fmi.com",
      "jobTitle": "Mgr Sales Admin & Commercial Accounting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085492.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000011495",
      "supervisorName": "JIM GUIDRY"
    },
    {
      "employeeID": "0060053470",
      "firstName": "Bryan",
      "lastName": "Allinson",
      "displayName": "BRYAN ALLINSON",
      "email": "60053470@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060053470.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000061262",
      "supervisorName": "MICHAEL HULSE"
    },
    {
      "employeeID": "0000024216",
      "firstName": "Kent",
      "lastName": "Alme",
      "displayName": "KENT ALME",
      "email": "kalme@fmi.com",
      "jobTitle": "Sr Dir Consolidation & Analysis",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000024216.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017870",
      "supervisorName": "STEVE TANNER"
    },
    {
      "employeeID": "0060076541",
      "firstName": "Derek",
      "lastName": "Almejo",
      "displayName": "DEREK ALMEJO",
      "email": "dalmejo@fmi.com",
      "jobTitle": "JOY GLOBAL SURFACE MINING INC",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076541.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017064",
      "supervisorName": "LISA MEDINA"
    },
    {
      "employeeID": "0060089401",
      "firstName": "Janet",
      "lastName": "Alonso",
      "displayName": "JANET ALONSO",
      "email": "jalonso@fmi.com",
      "jobTitle": "Project Accountant",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089401.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060032479",
      "firstName": "Rey",
      "lastName": "Alvar",
      "displayName": "REY ALVAR",
      "email": "ralvar@fmi.com",
      "jobTitle": "Chief Electrical Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060032479.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0060083399",
      "firstName": "Angel",
      "lastName": "Alvarez",
      "displayName": "ANGEL ALVAREZ",
      "email": "aalvarez4@fmi.com",
      "jobTitle": "Systems Administrator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083399.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060050084",
      "supervisorName": "KATELYN GLEESON"
    },
    {
      "employeeID": "0060041016",
      "firstName": "Ashley",
      "lastName": "Alvarez",
      "displayName": "ASHLEY ALVAREZ",
      "email": "aalvarez7@fmi.com",
      "jobTitle": "Sales/Use Tax Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060041016.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094168",
      "supervisorName": "DOMINIQUE CALDERON"
    },
    {
      "employeeID": "0000073015",
      "firstName": "John",
      "lastName": "Amato",
      "displayName": "JOHN AMATO",
      "email": "jamato@fmi.com",
      "jobTitle": "Consultant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000073015.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085369",
      "supervisorName": "RICHARD ADKERSON"
    },
    {
      "employeeID": "0000050663",
      "firstName": "Pamela",
      "lastName": "Ammons",
      "displayName": "PAM AMMONS",
      "email": "pammons@fmi.com",
      "jobTitle": "Sr Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000050663.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0060087362",
      "firstName": "Jaka Poetra",
      "lastName": "Andallas",
      "displayName": "JAKA POETRA ANDALLAS",
      "email": "jandalla@fmi.com",
      "jobTitle": "Field Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087362.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060034864",
      "firstName": "Kelly",
      "lastName": "Anderson",
      "displayName": "KELLY ANDERSON",
      "email": "kanderso1@fmi.com",
      "jobTitle": "Construction Safety Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060034864.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052516",
      "supervisorName": "MITCHELL KRUGER"
    },
    {
      "employeeID": "0000015395",
      "firstName": "Erik",
      "lastName": "Andreasen",
      "displayName": "ERIK ANDREASEN",
      "email": "eandreas@fmi.com",
      "jobTitle": "Data Center Operations",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000015395.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060043585",
      "supervisorName": "BENITO RALPH"
    },
    {
      "employeeID": "0060088194",
      "firstName": "Pavan",
      "lastName": "Angara",
      "displayName": "PAVAN ANGARA",
      "email": "pangara@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088194.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060089189",
      "firstName": "Thamimul",
      "lastName": "Ansari",
      "displayName": "THAMIMUL ANSARI",
      "email": "tansari@fmi.com",
      "jobTitle": "PROMETHEUS GROUP ENTERPRISE LLC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089189.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0060077496",
      "firstName": "Sudeep",
      "lastName": "Antonyraj",
      "displayName": "SUDEEP ANTONYRAJ",
      "email": "santonyr@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077496.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000019708",
      "supervisorName": "AUDREY MERTES"
    },
    {
      "employeeID": "0060088968",
      "firstName": "Haley",
      "lastName": "Applegate",
      "displayName": "HALEY APPLEGATE",
      "email": "happlega@fmi.com",
      "jobTitle": "Contract Recruiter",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088968.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090027",
      "supervisorName": "BETSY JOHNSON"
    },
    {
      "employeeID": "0000067455",
      "firstName": "Ingemar",
      "lastName": "Arellano",
      "displayName": "INGEMAR ARELLANO",
      "email": "iarellan@fmi.com",
      "jobTitle": "Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067455.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000067485",
      "supervisorName": "JOSE RAMON TANINGCO"
    },
    {
      "employeeID": "0060079782",
      "firstName": "Mila",
      "lastName": "Ariefiani",
      "displayName": "MILA ARIEFIANI",
      "email": "mariefia@fmi.com",
      "jobTitle": "Safety Admin",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079782.JPG",
      "companyDescription": "Morenci Mining JV",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060076958",
      "firstName": "Nur",
      "lastName": "Arifin",
      "displayName": "NUR ARIFIN",
      "email": "narifin1@fmi.com",
      "jobTitle": "Contracts Admin Site",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076958.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000092167",
      "supervisorName": "DANIEL GONZALEZ OLAYA"
    },
    {
      "employeeID": "0061002086",
      "firstName": "Andrew",
      "lastName": "Aristizabal",
      "displayName": "ANDREW ARISTIZABAL",
      "email": "aaristiz@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002086.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090200",
      "supervisorName": "ANDREA VIZCARRA"
    },
    {
      "employeeID": "0000085328",
      "firstName": "Craig",
      "lastName": "Arms",
      "displayName": "CRAIG ARMS",
      "email": "carms@fmi.com",
      "jobTitle": "Communications Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085328.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000054062",
      "supervisorName": "GREG PROBST"
    },
    {
      "employeeID": "0060081687",
      "firstName": "Chirag",
      "lastName": "Arora",
      "displayName": "CHIRAG ARORA",
      "email": "carora@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081687.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060079944",
      "firstName": "Sebastian",
      "lastName": "Arreoloa",
      "displayName": "SEBASTIAN ARREOLOA",
      "email": "sarreolo@fmi.com",
      "jobTitle": "WESTERN INDUSTRIAL RESOURCES",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079944.JPG",
      "companyDescription": "Morenci Mining JV",
      "supervisorID": "0000056761",
      "supervisorName": "WILLIAM WEARNE"
    },
    {
      "employeeID": "0000019592",
      "firstName": "Aimee",
      "lastName": "Arrington",
      "displayName": "AIMEE ARRINGTON",
      "email": "aarringt@fmi.com",
      "jobTitle": "Mgr NA Employee Relations",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000019592.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024126",
      "supervisorName": "MICHELLE STONEHOUSE"
    },
    {
      "employeeID": "0000905541",
      "firstName": "Goklas",
      "lastName": "Aruan",
      "displayName": "GOKLAS ARUAN",
      "email": "garuan@fmi.com",
      "jobTitle": "Sr Process Control Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000905541.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0060028905",
      "supervisorName": "ARI SUPOMO"
    },
    {
      "employeeID": "0060088375",
      "firstName": "Aravind",
      "lastName": "Arumugam",
      "displayName": "ARAVIND ARUMUGAM",
      "email": "aarumuga@fmi.com",
      "jobTitle": "SAP AMER INC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088375.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0000013935",
      "firstName": "Brett",
      "lastName": "Ashford",
      "displayName": "BRETT ASHFORD",
      "email": "bashford@fmi.com",
      "jobTitle": "Project Mgr Engineering II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000013935.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000066179",
      "supervisorName": "SHANE WIEGAND"
    },
    {
      "employeeID": "0000030413",
      "firstName": "Tiffanie",
      "lastName": "Ashhurst",
      "displayName": "TIFFANIE ASHHURST",
      "email": "tashhurs@fmi.com",
      "jobTitle": "Govt Relations Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030413.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094443",
      "supervisorName": "RICHARD BARK"
    },
    {
      "employeeID": "0060049562",
      "firstName": "Joshua",
      "lastName": "Ashinhurst",
      "displayName": "JOSH ASHINHURST",
      "email": "jashinhu@fmi.com",
      "jobTitle": "IT Security Analyst II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060049562.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060063022",
      "supervisorName": "SEAN MCWHORTER"
    },
    {
      "employeeID": "0060086464",
      "firstName": "Dhani",
      "lastName": "Astarawulan",
      "displayName": "DHANI ASTARAWULAN",
      "email": "dastaraw@fmi.com",
      "jobTitle": "Safety Rep",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086464.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060077638",
      "firstName": "Tony",
      "lastName": "Astorga",
      "displayName": "TONY ASTORGA",
      "email": "tastorga@fmi.com",
      "jobTitle": "Contracts Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077638.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060078506",
      "firstName": "MHD",
      "lastName": "Atharuddin",
      "displayName": "MHD ATHARUDDIN",
      "email": "matharud@fmi.com",
      "jobTitle": "Field Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078506.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0061002074",
      "firstName": "Mark",
      "lastName": "Atkins",
      "displayName": "MARK ATKINS",
      "email": "matkins1@fmi.com",
      "jobTitle": "Data Scientist I",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002074.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057353",
      "supervisorName": "ROBERT CATRON"
    },
    {
      "employeeID": "0000052656",
      "firstName": "Brad",
      "lastName": "Atkinson",
      "displayName": "BRAD ATKINSON",
      "email": "batkinso@fmi.com",
      "jobTitle": "Senior Mining Consultant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000052656.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060046186",
      "supervisorName": "ALEX MARCHICELLI"
    },
    {
      "employeeID": "0060052194",
      "firstName": "Clifford",
      "lastName": "Austin",
      "displayName": "CLIFFORD AUSTIN",
      "email": "caustin@fmi.com",
      "jobTitle": "Ricoh Onsite Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060052194.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068803",
      "supervisorName": "DANIELLE PERRY"
    },
    {
      "employeeID": "0060089275",
      "firstName": "Nikolaos",
      "lastName": "Avgouladakis",
      "displayName": "NIKOLAOS AVGOULADAKIS",
      "email": "navgoula@fmi.com",
      "jobTitle": "Kokkola O365 Migration Consultant",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089275.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089987",
      "supervisorName": "JIM SCHIFFER"
    },
    {
      "employeeID": "0060086137",
      "firstName": "Nagendra",
      "lastName": "Avula",
      "displayName": "NAGENDRA AVULA",
      "email": "navula@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086137.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060088575",
      "firstName": "Rajath",
      "lastName": "B R",
      "displayName": "RAJATH B R",
      "email": "rbr@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088575.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000030606",
      "firstName": "Dean",
      "lastName": "Babcock",
      "displayName": "DEAN BABCOCK",
      "email": "dbabcock@fmi.com",
      "jobTitle": "Ld Teradata Architect",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030606.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0060058815",
      "firstName": "Bharath",
      "lastName": "Babu",
      "displayName": "BHARATH BABU",
      "email": "bbabu@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060058815.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060088373",
      "firstName": "Kishore",
      "lastName": "Babu",
      "displayName": "KISHORE BABU",
      "email": "kbabu@fmi.com",
      "jobTitle": "SAP AMER INC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088373.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0000055534",
      "firstName": "Steven",
      "lastName": "Bacashihua",
      "displayName": "STEVEN BACASHIHUA",
      "email": "sbacashi@fmi.com",
      "jobTitle": "Mgr Consolidation & Analysis",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000055534.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015036",
      "supervisorName": "GARY MORRIS"
    },
    {
      "employeeID": "0060082669",
      "firstName": "Michelle",
      "lastName": "Bachir",
      "displayName": "MICHELLE BACHIR",
      "email": "mbachir@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060082669.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000096009",
      "firstName": "Susan",
      "lastName": "Bachler",
      "displayName": "SUSAN BACHLER",
      "email": "sbachler@fmi.com",
      "jobTitle": "Mgr AP & Sales/Use Tax",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000096009.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056399",
      "supervisorName": "LAUREN FRANK"
    },
    {
      "employeeID": "0000060704",
      "firstName": "Stephanie",
      "lastName": "Bader",
      "displayName": "STEPHANIE BADER",
      "email": "sbader@fmi.com",
      "jobTitle": "Ld Systems Integrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000060704.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088954",
      "supervisorName": "MIKE LEMMOND"
    },
    {
      "employeeID": "0060086149",
      "firstName": "Jessica",
      "lastName": "Badilla",
      "displayName": "JESSICA BADILLA",
      "email": "jbadilla2@fmi.com",
      "jobTitle": "AP Data Entry Contractor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086149.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000086665",
      "supervisorName": "BRIAN PIGLIA"
    },
    {
      "employeeID": "0000051236",
      "firstName": "Dennis",
      "lastName": "Baggott",
      "displayName": "DENNIS BAGGOTT",
      "email": "dbaggott@fmi.com",
      "jobTitle": "Sr Facilities Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051236.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000016865",
      "supervisorName": "JANICE SINGLETON"
    },
    {
      "employeeID": "0060087178",
      "firstName": "Imam",
      "lastName": "Baihaki",
      "displayName": "IMAM BAIHAKI",
      "email": "ibaihaki1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087178.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000054930",
      "firstName": "Debbie",
      "lastName": "Baird",
      "displayName": "DEBBIE BAIRD",
      "email": "dbaird@fmi.com",
      "jobTitle": "Mgr HR Systems",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054930.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000016919",
      "supervisorName": "SCOTT KIEL"
    },
    {
      "employeeID": "0060088699",
      "firstName": "Micah",
      "lastName": "Baize",
      "displayName": "MICAH BAIZE",
      "email": "mbaize@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088699.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051441",
      "supervisorName": "PAUL WHITEAKER"
    },
    {
      "employeeID": "0061000458",
      "firstName": "Lorie",
      "lastName": "Bajal",
      "displayName": "LORIE BAJAL",
      "email": "lbajal@fmi.com",
      "jobTitle": "Sr Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000458.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000085651",
      "supervisorName": "MONIQUE CENAC"
    },
    {
      "employeeID": "0060038911",
      "firstName": "Gayle",
      "lastName": "Baker",
      "displayName": "GAYLE BAKER",
      "email": "gbaker2@fmi.com",
      "jobTitle": "Sr Contract Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060038911.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0061000316",
      "supervisorName": "JENNIFER HOBBS"
    },
    {
      "employeeID": "0060038715",
      "firstName": "Shuba",
      "lastName": "Balasubramanian",
      "displayName": "SHUBA BALASUBRAMANIAN",
      "email": "sbalasub@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060038715.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060041951",
      "firstName": "Heather",
      "lastName": "Ballard",
      "displayName": "HEATHER BALLARD",
      "email": "hballard@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060041951.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060065305",
      "supervisorName": "BRENT HANSEN"
    },
    {
      "employeeID": "0060089378",
      "firstName": "Mariia",
      "lastName": "Balueva",
      "displayName": "MARIIA BALUEVA",
      "email": "mbalueva@fmi.com",
      "jobTitle": "Sr Cost Controller",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089378.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060086684",
      "firstName": "Matthew",
      "lastName": "Balven",
      "displayName": "MATTHEW BALVEN",
      "email": "mbalven@fmi.com",
      "jobTitle": "Project Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086684.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053106",
      "supervisorName": "RYAN DUNNE"
    },
    {
      "employeeID": "0000012447",
      "firstName": "Deborah",
      "lastName": "Ban",
      "displayName": "DEBBIE BAN",
      "email": "dban@fmi.com",
      "jobTitle": "Dir Corporate Taxes",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000012447.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052232",
      "supervisorName": "HUGH DONAHUE"
    },
    {
      "employeeID": "0000063746",
      "firstName": "Alejandra",
      "lastName": "Banda",
      "displayName": "ALEX BANDA",
      "email": "abanda@fmi.com",
      "jobTitle": "Mgr Global Product Planning",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000063746.jpg",
      "companyDescription": "Climax Moly Co Admin",
      "supervisorID": "0000053411",
      "supervisorName": "CHANDRAMOULEESWARAN VAIDYANATHAN"
    },
    {
      "employeeID": "0060064237",
      "firstName": "Elizabeth",
      "lastName": "Banda",
      "displayName": "ELIZABETH BANDA",
      "email": "ebanda@fmi.com",
      "jobTitle": "Leave Management Representative",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060064237.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060029856",
      "supervisorName": "LORIE FORBIS"
    },
    {
      "employeeID": "0060076714",
      "firstName": "Fanuel",
      "lastName": "Banda",
      "displayName": "FANUEL BANDA",
      "email": "fbanda@fmi.com",
      "jobTitle": "Chief Engineer UG",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076714.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000085055",
      "supervisorName": "TIM CASTEN"
    },
    {
      "employeeID": "0060034809",
      "firstName": "Ameet",
      "lastName": "Bandodkar",
      "displayName": "AMEET BANDODKAR",
      "email": "abandodk@fmi.com",
      "jobTitle": "SAP Comm Bus Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060034809.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000010344",
      "supervisorName": "PIPER MCKENNA"
    },
    {
      "employeeID": "0060057895",
      "firstName": "Amit",
      "lastName": "Bansal",
      "displayName": "AMIT BANSAL",
      "email": "abansal@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060057895.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060070216",
      "firstName": "Cindy",
      "lastName": "Banton",
      "displayName": "CINDY BANTON",
      "email": "cbanton@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060070216.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000091826",
      "supervisorName": "SCOTT KNUTSON"
    },
    {
      "employeeID": "0000054547",
      "firstName": "Cynthia",
      "lastName": "Barber",
      "displayName": "CYNTHIA BARBER",
      "email": "cbarber@fmi.com",
      "jobTitle": "Dir GSC Commodity Mgt & Contracts",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054547.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000011629",
      "supervisorName": "DANNY HUGHES"
    },
    {
      "employeeID": "0060052700",
      "firstName": "Matthew",
      "lastName": "Barber",
      "displayName": "MATTHEW BARBER",
      "email": "mbarber2@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060052700.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060060612",
      "firstName": "Ondrea",
      "lastName": "Barber",
      "displayName": "ONDREA BARBER",
      "email": "obarber@fmi.com",
      "jobTitle": "Ld Native American Affairs Spec",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060060612.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000066695",
      "supervisorName": "PETER DENETCLAW"
    },
    {
      "employeeID": "0060079455",
      "firstName": "Bret",
      "lastName": "Bardales",
      "displayName": "BRET BARDALES",
      "email": "bbardale@fmi.com",
      "jobTitle": "Data Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079455.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0060084262",
      "firstName": "Igor",
      "lastName": "Baricevic",
      "displayName": "IGOR BARICEVIC",
      "email": "ibaricev@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060084262.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000013819",
      "supervisorName": "RENE REYES"
    },
    {
      "employeeID": "0000094443",
      "firstName": "Richard",
      "lastName": "Bark",
      "displayName": "RICHARD BARK",
      "email": "rbark@fmi.com",
      "jobTitle": "Dir Govt Relations & Environmntl Counsel",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000094443.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089905",
      "supervisorName": "SCOTT STATHAM"
    },
    {
      "employeeID": "0060030542",
      "firstName": "Christine",
      "lastName": "Baron",
      "displayName": "CHRISTINE BARON",
      "email": "cbaron@fmi.com",
      "jobTitle": "Project Controls Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060030542.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060077514",
      "firstName": "Jorge",
      "lastName": "Barraza",
      "displayName": "JORGE BARRAZA",
      "email": "jbarraza10@fmi.com",
      "jobTitle": "Southwestern Railroad Inc",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077514.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060064689",
      "supervisorName": "CHARLES ODDO"
    },
    {
      "employeeID": "0060059846",
      "firstName": "Brian",
      "lastName": "Barrett",
      "displayName": "BRIAN BARRETT",
      "email": "bbarrett@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060059846.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060024459",
      "firstName": "Michael",
      "lastName": "Barrett",
      "displayName": "MICHAEL BARRETT",
      "email": "mbarrett@fmi.com",
      "jobTitle": "Process Ldr Supply Chain - Analytics",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060024459.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000096525",
      "supervisorName": "SUBBA VENKATESWARAN"
    },
    {
      "employeeID": "0000088848",
      "firstName": "Lisa-Marie",
      "lastName": "Barron",
      "displayName": "LISA-MARIE BARRON",
      "email": "lbarron@fmi.com",
      "jobTitle": "Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088848.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000014944",
      "supervisorName": "CECE LEWIN"
    },
    {
      "employeeID": "0060078222",
      "firstName": "Alexandra",
      "lastName": "Barrows",
      "displayName": "ALEXANDRA BARROWS",
      "email": "abarrows@fmi.com",
      "jobTitle": "Dir-ESG Relations",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078222.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051194",
      "supervisorName": "BOB BOYCE"
    },
    {
      "employeeID": "0061003097",
      "firstName": "Ujjal",
      "lastName": "Basu",
      "displayName": "UJJAL BASU",
      "email": "ubasu1@fmi.com",
      "jobTitle": "Chief Control & Instrumentation Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003097.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0060074670",
      "firstName": "Rene",
      "lastName": "Batson",
      "displayName": "RENE BATSON",
      "email": "rbatson@fmi.com",
      "jobTitle": "LL&D Consultant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060074670.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000091826",
      "supervisorName": "SCOTT KNUTSON"
    },
    {
      "employeeID": "0060087066",
      "firstName": "Jesse",
      "lastName": "Bauld",
      "displayName": "JESSE BAULD",
      "email": "jbauld@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087066.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000092062",
      "firstName": "Amanda",
      "lastName": "Baylosis",
      "displayName": "AMANDA BAYLOSIS",
      "email": "abaylosi@fmi.com",
      "jobTitle": "Compensation Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092062.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000093801",
      "supervisorName": "MELISSA ELRICK"
    },
    {
      "employeeID": "0000053133",
      "firstName": "Valerie",
      "lastName": "Beach",
      "displayName": "VALERIE BEACH",
      "email": "vbeach@fmi.com",
      "jobTitle": "Mgr Staffing",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000053133.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053075",
      "supervisorName": "RYAN NIESZ"
    },
    {
      "employeeID": "0061003602",
      "firstName": "Brad",
      "lastName": "Beam",
      "displayName": "BRAD BEAM",
      "email": "bbeam@fmi.com",
      "jobTitle": "Sr Product Designer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003602.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060063118",
      "supervisorName": "TONY PETERSON"
    },
    {
      "employeeID": "0060032214",
      "firstName": "Drew",
      "lastName": "Beard",
      "displayName": "DREW BEARD",
      "email": "dbeard@fmi.com",
      "jobTitle": "Chief Mine Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060032214.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000066178",
      "supervisorName": "CHUCK BRANNON"
    },
    {
      "employeeID": "0060070122",
      "firstName": "Jacob",
      "lastName": "Beaudoin",
      "displayName": "JAKE BEAUDOIN",
      "email": "jbeaudoi@fmi.com",
      "jobTitle": "Sr Res Estimation Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060070122.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000086445",
      "supervisorName": "ANDREW ISSEL"
    },
    {
      "employeeID": "0060087333",
      "firstName": "Nikolas",
      "lastName": "Behar",
      "displayName": "NIKOLAS BEHAR",
      "email": "nbehar@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087333.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060088747",
      "firstName": "Garland",
      "lastName": "Bell",
      "displayName": "GARLAND BELL",
      "email": "gbell1@fmi.com",
      "jobTitle": "Senior Consultant",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088747.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053106",
      "supervisorName": "RYAN DUNNE"
    },
    {
      "employeeID": "0000028896",
      "firstName": "Lissette",
      "lastName": "Bell",
      "displayName": "LISSETTE BELL",
      "email": "lbell1@fmi.com",
      "jobTitle": "TE Contracts & Controls",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000028896.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060079893",
      "firstName": "Omar",
      "lastName": "Bell",
      "displayName": "OMAR BELL",
      "email": "obell@fmi.com",
      "jobTitle": "Program Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079893.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065010",
      "supervisorName": "JAMES PATTERSON"
    },
    {
      "employeeID": "0060077070",
      "firstName": "Leo",
      "lastName": "Bello",
      "displayName": "LEO BELLO",
      "email": "lbello@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077070.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060054795",
      "firstName": "Bob",
      "lastName": "Beltramo",
      "displayName": "BOB BELTRAMO",
      "email": "bbeltram@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060054795.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055243",
      "supervisorName": "JOCHEN GLISS"
    },
    {
      "employeeID": "0060074057",
      "firstName": "Lucy",
      "lastName": "Benjamin",
      "displayName": "LUCY BENJAMIN",
      "email": "lbenjami@fmi.com",
      "jobTitle": "Project Controls Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060074057.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028343",
      "supervisorName": "ANDREA GEORGOPOULOS"
    },
    {
      "employeeID": "0000092993",
      "firstName": "Kevin",
      "lastName": "Bennett",
      "displayName": "KEVIN BENNETT",
      "email": "kbennett@fmi.com",
      "jobTitle": "Sr Engineer Energy",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092993.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000092101",
      "supervisorName": "JOHNNY KEY"
    },
    {
      "employeeID": "0060067384",
      "firstName": "Tyler",
      "lastName": "Bennett",
      "displayName": "TYLER BENNETT",
      "email": "tbennett@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067384.JPG",
      "companyDescription": "FM Bagdad Inc",
      "supervisorID": "0000027435",
      "supervisorName": "BRANDON GILLEY"
    },
    {
      "employeeID": "0060087625",
      "firstName": "Darren",
      "lastName": "Benson",
      "displayName": "DARREN BENSON",
      "email": "dbenson2@fmi.com",
      "jobTitle": "Sr Piping Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087625.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0060088749",
      "firstName": "Jim",
      "lastName": "Benson",
      "displayName": "JIM BENSON",
      "email": "jbenson1@fmi.com",
      "jobTitle": "Site Project Director",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088749.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0000090250",
      "firstName": "Mike",
      "lastName": "Berlin",
      "displayName": "MIKE BERLIN",
      "email": "mberlin@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090250.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060032557",
      "firstName": "Blake",
      "lastName": "Bernal",
      "displayName": "BLAKE BERNAL",
      "email": "bbernal@fmi.com",
      "jobTitle": "HR Service Center Rep",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060032557.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053282",
      "supervisorName": "SUZANNE PATTISON"
    },
    {
      "employeeID": "0060079820",
      "firstName": "Jeremy",
      "lastName": "Bernier",
      "displayName": "JEREMY BERNIER",
      "email": "jbernier@fmi.com",
      "jobTitle": "Procurement Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079820.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030738",
      "supervisorName": "MIKE BREWER"
    },
    {
      "employeeID": "0061002489",
      "firstName": "John",
      "lastName": "Bernos",
      "displayName": "JOHN BERNOS",
      "email": "jbernos@fmi.com",
      "jobTitle": "Sr Mobility Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002489.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000028013",
      "supervisorName": "ALEXANDER ROMERO"
    },
    {
      "employeeID": "0060030847",
      "firstName": "Pamela",
      "lastName": "Berry",
      "displayName": "PAM BERRY",
      "email": "pberry@fmi.com",
      "jobTitle": "Purchasing Associate",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060030847.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000086978",
      "supervisorName": "ROB LEDET"
    },
    {
      "employeeID": "0061002201",
      "firstName": "Kevin",
      "lastName": "Bertram",
      "displayName": "KEVIN BERTRAM",
      "email": "kbertram@fmi.com",
      "jobTitle": "Marketing & Content Specialist",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002201.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060030270",
      "supervisorName": "KRISTA GOYARTS"
    },
    {
      "employeeID": "0060050313",
      "firstName": "Maria",
      "lastName": "Bertram",
      "displayName": "MARIA BERTRAM",
      "email": "mbertram@fmi.com",
      "jobTitle": "Recruiter II - College",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060050313.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090027",
      "supervisorName": "BETSY JOHNSON"
    },
    {
      "employeeID": "0060075585",
      "firstName": "Mark",
      "lastName": "Berube",
      "displayName": "MARK BERUBE",
      "email": "mberube@fmi.com",
      "jobTitle": "WESTERN INDUSTRIAL RESOURCES",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060075585.JPG",
      "companyDescription": "Morenci Mining JV",
      "supervisorID": "0000056761",
      "supervisorName": "WILLIAM WEARNE"
    },
    {
      "employeeID": "0061002807",
      "firstName": "Hailemelekot",
      "lastName": "Betemariam",
      "displayName": "HAILE BETEMARIAM",
      "email": "hbetemar1@fmi.com",
      "jobTitle": "Sr Hydrogeologist",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002807.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060052666",
      "supervisorName": "MICHAEL LACEY"
    },
    {
      "employeeID": "0000011836",
      "firstName": "Morrison",
      "lastName": "Bethea",
      "displayName": "MO BETHEA",
      "email": "mbethea@fmi.com",
      "jobTitle": "Consultant, Medical Affairs",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011836.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000054298",
      "supervisorName": "PAM MASSON"
    },
    {
      "employeeID": "0061000094",
      "firstName": "Zachary",
      "lastName": "Beus",
      "displayName": "ZACHARY BEUS",
      "email": "zbeus@fmi.com",
      "jobTitle": "Sr Contract Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000094.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0061000316",
      "supervisorName": "JENNIFER HOBBS"
    },
    {
      "employeeID": "0060087986",
      "firstName": "Prashant",
      "lastName": "Bhamre",
      "displayName": "PRASHANT BHAMRE",
      "email": "pbhamre@fmi.com",
      "jobTitle": "Senior Scheduler",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087986.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060080572",
      "firstName": "Gajendra Kumar",
      "lastName": "Bharathi",
      "displayName": "GAJENDRA KUMAR BHARATHI",
      "email": "gbharath@fmi.com",
      "jobTitle": "BI Developer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080572.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0060084721",
      "firstName": "Shubhodeep",
      "lastName": "Bhattacharya",
      "displayName": "SHUBHODEEP BHATTACHARYA",
      "email": "sbhattac1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060084721.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060065512",
      "firstName": "Shreyanshu",
      "lastName": "Bhonsle",
      "displayName": "SHREYANSHU BHONSLE",
      "email": "sbhonsle@fmi.com",
      "jobTitle": "Project Controls Engineer I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065512.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0000086662",
      "firstName": "Lukan",
      "lastName": "Biggs",
      "displayName": "LUKAN BIGGS",
      "email": "lbiggs@fmi.com",
      "jobTitle": "Mgr Maintenance",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086662.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0060027306",
      "firstName": "Amanda",
      "lastName": "Bilinski",
      "displayName": "AMANDA BILINSKI",
      "email": "abertucc@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060027306.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060055263",
      "firstName": "McKenzie",
      "lastName": "Billin",
      "displayName": "MACK BILLIN",
      "email": "mbillin@fmi.com",
      "jobTitle": "Spv Industrial Hygiene",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060055263.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060033337",
      "supervisorName": "JESSICA COLE"
    },
    {
      "employeeID": "0060070306",
      "firstName": "Brian",
      "lastName": "Bird",
      "displayName": "BRIAN BIRD",
      "email": "bbird@fmi.com",
      "jobTitle": "Contract Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060070306.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000087007",
      "supervisorName": "JUSTIN TRICK"
    },
    {
      "employeeID": "0061000170",
      "firstName": "Brian",
      "lastName": "Bird",
      "displayName": "BRIAN BIRD",
      "email": "bbird1@fmi.com",
      "jobTitle": "Contract Administrator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061000170.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0061000174",
      "supervisorName": "JUSTIN TRICK"
    },
    {
      "employeeID": "0000062216",
      "firstName": "Scott",
      "lastName": "Birmingham",
      "displayName": "SCOTT BIRMINGHAM",
      "email": "sbirming@fmi.com",
      "jobTitle": "Dir Custom Solutions & Analytics",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000062216.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030596",
      "supervisorName": "DAVE SOVELL"
    },
    {
      "employeeID": "0060050437",
      "firstName": "Michael",
      "lastName": "Bischof",
      "displayName": "MICHAEL BISCHOF",
      "email": "mbischof@fmi.com",
      "jobTitle": "Data Scientist II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060050437.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062216",
      "supervisorName": "SCOTT BIRMINGHAM"
    },
    {
      "employeeID": "0060087915",
      "firstName": "Abhishek",
      "lastName": "Biwal",
      "displayName": "ABHISHEK BIWAL",
      "email": "abiwal@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087915.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060071533",
      "firstName": "Azamat",
      "lastName": "Bizhanov",
      "displayName": "AZAMAT BIZHANOV",
      "email": "abizhano@fmi.com",
      "jobTitle": "Mgr Exploration",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060071533.JPG",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0060064090",
      "supervisorName": "VLAD BUCHYNSKYY"
    },
    {
      "employeeID": "0000062878",
      "firstName": "Eli",
      "lastName": "Black",
      "displayName": "ELI BLACK",
      "email": "eblack@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000062878.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060075579",
      "firstName": "Marilyn",
      "lastName": "Black",
      "displayName": "MARILYN BLACK",
      "email": "mblack@fmi.com",
      "jobTitle": "FMMC- Planning Mgr – Americas",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060075579.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0000096449",
      "firstName": "William",
      "lastName": "Blaine",
      "displayName": "WILLIAM BLAINE",
      "email": "wblaine@fmi.com",
      "jobTitle": "Sr Sales Rep/Toll Contract Admin",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000096449.JPG",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0000056651",
      "supervisorName": "CHRIS GNANN"
    },
    {
      "employeeID": "0000023577",
      "firstName": "Jeanette",
      "lastName": "Blakesley",
      "displayName": "JEANETTE BLAKESLEY",
      "email": "jblakesl@fmi.com",
      "jobTitle": "Intl Sr Sales Analyst - PTFI",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000023577.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000054067",
      "supervisorName": "RHONDA SCHEXNAYDER"
    },
    {
      "employeeID": "0060082456",
      "firstName": "Tyler",
      "lastName": "Blanchard",
      "displayName": "TYLER BLANCHARD",
      "email": "tblancha@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060082456.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000024278",
      "firstName": "Lucy",
      "lastName": "Blanco",
      "displayName": "LUCY BLANCO",
      "email": "lblanco@fmi.com",
      "jobTitle": "Sales & Service Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000024278.JPG",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0060032889",
      "supervisorName": "BRENDA MITCHELL"
    },
    {
      "employeeID": "0060030480",
      "firstName": "Jeffery",
      "lastName": "Blazek",
      "displayName": "JEFF BLAZEK",
      "email": "jblazek@fmi.com",
      "jobTitle": "Mgr Global Bus Powder Metallurgy",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060030480.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000056295",
      "supervisorName": "DAVID ELLIOTT"
    },
    {
      "employeeID": "0060065946",
      "firstName": "Barbara",
      "lastName": "Bliss",
      "displayName": "BARBARA BLISS",
      "email": "bbliss@fmi.com",
      "jobTitle": "Business Solutions Architect II - F&A",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065946.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065010",
      "supervisorName": "JAMES PATTERSON"
    },
    {
      "employeeID": "0060056794",
      "firstName": "Monique",
      "lastName": "Blount",
      "displayName": "MONIQUE BLOUNT",
      "email": "mblount@fmi.com",
      "jobTitle": "Sales Administration Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060056794.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085492",
      "supervisorName": "TOMMY ALLEN"
    },
    {
      "employeeID": "0060030460",
      "firstName": "Clinton",
      "lastName": "Bobo",
      "displayName": "CLINT BOBO",
      "email": "cbobo@fmi.com",
      "jobTitle": "Sr Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060030460.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000058233",
      "supervisorName": "TONYA HUGHES"
    },
    {
      "employeeID": "0060051110",
      "firstName": "Abhaykumar",
      "lastName": "Bodhmage",
      "displayName": "ABHAY BODHMAGE",
      "email": "abodhmag@fmi.com",
      "jobTitle": "Chief Metallurgist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060051110.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062163",
      "supervisorName": "MICHAEL LAM"
    },
    {
      "employeeID": "0060081684",
      "firstName": "Jeffrey",
      "lastName": "Bogan",
      "displayName": "JEFFREY BOGAN",
      "email": "jbogan@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081684.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060088599",
      "firstName": "Pred",
      "lastName": "Bojic",
      "displayName": "PRED BOJIC",
      "email": "pbojic@fmi.com",
      "jobTitle": "Chief Electrical Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088599.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0000050282",
      "firstName": "Ochirbal",
      "lastName": "Bolookhuu",
      "displayName": "OCHIRBAL BOLOOKHUU",
      "email": "obolookh@fmi.com",
      "jobTitle": "Sr Metallurgist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000050282.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024233",
      "supervisorName": "LEN HILL"
    },
    {
      "employeeID": "0060057949",
      "firstName": "Andrea",
      "lastName": "Boltz",
      "displayName": "ANDREA BOLTZ",
      "email": "aboltz@fmi.com",
      "jobTitle": "Sustainability Programs Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060057949.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000067020",
      "supervisorName": "CHRIS CHAMBERS"
    },
    {
      "employeeID": "0060055322",
      "firstName": "Hemanth",
      "lastName": "Bondili",
      "displayName": "HEMANTH BONDILI",
      "email": "hbondili@fmi.com",
      "jobTitle": "Engineer II - Power",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060055322.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000092101",
      "supervisorName": "JOHNNY KEY"
    },
    {
      "employeeID": "0000017273",
      "firstName": "Jon",
      "lastName": "Borge",
      "displayName": "JON BORGE",
      "email": "jborge@fmi.com",
      "jobTitle": "Mgr Treasury Services",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000017273.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051194",
      "supervisorName": "BOB BOYCE"
    },
    {
      "employeeID": "0061001971",
      "firstName": "Flint",
      "lastName": "Bornstein",
      "displayName": "FLINT BORNSTEIN",
      "email": "fbornste@fmi.com",
      "jobTitle": "PT Temporary Non-Summer Intern",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001971.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000023591",
      "supervisorName": "AMY SEXTON"
    },
    {
      "employeeID": "0060083662",
      "firstName": "Ryan",
      "lastName": "Bottoms",
      "displayName": "RYAN BOTTOMS",
      "email": "rbottoms@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083662.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000011687",
      "firstName": "William",
      "lastName": "Boudreaux",
      "displayName": "BILLY BOUDREAUX",
      "email": "bboudrea@fmi.com",
      "jobTitle": "Sr Mgr Consolidation & Analysis",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011687.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085046",
      "supervisorName": "BOB HELM"
    },
    {
      "employeeID": "0000019036",
      "firstName": "Eric",
      "lastName": "Bourgeois",
      "displayName": "ERIC BOURGEOIS",
      "email": "ebourgeo@fmi.com",
      "jobTitle": "Dir Sales Administration & Logistics",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000019036.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0001106068",
      "supervisorName": "JOSÉ A. JIMENEZ CARRACEDO"
    },
    {
      "employeeID": "0000030469",
      "firstName": "Sharon",
      "lastName": "Bowman",
      "displayName": "SHARON BOWMAN",
      "email": "sbowman@fmi.com",
      "jobTitle": "Treasure & Credit Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030469.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017273",
      "supervisorName": "JON BORGE"
    },
    {
      "employeeID": "0000024792",
      "firstName": "Jason",
      "lastName": "Bowsher",
      "displayName": "JASON BOWSHER",
      "email": "jbowsher@fmi.com",
      "jobTitle": "Mgr Operational Analysis",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000024792.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017636",
      "supervisorName": "CORY STEVENS"
    },
    {
      "employeeID": "0061001466",
      "firstName": "Amanda",
      "lastName": "Boxwell",
      "displayName": "AMANDA BOXWELL",
      "email": "aboxwell@fmi.com",
      "jobTitle": "",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061001466.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000092905",
      "supervisorName": "JENNIFER GADZICHOWSKI"
    },
    {
      "employeeID": "0000051194",
      "firstName": "Robert",
      "lastName": "Boyce",
      "displayName": "BOB BOYCE",
      "email": "bboyce@fmi.com",
      "jobTitle": "Vice President and Treasurer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051194.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051953",
      "supervisorName": "KATHLEEN QUIRK"
    },
    {
      "employeeID": "0060080434",
      "firstName": "Alison",
      "lastName": "Boyd",
      "displayName": "ALISON BOYD",
      "email": "aboyd@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080434.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060022791",
      "firstName": "Harold",
      "lastName": "Boyer",
      "displayName": "HAROLD BOYER",
      "email": "hboyer@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060022791.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055243",
      "supervisorName": "JOCHEN GLISS"
    },
    {
      "employeeID": "0000085646",
      "firstName": "Michelle",
      "lastName": "Boyle",
      "displayName": "MICHELLE BOYLE",
      "email": "mboyle@fmi.com",
      "jobTitle": "Graphics Design Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085646.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000011660",
      "supervisorName": "KATHY KELLEY"
    },
    {
      "employeeID": "0060043349",
      "firstName": "Matthew",
      "lastName": "Brady",
      "displayName": "MATTHEW BRADY",
      "email": "mbrady@fmi.com",
      "jobTitle": "Engineering Systems Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060043349.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0060070924",
      "supervisorName": "TREY WILLIAMS III"
    },
    {
      "employeeID": "0060060588",
      "firstName": "David",
      "lastName": "Braeckow",
      "displayName": "DAVID BRAECKOW",
      "email": "dbraecko@fmi.com",
      "jobTitle": "Sr Estimator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060060588.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0060025043",
      "supervisorName": "DAVID DEAN"
    },
    {
      "employeeID": "0061003967",
      "firstName": "Chan",
      "lastName": "Braithwaite",
      "displayName": "CHAN BRAITHWAITE",
      "email": "cbraithw@fmi.com",
      "jobTitle": "Mgr Category Management",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003967.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060035483",
      "supervisorName": "DANIEL PALING"
    },
    {
      "employeeID": "0060068782",
      "firstName": "Remi",
      "lastName": "Brandebourg",
      "displayName": "REMI BRANDEBOURG",
      "email": "rbrandeb@fmi.com",
      "jobTitle": "AO Project Mgr",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060068782.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065010",
      "supervisorName": "JAMES PATTERSON"
    },
    {
      "employeeID": "0000066178",
      "firstName": "Charles",
      "lastName": "Brannon",
      "displayName": "CHUCK BRANNON",
      "email": "cbrannon@fmi.com",
      "jobTitle": "Mgr Underground Planning",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000066178.jpg",
      "companyDescription": "International Administrat",
      "supervisorID": "0000085055",
      "supervisorName": "TIM CASTEN"
    },
    {
      "employeeID": "0060078514",
      "firstName": "Christopher",
      "lastName": "Brattin",
      "displayName": "CHRISTOPHER BRATTIN",
      "email": "cbrattin@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078514.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000058233",
      "supervisorName": "TONYA HUGHES"
    },
    {
      "employeeID": "0060078069",
      "firstName": "Max",
      "lastName": "Braverman",
      "displayName": "MAX BRAVERMAN",
      "email": "mbraverm@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078069.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054218",
      "supervisorName": "PAT PREJEAN"
    },
    {
      "employeeID": "0000094067",
      "firstName": "Angel",
      "lastName": "Bravo",
      "displayName": "ANGEL BRAVO",
      "email": "abravo@fmi.com",
      "jobTitle": "CS & CCA Business Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000094067.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068782",
      "supervisorName": "REMI BRANDEBOURG"
    },
    {
      "employeeID": "0000093606",
      "firstName": "Jeff",
      "lastName": "Breadner",
      "displayName": "JEFF BREADNER",
      "email": "jbreadne@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000093606.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000010979",
      "supervisorName": "NICHOLAS HICKSON"
    },
    {
      "employeeID": "0000088215",
      "firstName": "James",
      "lastName": "Breen",
      "displayName": "JIM BREEN",
      "email": "jbreen@fmi.com",
      "jobTitle": "Sr OD Training Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088215.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000091826",
      "supervisorName": "SCOTT KNUTSON"
    },
    {
      "employeeID": "0000087140",
      "firstName": "Danielle",
      "lastName": "Bremermann",
      "displayName": "DANIELLE BREMERMANN",
      "email": "dbremerm@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000087140.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051339",
      "supervisorName": "MIKE MCADAM"
    },
    {
      "employeeID": "0061001226",
      "firstName": "Patrick",
      "lastName": "Brennan",
      "displayName": "PATRICK BRENNAN",
      "email": "pbrennan@fmi.com",
      "jobTitle": "Resource Analyst",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001226.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000064031",
      "supervisorName": "CHRIS FRANKS"
    },
    {
      "employeeID": "0000030738",
      "firstName": "Michael",
      "lastName": "Brewer",
      "displayName": "MIKE BREWER",
      "email": "mbrewer@fmi.com",
      "jobTitle": "Dir Project Procurement",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030738.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0000060638",
      "firstName": "Patricia",
      "lastName": "Briggs",
      "displayName": "PATRICIA BRIGGS",
      "email": "pbriggs@fmi.com",
      "jobTitle": "Executive Secretary",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000060638.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062464",
      "supervisorName": "TAYLOR MELVIN"
    },
    {
      "employeeID": "0060023274",
      "firstName": "Elizabeth",
      "lastName": "Brignac",
      "displayName": "BETH BRIGNAC",
      "email": "bbrignac@fmi.com",
      "jobTitle": "Sr Accountant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060023274.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000012013",
      "supervisorName": "KIM SHIPLEY"
    },
    {
      "employeeID": "0060079330",
      "firstName": "Ben",
      "lastName": "Bringhurst",
      "displayName": "BEN BRINGHURST",
      "email": "bbringhu@fmi.com",
      "jobTitle": "TE Smelter Design and Operations",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079330.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0060050702",
      "firstName": "Michel",
      "lastName": "Brissette",
      "displayName": "MICHEL BRISSETTE",
      "email": "mbrisset@fmi.com",
      "jobTitle": "Mgr Metallurgy",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060050702.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060037865",
      "supervisorName": "ED RYBINSKI"
    },
    {
      "employeeID": "0061003538",
      "firstName": "Jennifer",
      "lastName": "Brooks",
      "displayName": "JEN BROOKS",
      "email": "jbrooks4@fmi.com",
      "jobTitle": "Spv Payroll Tax & Accounting",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003538.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000085330",
      "supervisorName": "AIMEE PRAYTOR"
    },
    {
      "employeeID": "0000092524",
      "firstName": "Martin",
      "lastName": "Brotschul",
      "displayName": "MARTIN BROTSCHUL",
      "email": "mbrotsch@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092524.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000030286",
      "firstName": "Donelle",
      "lastName": "Brown",
      "displayName": "DONELLE BROWN",
      "email": "dbrown4@fmi.com",
      "jobTitle": "Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030286.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000986346",
      "supervisorName": "DOUGLAS CURRAULT"
    },
    {
      "employeeID": "0000064708",
      "firstName": "Elena",
      "lastName": "Brown",
      "displayName": "ELENA BROWN",
      "email": "ebrown@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000064708.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060064689",
      "supervisorName": "CHARLES ODDO"
    },
    {
      "employeeID": "0060080704",
      "firstName": "Michael",
      "lastName": "Brown",
      "displayName": "MICHAEL BROWN",
      "email": "mbrown10@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080704.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060087120",
      "firstName": "Robert",
      "lastName": "Brown",
      "displayName": "ROBERT BROWN",
      "email": "rbrown6@fmi.com",
      "jobTitle": "Contracts Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087120.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000092167",
      "supervisorName": "DANIEL GONZALEZ OLAYA"
    },
    {
      "employeeID": "0000089100",
      "firstName": "William",
      "lastName": "Brown",
      "displayName": "WILLIAM BROWN",
      "email": "wbrown@fmi.com",
      "jobTitle": "Mgr Supply Chain",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000089100.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000011629",
      "supervisorName": "DANNY HUGHES"
    },
    {
      "employeeID": "0060081141",
      "firstName": "John",
      "lastName": "Browning",
      "displayName": "JOHN BROWNING",
      "email": "jbrownin@fmi.com",
      "jobTitle": "Environmental Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081141.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000016264",
      "supervisorName": "JERRY ROOSE"
    },
    {
      "employeeID": "0000085570",
      "firstName": "William",
      "lastName": "Brundige",
      "displayName": "WILLIAM BRUNDIGE",
      "email": "wbrundig@fmi.com",
      "jobTitle": "Mgr Corporate Finance",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085570.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000019587",
      "supervisorName": "BRAD FOX"
    },
    {
      "employeeID": "0000016873",
      "firstName": "Joseph",
      "lastName": "Brunner",
      "displayName": "JOE BRUNNER",
      "email": "jbrunner@fmi.com",
      "jobTitle": "Dir Discontinued Ops",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000016873.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000050843",
      "supervisorName": "BILL COBB"
    },
    {
      "employeeID": "0000054297",
      "firstName": "Scott",
      "lastName": "Bruns",
      "displayName": "SCOTT BRUNS",
      "email": "aimron1@fmi.com",
      "jobTitle": "Ld Systems Integrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054297.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062216",
      "supervisorName": "SCOTT BIRMINGHAM"
    },
    {
      "employeeID": "0000016540",
      "firstName": "Lydia",
      "lastName": "Bryant",
      "displayName": "LYDIA BRYANT",
      "email": "lbryant@fmi.com",
      "jobTitle": "Executive Secretary",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000016540.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052232",
      "supervisorName": "HUGH DONAHUE"
    },
    {
      "employeeID": "0000019375",
      "firstName": "Brady",
      "lastName": "Bryce",
      "displayName": "BRADY BRYCE",
      "email": "bbryce1@fmi.com",
      "jobTitle": "Proj Mgr Engineering II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000019375.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000063630",
      "supervisorName": "ROB ALBRIGHT"
    },
    {
      "employeeID": "0000017268",
      "firstName": "Patrick",
      "lastName": "Bryce",
      "displayName": "PATRICK BRYCE",
      "email": "pbryce@fmi.com",
      "jobTitle": "Mgr H&S Risk & Compliance",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000017268.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000023349",
      "supervisorName": "ANNA LAIJA"
    },
    {
      "employeeID": "0000011741",
      "firstName": "Kenneth",
      "lastName": "Buchta",
      "displayName": "KENNY BUCHTA",
      "email": "kbuchta@fmi.com",
      "jobTitle": "Dir Finance",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011741.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051953",
      "supervisorName": "KATHLEEN QUIRK"
    },
    {
      "employeeID": "0060064090",
      "firstName": "Volodymyr",
      "lastName": "Buchynskyy",
      "displayName": "VLAD BUCHYNSKYY",
      "email": "vbuchyns@fmi.com",
      "jobTitle": "Area Mgr/District Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060064090.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000010948",
      "supervisorName": "MAC CANBY"
    },
    {
      "employeeID": "0000052931",
      "firstName": "Barbara",
      "lastName": "Buck",
      "displayName": "BARBARA BUCK",
      "email": "bbuck@fmi.com",
      "jobTitle": "VP Marketing & Sales",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000052931.jpg",
      "companyDescription": "Climax Moly Co Admin",
      "supervisorID": "0000014260",
      "supervisorName": "MIKE KENDRICK"
    },
    {
      "employeeID": "0000013918",
      "firstName": "Jill",
      "lastName": "Buck",
      "displayName": "JILL BUCK",
      "email": "jbuck@fmi.com",
      "jobTitle": "Ld Systems Integrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000013918.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055242",
      "supervisorName": "BRIAN ETHERIDGE"
    },
    {
      "employeeID": "0060076765",
      "firstName": "Greg",
      "lastName": "Buckles",
      "displayName": "GREG BUCKLES",
      "email": "gbuckles@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076765.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000018775",
      "supervisorName": "MICHELLE MARTINEZ"
    },
    {
      "employeeID": "0060077776",
      "firstName": "Robert",
      "lastName": "Budd",
      "displayName": "ROBERT BUDD",
      "email": "rbudd@fmi.com",
      "jobTitle": "Senior Metallurgist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077776.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0060089429",
      "firstName": "Sapna",
      "lastName": "Budhwani",
      "displayName": "SAPNA BUDHWANI",
      "email": "sbudhwan@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089429.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060056839",
      "firstName": "Zhivko",
      "lastName": "Budinov",
      "displayName": "ZHIVKO BUDINOV",
      "email": "zbudinov@fmi.com",
      "jobTitle": "Geologist II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060056839.JPG",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0060064090",
      "supervisorName": "VLAD BUCHYNSKYY"
    },
    {
      "employeeID": "0060065578",
      "firstName": "Hector",
      "lastName": "Buedo Iniguez",
      "displayName": "HECTOR BUEDO INIGUEZ",
      "email": "hbuedoin@fmi.com",
      "jobTitle": "Project Materials Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065578.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030738",
      "supervisorName": "MIKE BREWER"
    },
    {
      "employeeID": "0060079501",
      "firstName": "Dennis",
      "lastName": "Bui",
      "displayName": "DENNIS BUI",
      "email": "dbui@fmi.com",
      "jobTitle": "Sr Contract Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079501.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088015",
      "supervisorName": "LISA TAYLOR"
    },
    {
      "employeeID": "0000091515",
      "firstName": "William",
      "lastName": "Bull",
      "displayName": "WILLIAM BULL",
      "email": "wbull@fmi.com",
      "jobTitle": "Sr Project Manager Engineering",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091515.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0060067434",
      "firstName": "Ethan",
      "lastName": "Bullock",
      "displayName": "ETHAN BULLOCK",
      "email": "ebullock@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067434.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060084505",
      "firstName": "Rachel",
      "lastName": "Bullock",
      "displayName": "RACHEL BULLOCK",
      "email": "rbullock@fmi.com",
      "jobTitle": "Master Data Administrator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060084505.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000019708",
      "supervisorName": "AUDREY MERTES"
    },
    {
      "employeeID": "0000017824",
      "firstName": "Cynthia",
      "lastName": "Buras",
      "displayName": "CINDY BURAS",
      "email": "cburas@fmi.com",
      "jobTitle": "Mgr Raw Materials Sales Admin",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000017824.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0060017216",
      "supervisorName": "ALVARO GONZALO DIAZ"
    },
    {
      "employeeID": "0000030764",
      "firstName": "Christine",
      "lastName": "Burgess",
      "displayName": "CHRISTINE BURGESS",
      "email": "cburgess@fmi.com",
      "jobTitle": "Mgr Accounting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030764.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000095485",
      "supervisorName": "PETER KRAUT"
    },
    {
      "employeeID": "0000030467",
      "firstName": "Kimberly",
      "lastName": "Burley",
      "displayName": "KIM BURLEY",
      "email": "kburley@fmi.com",
      "jobTitle": "Spv Travel & Entertainment",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030467.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056399",
      "supervisorName": "LAUREN FRANK"
    },
    {
      "employeeID": "0000054128",
      "firstName": "Elizabeth",
      "lastName": "Burton",
      "displayName": "ELIZABETH BURTON",
      "email": "eburton@fmi.com",
      "jobTitle": "Executive Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054128.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000010314",
      "supervisorName": "STEVE HIGGINS"
    },
    {
      "employeeID": "0000030095",
      "firstName": "Vicki",
      "lastName": "Busby",
      "displayName": "VICKI BUSBY",
      "email": "vbusby@fmi.com",
      "jobTitle": "Sr Mgr Financial Reporting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030095.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054218",
      "supervisorName": "PAT PREJEAN"
    },
    {
      "employeeID": "0061002273",
      "firstName": "Emily",
      "lastName": "Bush",
      "displayName": "EMILY BUSH",
      "email": "ebush@fmi.com",
      "jobTitle": "Spv Tax Provision International Tax",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002273.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062617",
      "supervisorName": "SAMUEL ROOT"
    },
    {
      "employeeID": "0060070199",
      "firstName": "James",
      "lastName": "Butler",
      "displayName": "JAMES BUTLER",
      "email": "jbutler1@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060070199.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060073853",
      "supervisorName": "GRETCHEN DONAHUE"
    },
    {
      "employeeID": "0000062999",
      "firstName": "Ron",
      "lastName": "Butler",
      "displayName": "RON BUTLER",
      "email": "rbutler@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000062999.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060075429",
      "firstName": "Joshua",
      "lastName": "Buttles",
      "displayName": "JOSHUA BUTTLES",
      "email": "jbuttles@fmi.com",
      "jobTitle": "Contractor - Project Controls",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060075429.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0060025043",
      "supervisorName": "DAVID DEAN"
    },
    {
      "employeeID": "0000056982",
      "firstName": "Brian",
      "lastName": "Buttram",
      "displayName": "BRIAN BUTTRAM",
      "email": "bbuttram@fmi.com",
      "jobTitle": "Dir GSC Materials Management",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000056982.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000011629",
      "supervisorName": "DANNY HUGHES"
    },
    {
      "employeeID": "0000057300",
      "firstName": "Peter",
      "lastName": "Byra",
      "displayName": "PETER BYRA",
      "email": "pbyra@fmi.com",
      "jobTitle": "Chief Metallurgist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000057300.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024233",
      "supervisorName": "LEN HILL"
    },
    {
      "employeeID": "0060078926",
      "firstName": "Timothy",
      "lastName": "Byro",
      "displayName": "SEAN BYRO",
      "email": "sbyro@fmi.com",
      "jobTitle": "Sr Contract Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078926.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0061000316",
      "supervisorName": "JENNIFER HOBBS"
    },
    {
      "employeeID": "0060088917",
      "firstName": "Maria",
      "lastName": "Caballero",
      "displayName": "MARIA CABALLERO",
      "email": "mcaballe@fmi.com",
      "jobTitle": "Contract Recruiter",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088917.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053133",
      "supervisorName": "VALERIE BEACH"
    },
    {
      "employeeID": "0000089383",
      "firstName": "Luz",
      "lastName": "Caceres",
      "displayName": "LUZ CACERES",
      "email": "lcaceres@fmi.com",
      "jobTitle": "Sr HR Systems Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000089383.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030627",
      "supervisorName": "KAREN EICHHORST"
    },
    {
      "employeeID": "0000023152",
      "firstName": "Cynthia",
      "lastName": "Cade",
      "displayName": "CINDY CADE",
      "email": "ccade@fmi.com",
      "jobTitle": "Sr Records Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000023152.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000030672",
      "supervisorName": "SHARON AHMED"
    },
    {
      "employeeID": "0060064846",
      "firstName": "Teresa",
      "lastName": "Caicedo-Alegria",
      "displayName": "TERESA CAICEDO-ALEGRIA",
      "email": "tcaicedo@fmi.com",
      "jobTitle": "Document Control Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060064846.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0000094168",
      "firstName": "Dominique",
      "lastName": "Calderon",
      "displayName": "DOMINIQUE CALDERON",
      "email": "dcaldero@fmi.com",
      "jobTitle": "Sr Sales & Use Tax Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000094168.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000096009",
      "supervisorName": "SUSAN BACHLER"
    },
    {
      "employeeID": "0000011410",
      "firstName": "Jeffrey",
      "lastName": "Caldwell",
      "displayName": "JEFFREY CALDWELL",
      "email": "Jeffrey_Caldwell@fmi.com",
      "jobTitle": "Assistant Mgr Wildlife",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011410.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051239",
      "supervisorName": "RON HOWARD"
    },
    {
      "employeeID": "0061000166",
      "firstName": "Anna",
      "lastName": "Cale",
      "displayName": "ANNA CALE",
      "email": "acale@fmi.com",
      "jobTitle": "Sr Training Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000166.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000091826",
      "supervisorName": "SCOTT KNUTSON"
    },
    {
      "employeeID": "0060088010",
      "firstName": "Valeria",
      "lastName": "Calero",
      "displayName": "VALERIA CALERO",
      "email": "vcalero@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088010.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060018940",
      "firstName": "ENEAS EDWIN",
      "lastName": "CALIZAYA",
      "displayName": "ENEAS EDWIN CALIZAYA",
      "email": "ecalizay@fmi.com",
      "jobTitle": "Mgr Maintenance FM Americas",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060018940.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000016916",
      "supervisorName": "TOBY DUNN"
    },
    {
      "employeeID": "0000091382",
      "firstName": "Amy",
      "lastName": "Callahan",
      "displayName": "AMY CALLAHAN",
      "email": "acallaha@fmi.com",
      "jobTitle": "Accenture Managing Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091382.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030596",
      "supervisorName": "DAVE SOVELL"
    },
    {
      "employeeID": "9999990018",
      "firstName": "Unidentified",
      "lastName": "Caller",
      "displayName": "UNIDENTIFIED CALLER",
      "email": "MIS-Helpdesk-NA@fmi.com",
      "jobTitle": "",
      "photoUrl": "",
      "companyDescription": "",
      "supervisorID": null,
      "supervisorName": ""
    },
    {
      "employeeID": "0060076544",
      "firstName": "Ruben",
      "lastName": "Camacho",
      "displayName": "RUBEN CAMACHO",
      "email": "rcamacho6@fmi.com",
      "jobTitle": "JOY GLOBAL SURFACE MINING INC",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076544.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017064",
      "supervisorName": "LISA MEDINA"
    },
    {
      "employeeID": "0060048477",
      "firstName": "Danielle",
      "lastName": "Camp",
      "displayName": "DANIELLE CAMP",
      "email": "dcamp@fmi.com",
      "jobTitle": "Designer/Drafter UG",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060048477.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060076714",
      "supervisorName": "FANUEL BANDA"
    },
    {
      "employeeID": "0060086594",
      "firstName": "Gina",
      "lastName": "Campbell",
      "displayName": "GINA CAMPBELL",
      "email": "gcampbel1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086594.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060068850",
      "firstName": "Tara",
      "lastName": "Campbell",
      "displayName": "TARA CAMPBELL",
      "email": "tcampbel@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060068850.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028343",
      "supervisorName": "ANDREA GEORGOPOULOS"
    },
    {
      "employeeID": "0060069393",
      "firstName": "Renee",
      "lastName": "Campisi",
      "displayName": "RENEE CAMPISI",
      "email": "rcampisi@fmi.com",
      "jobTitle": "Sr Agile Coach",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060069393.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0061001666",
      "firstName": "Ahilyn",
      "lastName": "Campos Moreno",
      "displayName": "AHILYN CAMPOS MORENO",
      "email": "acamposm@fmi.com",
      "jobTitle": "Human Rights & Due Diligence Specialist",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001666.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060072259",
      "supervisorName": "ANDREA VACCARI"
    },
    {
      "employeeID": "0000010948",
      "firstName": "Vertrees",
      "lastName": "Canby",
      "displayName": "MAC CANBY",
      "email": "mcanby@fmi.com",
      "jobTitle": "Sr VP Exploration",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000010948.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017690",
      "supervisorName": "RED CONGER"
    },
    {
      "employeeID": "0060067515",
      "firstName": "Kasi",
      "lastName": "Carey",
      "displayName": "KASI CAREY",
      "email": "kcarey@fmi.com",
      "jobTitle": "Ld Logistics Analyst - Sulfuric Acid",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067515.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0060064675",
      "supervisorName": "ANDREA HARRIS"
    },
    {
      "employeeID": "0060075544",
      "firstName": "Kari",
      "lastName": "Carlson",
      "displayName": "KARI CARLSON",
      "email": "kcarlson3@fmi.com",
      "jobTitle": "Sr Investigator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060075544.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094868",
      "supervisorName": "STEPHEN NEHRING"
    },
    {
      "employeeID": "0060078656",
      "firstName": "Millinea",
      "lastName": "Carlson",
      "displayName": "MILLIE CARLSON",
      "email": "mcarlson@fmi.com",
      "jobTitle": "Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078656.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000091826",
      "supervisorName": "SCOTT KNUTSON"
    },
    {
      "employeeID": "0060072606",
      "firstName": "Michael",
      "lastName": "Carneal",
      "displayName": "MICHAEL CARNEAL",
      "email": "mcarneal@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060072606.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060086859",
      "firstName": "Silvana",
      "lastName": "Carolini Rau",
      "displayName": "SILVANA CAROLINI RAU",
      "email": "scarolin@fmi.com",
      "jobTitle": "Project Controls",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086859.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0000024858",
      "firstName": "Kevin",
      "lastName": "Carpenter",
      "displayName": "KEVIN CARPENTER",
      "email": "kcarpent@fmi.com",
      "jobTitle": "VP Rod & Refining",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000024858.jpg",
      "companyDescription": "PDRC El Paso Refinery",
      "supervisorID": "0000068000",
      "supervisorName": "RANDY NICKLE"
    },
    {
      "employeeID": "0060022989",
      "firstName": "Irma",
      "lastName": "Carrasco",
      "displayName": "IRMA CARRASCO",
      "email": "icarrasc1@fmi.com",
      "jobTitle": "Staffing Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060022989.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000093345",
      "supervisorName": "MELANIE PEIRE"
    },
    {
      "employeeID": "0060064372",
      "firstName": "Elvia",
      "lastName": "Carrillo",
      "displayName": "VICTORIA CARRILLO",
      "email": "vcarrill@fmi.com",
      "jobTitle": "Commodity Trader",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060064372.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000026552",
      "supervisorName": "ROSE HEIRMAN"
    },
    {
      "employeeID": "0060064921",
      "firstName": "Kyle",
      "lastName": "Carrizales",
      "displayName": "KYLE CARRIZALES",
      "email": "kcarriza@fmi.com",
      "jobTitle": "Bus Solution Architect I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060064921.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051441",
      "supervisorName": "PAUL WHITEAKER"
    },
    {
      "employeeID": "0000056973",
      "firstName": "Anthony",
      "lastName": "Carroll",
      "displayName": "TONY CARROLL",
      "email": "tcarroll1@fmi.com",
      "jobTitle": "Mgr HR International",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000056973.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000085658",
      "supervisorName": "MEGAN PATRON"
    },
    {
      "employeeID": "0060030479",
      "firstName": "Daniel",
      "lastName": "Carroll",
      "displayName": "DAN CARROLL",
      "email": "dcarroll@fmi.com",
      "jobTitle": "Mgr New Product & App Development",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060030479.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000056295",
      "supervisorName": "DAVID ELLIOTT"
    },
    {
      "employeeID": "0060064992",
      "firstName": "Kimberly",
      "lastName": "Carter",
      "displayName": "KIMBERLY CARTER",
      "email": "kcarter1@fmi.com",
      "jobTitle": "Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060064992.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060050032",
      "supervisorName": "LORI HIGUERA"
    },
    {
      "employeeID": "0000052844",
      "firstName": "Richard",
      "lastName": "Carter",
      "displayName": "RICK CARTER",
      "email": "rcarter@fmi.com",
      "jobTitle": "Mgr Accounting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000052844.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024216",
      "supervisorName": "KENT ALME"
    },
    {
      "employeeID": "0061004016",
      "firstName": "Sandy",
      "lastName": "Casement",
      "displayName": "SANDY CASEMENT",
      "email": "scasemen1@fmi.com",
      "jobTitle": "Government Relations Advisor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061004016.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094443",
      "supervisorName": "RICHARD BARK"
    },
    {
      "employeeID": "0000063894",
      "firstName": "Kurt",
      "lastName": "Casper",
      "displayName": "KURT CASPER",
      "email": "kcasper@fmi.com",
      "jobTitle": "Dir International Tax",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000063894.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052232",
      "supervisorName": "HUGH DONAHUE"
    },
    {
      "employeeID": "0061002291",
      "firstName": "Lawrence",
      "lastName": "Cassady",
      "displayName": "LARRY CASSADY",
      "email": "lcassady@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002291.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0000085055",
      "firstName": "Timothy",
      "lastName": "Casten",
      "displayName": "TIM CASTEN",
      "email": "tcasten@fmi.com",
      "jobTitle": "VP U/G Planning",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085055.JPG",
      "companyDescription": "International Administrat",
      "supervisorID": "0000085369",
      "supervisorName": "RICHARD ADKERSON"
    },
    {
      "employeeID": "0060065432",
      "firstName": "Fravelyn",
      "lastName": "Castillo",
      "displayName": "FRAVELYN CASTILLO",
      "email": "fcastill4@fmi.com",
      "jobTitle": "PMO Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065432.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060050084",
      "supervisorName": "KATELYN GLEESON"
    },
    {
      "employeeID": "0060071461",
      "firstName": "Jordi",
      "lastName": "Castillo",
      "displayName": "JORDI CASTILLO",
      "email": "jcastill4@fmi.com",
      "jobTitle": "SuccessFactors Delivery Executive",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060071461.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068782",
      "supervisorName": "REMI BRANDEBOURG"
    },
    {
      "employeeID": "0060068929",
      "firstName": "Omar",
      "lastName": "Castillo",
      "displayName": "OMAR CASTILLO",
      "email": "ocastill1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060068929.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060085024",
      "firstName": "Anthony",
      "lastName": "Castro",
      "displayName": "ANTHONY CASTRO",
      "email": "acastro5@fmi.com",
      "jobTitle": "Expeditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085024.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000013819",
      "supervisorName": "RENE REYES"
    },
    {
      "employeeID": "0060089334",
      "firstName": "Jesus",
      "lastName": "Castro",
      "displayName": "JESUS CASTRO",
      "email": "jcastro8@fmi.com",
      "jobTitle": "ROD & COMPANY",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089334.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060057967",
      "firstName": "Michael",
      "lastName": "Catalano",
      "displayName": "MICHAEL CATALANO",
      "email": "mcatalan@fmi.com",
      "jobTitle": "Data Scientist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060057967.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060050437",
      "supervisorName": "MICHAEL BISCHOF"
    },
    {
      "employeeID": "0000057353",
      "firstName": "Robert",
      "lastName": "Catron",
      "displayName": "ROBERT CATRON",
      "email": "rcatron@fmi.com",
      "jobTitle": "Bus Solution Architect III",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000057353.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051441",
      "supervisorName": "PAUL WHITEAKER"
    },
    {
      "employeeID": "0060065584",
      "firstName": "Camila",
      "lastName": "Cavalcanti",
      "displayName": "CAMILA CAVALCANTI",
      "email": "ccavalca@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065584.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060070811",
      "firstName": "Rebecca",
      "lastName": "Caywood",
      "displayName": "REBECCA CAYWOOD",
      "email": "rcaywood1@fmi.com",
      "jobTitle": "Sr Accounting Clerk",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060070811.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015474",
      "supervisorName": "STACY COSTELLO"
    },
    {
      "employeeID": "0000085651",
      "firstName": "Monique",
      "lastName": "Cenac",
      "displayName": "MONIQUE CENAC",
      "email": "mcenac@fmi.com",
      "jobTitle": "Asst Gen Counsel & Corp Secret...",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085651.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000986346",
      "supervisorName": "DOUGLAS CURRAULT"
    },
    {
      "employeeID": "0061000134",
      "firstName": "Monique",
      "lastName": "Cenac",
      "displayName": "MONIQUE CENAC",
      "email": "mcenac1@fmi.com",
      "jobTitle": "Asst Gen Counsel & Corp Secretary",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061000134.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000986346",
      "supervisorName": "DOUGLAS CURRAULT"
    },
    {
      "employeeID": "0000093049",
      "firstName": "Albert",
      "lastName": "Cha",
      "displayName": "ALBERT CHA",
      "email": "acha@fmi.com",
      "jobTitle": "Defender ATP Technical Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000093049.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094981",
      "supervisorName": "TINA SLANKAS"
    },
    {
      "employeeID": "0060083292",
      "firstName": "James",
      "lastName": "Chakan",
      "displayName": "JAMES CHAKAN",
      "email": "jchakan@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083292.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060054114",
      "supervisorName": "BRONWYN ROMANO"
    },
    {
      "employeeID": "0060059707",
      "firstName": "Colin",
      "lastName": "Chalmers",
      "displayName": "COLIN CHALMERS",
      "email": "cchalmer@fmi.com",
      "jobTitle": "Mgr Project Controls II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060059707.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030108",
      "supervisorName": "DEBBIE DUNHAM"
    },
    {
      "employeeID": "0000085609",
      "firstName": "Donald",
      "lastName": "Chamberlain",
      "displayName": "DON CHAMBERLAIN",
      "email": "dchamber@fmi.com",
      "jobTitle": "Mgr Environment Operations",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085609.jpg",
      "companyDescription": "International Administrat",
      "supervisorID": "0000054104",
      "supervisorName": "DAVID NORRISS"
    },
    {
      "employeeID": "0000067020",
      "firstName": "Christopher",
      "lastName": "Chambers",
      "displayName": "CHRIS CHAMBERS",
      "email": "cchamber@fmi.com",
      "jobTitle": "Dir Sus Prgrms & Ent Risk Mgmt",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067020.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000050843",
      "supervisorName": "BILL COBB"
    },
    {
      "employeeID": "0000011491",
      "firstName": "Jeffrey",
      "lastName": "Champ",
      "displayName": "JEFF CHAMP",
      "email": "jchamp@fmi.com",
      "jobTitle": "Dir Enterprise Architecture & FMOG",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011491.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000030596",
      "supervisorName": "DAVE SOVELL"
    },
    {
      "employeeID": "0000086572",
      "firstName": "Darlene",
      "lastName": "Chan",
      "displayName": "DARLENE CHAN",
      "email": "dchan@fmi.com",
      "jobTitle": "Admin Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086572.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000054062",
      "supervisorName": "GREG PROBST"
    },
    {
      "employeeID": "0060078324",
      "firstName": "Abby",
      "lastName": "Chandler",
      "displayName": "ABBY CHANDLER",
      "email": "achandle@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078324.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060080047",
      "firstName": "Manimaran",
      "lastName": "Chandrasekar",
      "displayName": "MANIMARAN CHANDRASEKAR",
      "email": "mchandra@fmi.com",
      "jobTitle": "Technical Architect",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080047.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0000018777",
      "firstName": "Sharon",
      "lastName": "Chanez",
      "displayName": "SHARON CHANEZ",
      "email": "schanez@fmi.com",
      "jobTitle": "Sr Spv Accounts Payable",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000018777.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000096009",
      "supervisorName": "SUSAN BACHLER"
    },
    {
      "employeeID": "0060088370",
      "firstName": "Justin",
      "lastName": "Chaplin",
      "displayName": "JUSTIN CHAPLIN",
      "email": "jchaplin@fmi.com",
      "jobTitle": "Contract Recruiter",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088370.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053133",
      "supervisorName": "VALERIE BEACH"
    },
    {
      "employeeID": "0060087699",
      "firstName": "James",
      "lastName": "Chau",
      "displayName": "JAMES CHAU",
      "email": "jchau@fmi.com",
      "jobTitle": "Engineering Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087699.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0060076400",
      "firstName": "Jennifer",
      "lastName": "Chaudhry",
      "displayName": "JENNIFER CHAUDHRY",
      "email": "jchaudhr@fmi.com",
      "jobTitle": "Executive Secretary",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076400.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000010948",
      "supervisorName": "MAC CANBY"
    },
    {
      "employeeID": "0000023289",
      "firstName": "Deborah",
      "lastName": "Chauppetta",
      "displayName": "DEBBY CHAUPPETTA",
      "email": "dchauppe@fmi.com",
      "jobTitle": "Dir Executive Services",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000023289.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085369",
      "supervisorName": "RICHARD ADKERSON"
    },
    {
      "employeeID": "0061000119",
      "firstName": "Doreen",
      "lastName": "Chavarria",
      "displayName": "DOREEN CHAVARRIA",
      "email": "dchavarr@fmi.com",
      "jobTitle": "Sr HRMS Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000119.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000019403",
      "supervisorName": "NATACHA PAGE"
    },
    {
      "employeeID": "0060043454",
      "firstName": "Eli",
      "lastName": "Chavez",
      "displayName": "ELI CHAVEZ",
      "email": "echavez4@fmi.com",
      "jobTitle": "Kokkola SharePoint Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060043454.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065010",
      "supervisorName": "JAMES PATTERSON"
    },
    {
      "employeeID": "0060042136",
      "firstName": "Angela",
      "lastName": "Cheatham",
      "displayName": "ANGELA CHEATHAM",
      "email": "acheatha@fmi.com",
      "jobTitle": "Facilities Clerk",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060042136.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000016865",
      "supervisorName": "JANICE SINGLETON"
    },
    {
      "employeeID": "0060077128",
      "firstName": "Sai Charan Reddy",
      "lastName": "Chekkara",
      "displayName": "SAI CHARAN REDDY CHEKKARA",
      "email": "schekkar@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077128.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000077072",
      "firstName": "Xiwen",
      "lastName": "Chen",
      "displayName": "XIWEN CHEN",
      "email": "xchen@fmi.com",
      "jobTitle": "CM Intl Mgr Acct/Admin",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000077072.jpg",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0000091612",
      "supervisorName": "JEFF LIANG"
    },
    {
      "employeeID": "0060031185",
      "firstName": "Kathryn",
      "lastName": "Cheney",
      "displayName": "KATHRYN CHENEY",
      "email": "kcheney@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060031185.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000011706",
      "supervisorName": "SHAWN LYONS"
    },
    {
      "employeeID": "0000091637",
      "firstName": "James",
      "lastName": "Chergey",
      "displayName": "JAMES CHERGEY",
      "email": "jchergey@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091637.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060070587",
      "firstName": "Tirupathaiah",
      "lastName": "Chilakala",
      "displayName": "TIRUPATHAIAH CHILAKALA",
      "email": "tchilaka@fmi.com",
      "jobTitle": "Support Technician",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060070587.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062697",
      "supervisorName": "ANDREW GLUVNA"
    },
    {
      "employeeID": "0060038999",
      "firstName": "Alex",
      "lastName": "Chischilly",
      "displayName": "ALEX CHISCHILLY",
      "email": "achischi@fmi.com",
      "jobTitle": "Ricoh Onsite Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060038999.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068803",
      "supervisorName": "DANIELLE PERRY"
    },
    {
      "employeeID": "0060072791",
      "firstName": "Henry",
      "lastName": "Choi",
      "displayName": "HENRY CHOI",
      "email": "hchoi@fmi.com",
      "jobTitle": "Cisco Systems Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060072791.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042677",
      "supervisorName": "STEIN ERICSSON"
    },
    {
      "employeeID": "0060057082",
      "firstName": "Anchal",
      "lastName": "Chowhan",
      "displayName": "ANCHAL CHOWHAN",
      "email": "achowhan@fmi.com",
      "jobTitle": "Financial Reporting Accounting Spec",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060057082.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054218",
      "supervisorName": "PAT PREJEAN"
    },
    {
      "employeeID": "0000052081",
      "firstName": "Daniel",
      "lastName": "Christensen",
      "displayName": "DANIEL CHRISTENSEN",
      "email": "dchriste@fmi.com",
      "jobTitle": "Mgr Strategic Category Managment",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000052081.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054547",
      "supervisorName": "CYNTHIA BARBER"
    },
    {
      "employeeID": "0060086551",
      "firstName": "David",
      "lastName": "Christensen",
      "displayName": "DAVID CHRISTENSEN",
      "email": "dchriste2@fmi.com",
      "jobTitle": "Recruiter II",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086551.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060076284",
      "supervisorName": "DANELLE MINER"
    },
    {
      "employeeID": "0060068987",
      "firstName": "Paul",
      "lastName": "Christensson",
      "displayName": "PAUL CHRISTENSSON",
      "email": "pchriste@fmi.com",
      "jobTitle": "Azure Cloud Architect",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060068987.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060054327",
      "supervisorName": "ROBERT KIMBERLIN"
    },
    {
      "employeeID": "0000051377",
      "firstName": "Dale",
      "lastName": "Christiansen",
      "displayName": "DALE CHRISTIANSEN",
      "email": "dchristi@fmi.com",
      "jobTitle": "Mgr Financial Analysis",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051377.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000018115",
      "supervisorName": "LEX ZERWAS"
    },
    {
      "employeeID": "0000089523",
      "firstName": "Vimal",
      "lastName": "Christopher",
      "displayName": "VIMAL CHRISTOPHER",
      "email": "vchristo@fmi.com",
      "jobTitle": "BI Developer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000089523.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0060060425",
      "firstName": "Taylor",
      "lastName": "Chugden",
      "displayName": "TAYLOR CHUGDEN",
      "email": "tchugden@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060060425.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000087094",
      "firstName": "Genorie",
      "lastName": "Church",
      "displayName": "GENORIE CHURCH",
      "email": "gchurch@fmi.com",
      "jobTitle": "Travel Documentation Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000087094.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000086485",
      "supervisorName": "MICHELE GANNON"
    },
    {
      "employeeID": "0000091896",
      "firstName": "Craig",
      "lastName": "Churchman",
      "displayName": "CRAIG CHURCHMAN",
      "email": "cchurchm@fmi.com",
      "jobTitle": "Chief Engineer - Planning",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091896.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000015472",
      "supervisorName": "CURTIS MARSHALL"
    },
    {
      "employeeID": "0060059584",
      "firstName": "Yulia",
      "lastName": "Chuyko",
      "displayName": "YULIA CHUYKO",
      "email": "ychuyko@fmi.com",
      "jobTitle": "Sr Compensation Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060059584.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053075",
      "supervisorName": "RYAN NIESZ"
    },
    {
      "employeeID": "0060079400",
      "firstName": "Catherine",
      "lastName": "Clancy",
      "displayName": "CATHERINE CLANCY",
      "email": "cclancy@fmi.com",
      "jobTitle": "OA Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079400.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0060067215",
      "firstName": "Bethany",
      "lastName": "Clark",
      "displayName": "BETHANY CLARK",
      "email": "bclark4@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067215.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0060079224",
      "firstName": "Brian",
      "lastName": "Clark",
      "displayName": "BRIAN CLARK",
      "email": "bclark7@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079224.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060077284",
      "firstName": "Brianna",
      "lastName": "Clark",
      "displayName": "BRIANNA CLARK",
      "email": "bclark@fmi.com",
      "jobTitle": "Contract Sr Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077284.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000017473",
      "supervisorName": "GREG COFFIN"
    },
    {
      "employeeID": "0000093292",
      "firstName": "Frances",
      "lastName": "Clark",
      "displayName": "FRANCES CLARK",
      "email": "fclark@fmi.com",
      "jobTitle": "Recruiter II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000093292.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060079345",
      "supervisorName": "MICHAEL MORALES"
    },
    {
      "employeeID": "0060023260",
      "firstName": "Kelly",
      "lastName": "Clark",
      "displayName": "KELLY CLARK",
      "email": "kclark@fmi.com",
      "jobTitle": "Mgr GSC Contracts Admin",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060023260.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000054547",
      "supervisorName": "CYNTHIA BARBER"
    },
    {
      "employeeID": "0000091624",
      "firstName": "Troy",
      "lastName": "Clarke",
      "displayName": "TROY CLARKE",
      "email": "tclarke@fmi.com",
      "jobTitle": "Engineer II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091624.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000060797",
      "supervisorName": "TAMARA JOHNDROW"
    },
    {
      "employeeID": "0000092206",
      "firstName": "Adam",
      "lastName": "Clarkson",
      "displayName": "ADAM CLARKSON",
      "email": "aclarkso@fmi.com",
      "jobTitle": "Mgr Contract Controls",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092206.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056982",
      "supervisorName": "BRIAN BUTTRAM"
    },
    {
      "employeeID": "0000052843",
      "firstName": "Pamela",
      "lastName": "Clausen",
      "displayName": "PAMELA CLAUSEN",
      "email": "pclausen@fmi.com",
      "jobTitle": "Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000052843.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089445",
      "supervisorName": "FRANCIS MCALLISTER"
    },
    {
      "employeeID": "0000096056",
      "firstName": "Leona",
      "lastName": "Clayton",
      "displayName": "LEONA CLAYTON",
      "email": "lclayton@fmi.com",
      "jobTitle": "Sr Benefits Spec Retire",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000096056.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028334",
      "supervisorName": "RACHAEL LAUFENBERG"
    },
    {
      "employeeID": "0060073369",
      "firstName": "Travis",
      "lastName": "Clement",
      "displayName": "TRAVIS CLEMENT",
      "email": "tclement@fmi.com",
      "jobTitle": "Mgr UAS Program",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060073369.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0060052006",
      "supervisorName": "MORGAN LAMB"
    },
    {
      "employeeID": "0061001422",
      "firstName": "Trevor",
      "lastName": "Cobb",
      "displayName": "TREVOR COBB",
      "email": "tcobb2@fmi.com",
      "jobTitle": "Enterprise Security Architect III -Apps",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001422.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060072604",
      "supervisorName": "VAUDA STANFIELD"
    },
    {
      "employeeID": "0000050843",
      "firstName": "William",
      "lastName": "Cobb",
      "displayName": "BILL COBB",
      "email": "wcobb@fmi.com",
      "jobTitle": "VP Environ Svcs & Sustain Devel",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000050843.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000010314",
      "supervisorName": "STEVE HIGGINS"
    },
    {
      "employeeID": "0000090900",
      "firstName": "Kristina",
      "lastName": "Coburn",
      "displayName": "KRISTINA COBURN",
      "email": "kcoburn@fmi.com",
      "jobTitle": "HR Service Center Rep",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090900.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053282",
      "supervisorName": "SUZANNE PATTISON"
    },
    {
      "employeeID": "0000017473",
      "firstName": "Gregory",
      "lastName": "Coffin",
      "displayName": "GREG COFFIN",
      "email": "gcoffin@fmi.com",
      "jobTitle": "VP Exploration Australia",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000017473.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000010948",
      "supervisorName": "MAC CANBY"
    },
    {
      "employeeID": "0060079294",
      "firstName": "Garyl",
      "lastName": "Cogswell",
      "displayName": "GARYL COGSWELL",
      "email": "gcogswel@fmi.com",
      "jobTitle": "GSC Hub Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079294.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000058233",
      "supervisorName": "TONYA HUGHES"
    },
    {
      "employeeID": "0060072601",
      "firstName": "Aaron",
      "lastName": "Cohen",
      "displayName": "AARON COHEN",
      "email": "acohen@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060072601.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060088830",
      "firstName": "Derek",
      "lastName": "Cohn",
      "displayName": "DEREK COHN",
      "email": "dcohn@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088830.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051441",
      "supervisorName": "PAUL WHITEAKER"
    },
    {
      "employeeID": "0060067031",
      "firstName": "Tyler",
      "lastName": "Cohn",
      "displayName": "TYLER COHN",
      "email": "tcohn@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067031.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000061201",
      "supervisorName": "BRIAN RHINEHART"
    },
    {
      "employeeID": "0000092698",
      "firstName": "Cameron",
      "lastName": "Cole",
      "displayName": "CAMERON COLE",
      "email": "ccole@fmi.com",
      "jobTitle": "Metallurgist II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092698.jpg",
      "companyDescription": "FMC Process Tech Center",
      "supervisorID": "0000090358",
      "supervisorName": "EPHREM GEBREHIWOT"
    },
    {
      "employeeID": "0060033337",
      "firstName": "Jessica",
      "lastName": "Cole",
      "displayName": "JESSICA COLE",
      "email": "jcole1@fmi.com",
      "jobTitle": "Mgr Crp Occpt Hlth & Ind Hygne",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060033337.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030140",
      "supervisorName": "CHRIS ROSE"
    },
    {
      "employeeID": "0000026557",
      "firstName": "Krista",
      "lastName": "Coleman",
      "displayName": "KRISTA COLEMAN",
      "email": "kcoleman@fmi.com",
      "jobTitle": "Mgr Sales Administration",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000026557.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000062753",
      "supervisorName": "JOSHUA ESCOBEDO"
    },
    {
      "employeeID": "0000060006",
      "firstName": "Richard",
      "lastName": "Coleman",
      "displayName": "RICK COLEMAN",
      "email": "rcoleman@fmi.com",
      "jobTitle": "President FM Mining Co",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000060006.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017690",
      "supervisorName": "RED CONGER"
    },
    {
      "employeeID": "0060054001",
      "firstName": "David",
      "lastName": "Coley",
      "displayName": "DAVID COLEY",
      "email": "dcoley@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060054001.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052232",
      "supervisorName": "HUGH DONAHUE"
    },
    {
      "employeeID": "0000051172",
      "firstName": "Delisa",
      "lastName": "Collins",
      "displayName": "DELISA COLLINS",
      "email": "dcollins1@fmi.com",
      "jobTitle": "File Room Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051172.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000018775",
      "supervisorName": "MICHELLE MARTINEZ"
    },
    {
      "employeeID": "0060088962",
      "firstName": "Michael",
      "lastName": "Collins",
      "displayName": "MICHAEL COLLINS",
      "email": "mcollins8@fmi.com",
      "jobTitle": "Consultant Architect",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088962.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0060063118",
      "supervisorName": "TONY PETERSON"
    },
    {
      "employeeID": "0060062481",
      "firstName": "Tracy",
      "lastName": "Collins",
      "displayName": "TRACY COLLINS",
      "email": "tcollins@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060062481.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060073853",
      "supervisorName": "GRETCHEN DONAHUE"
    },
    {
      "employeeID": "0000092708",
      "firstName": "Nicholas",
      "lastName": "Colton",
      "displayName": "NICHOLAS COLTON",
      "email": "ncolton@fmi.com",
      "jobTitle": "Bus Solution Architect I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092708.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051441",
      "supervisorName": "PAUL WHITEAKER"
    },
    {
      "employeeID": "0000086629",
      "firstName": "Jaime",
      "lastName": "Comeaux",
      "displayName": "JAIME COMEAUX",
      "email": "jcomeaux@fmi.com",
      "jobTitle": "Ld Compensation Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086629.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000086118",
      "supervisorName": "TIFFANY GIFFORD"
    },
    {
      "employeeID": "0060039113",
      "firstName": "Brian",
      "lastName": "Comiskey",
      "displayName": "BRIAN COMISKEY",
      "email": "bcomiske@fmi.com",
      "jobTitle": "Accountant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060039113.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000011687",
      "supervisorName": "BILLY BOUDREAUX"
    },
    {
      "employeeID": "0061001923",
      "firstName": "Ramon",
      "lastName": "Concha",
      "displayName": "RAMON CONCHA",
      "email": "rconcha@fmi.com",
      "jobTitle": "PT Temporary Non-Summer Intern",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001923.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088468",
      "supervisorName": "ANDREW SUSSMAN"
    },
    {
      "employeeID": "0000017690",
      "firstName": "Harry",
      "lastName": "Conger",
      "displayName": "RED CONGER",
      "email": "rconger@fmi.com",
      "jobTitle": "President & COO - Americas",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000017690.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000085369",
      "supervisorName": "RICHARD ADKERSON"
    },
    {
      "employeeID": "0060087347",
      "firstName": "David",
      "lastName": "Connelly",
      "displayName": "DAVID CONNELLY",
      "email": "dconnell1@fmi.com",
      "jobTitle": "Lead Planner",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087347.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0000096327",
      "firstName": "Gina",
      "lastName": "Consiglio",
      "displayName": "GINA CONSIGLIO",
      "email": "gconsigl@fmi.com",
      "jobTitle": "Accounting Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000096327.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015474",
      "supervisorName": "STACY COSTELLO"
    },
    {
      "employeeID": "0000088470",
      "firstName": "Dave",
      "lastName": "Conway",
      "displayName": "DAVE CONWAY",
      "email": "dconway@fmi.com",
      "jobTitle": "Procurement Ld",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088470.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089084",
      "supervisorName": "AMANDA HERNANDEZ"
    },
    {
      "employeeID": "0000065857",
      "firstName": "Henry",
      "lastName": "Cook",
      "displayName": "HENRY COOK",
      "email": "hcook@fmi.com",
      "jobTitle": "Resource Development Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000065857.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000085592",
      "supervisorName": "JAMES YOUNG"
    },
    {
      "employeeID": "0000057644",
      "firstName": "Allen",
      "lastName": "Cooper",
      "displayName": "ALLEN COOPER",
      "email": "acooper@fmi.com",
      "jobTitle": "Chief Environmental Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000057644.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000010402",
      "supervisorName": "EDWARD HALL"
    },
    {
      "employeeID": "0061001091",
      "firstName": "Hector",
      "lastName": "Cooper",
      "displayName": "HECTOR COOPER",
      "email": "hcooper@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001091.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052844",
      "supervisorName": "RICK CARTER"
    },
    {
      "employeeID": "0000095496",
      "firstName": "Jessica",
      "lastName": "Copeland",
      "displayName": "JESSICA COPELAND",
      "email": "jcopelan@fmi.com",
      "jobTitle": "Sr Cash Management Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000095496.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000067962",
      "supervisorName": "PAUL MALLERY"
    },
    {
      "employeeID": "0000052737",
      "firstName": "Dale",
      "lastName": "Coray",
      "displayName": "DALE CORAY",
      "email": "dcoray@fmi.com",
      "jobTitle": "Spt Operational Improvement - Mill Mnt",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000052737.JPG",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000016916",
      "supervisorName": "TOBY DUNN"
    },
    {
      "employeeID": "0061001647",
      "firstName": "Edwin",
      "lastName": "Corkhill",
      "displayName": "FRANK CORKHILL",
      "email": "fcorkhil@fmi.com",
      "jobTitle": "Chief Hydrogeologist",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001647.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060037502",
      "supervisorName": "SANDY FABRITZ"
    },
    {
      "employeeID": "0000090373",
      "firstName": "Michael",
      "lastName": "Corrao",
      "displayName": "MICHAEL CORRAO",
      "email": "mcorrao@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090373.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000013512",
      "firstName": "Lawrence",
      "lastName": "Corte",
      "displayName": "LARRY CORTE",
      "email": "lcorte@fmi.com",
      "jobTitle": "Sr Counsel l",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000013512.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000986346",
      "supervisorName": "DOUGLAS CURRAULT"
    },
    {
      "employeeID": "0060090950",
      "firstName": "Tristan",
      "lastName": "Cortez",
      "displayName": "TRISTAN CORTEZ",
      "email": "tcortez@fmi.com",
      "jobTitle": "UX Tech",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060090950.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0060063118",
      "supervisorName": "TONY PETERSON"
    },
    {
      "employeeID": "0061000916",
      "firstName": "James",
      "lastName": "Costello",
      "displayName": "JAMES COSTELLO",
      "email": "jcostell1@fmi.com",
      "jobTitle": "Chief Information Security Officer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061000916.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000081075",
      "supervisorName": "BERT ODINET"
    },
    {
      "employeeID": "0000015474",
      "firstName": "Stacy",
      "lastName": "Costello",
      "displayName": "STACY COSTELLO",
      "email": "scostell@fmi.com",
      "jobTitle": "Spv Accounts Payable",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000015474.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000096009",
      "supervisorName": "SUSAN BACHLER"
    },
    {
      "employeeID": "0000050123",
      "firstName": "Carl",
      "lastName": "Cox",
      "displayName": "CARL COX",
      "email": "ccox@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000050123.JPG",
      "companyDescription": "Climax Eng MaterialsLLC",
      "supervisorID": "0000013980",
      "supervisorName": "ANAND RAMAN"
    },
    {
      "employeeID": "0060076758",
      "firstName": "Owen",
      "lastName": "Cox",
      "displayName": "OWEN COX",
      "email": "ocox@fmi.com",
      "jobTitle": "Project Controls Cost Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076758.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060086996",
      "firstName": "Deanne",
      "lastName": "Craig",
      "displayName": "DEANNE CRAIG",
      "email": "dcraig@fmi.com",
      "jobTitle": "Logistics Services Specialist",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086996.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060073853",
      "supervisorName": "GRETCHEN DONAHUE"
    },
    {
      "employeeID": "0060050327",
      "firstName": "Robert",
      "lastName": "Creighton",
      "displayName": "ROBERT CREIGHTON",
      "email": "rcreight@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060050327.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060064999",
      "firstName": "Reannon",
      "lastName": "Crider",
      "displayName": "REANNON CRIDER",
      "email": "rcrider@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060064999.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060088875",
      "firstName": "Tim",
      "lastName": "Cromwell",
      "displayName": "TIM CROMWELL",
      "email": "tcromwel@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088875.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000013819",
      "supervisorName": "RENE REYES"
    },
    {
      "employeeID": "0060080595",
      "firstName": "Matt",
      "lastName": "Cronin",
      "displayName": "MATT CRONIN",
      "email": "mcronin@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080595.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028334",
      "supervisorName": "RACHAEL LAUFENBERG"
    },
    {
      "employeeID": "0060086074",
      "firstName": "Andrew",
      "lastName": "Cronje",
      "displayName": "ANDREW CRONJE",
      "email": "acronje@fmi.com",
      "jobTitle": "Project Control Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086074.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0000015637",
      "firstName": "Clinton",
      "lastName": "Crotts",
      "displayName": "CLINTON CROTTS",
      "email": "ccrotts@fmi.com",
      "jobTitle": "Proj Mgr Engineering II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000015637.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000063630",
      "supervisorName": "ROB ALBRIGHT"
    },
    {
      "employeeID": "0060075962",
      "firstName": "Marlo",
      "lastName": "Cruz",
      "displayName": "MARLO CRUZ",
      "email": "mcruz3@fmi.com",
      "jobTitle": "Project Controls Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060075962.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0000014622",
      "firstName": "Melyssa",
      "lastName": "Csoban",
      "displayName": "MELYSSA CSOBAN",
      "email": "mcsoban@fmi.com",
      "jobTitle": "Sr Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000014622.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060065305",
      "supervisorName": "BRENT HANSEN"
    },
    {
      "employeeID": "0060048305",
      "firstName": "Delfena",
      "lastName": "Cuadra",
      "displayName": "DELFENA CUADRA",
      "email": "dcuadra@fmi.com",
      "jobTitle": "Sr Payroll Clerk",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060048305.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000060444",
      "supervisorName": "CHRIS JORDAN"
    },
    {
      "employeeID": "0060075976",
      "firstName": "Simon",
      "lastName": "Cuadra",
      "displayName": "SIMON CUADRA",
      "email": "scuadra@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060075976.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000061262",
      "supervisorName": "MICHAEL HULSE"
    },
    {
      "employeeID": "0060033024",
      "firstName": "Colin",
      "lastName": "Cunningham",
      "displayName": "COLIN CUNNINGHAM",
      "email": "ccunning@fmi.com",
      "jobTitle": "Sr Mechanical Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060033024.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000016311",
      "supervisorName": "JIM TAYLOR"
    },
    {
      "employeeID": "0060087941",
      "firstName": "Nathan",
      "lastName": "Curl",
      "displayName": "NATHAN CURL",
      "email": "ncurl@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087941.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0061001255",
      "firstName": "Andrew",
      "lastName": "Curran",
      "displayName": "ANDREW CURRAN",
      "email": "acurran@fmi.com",
      "jobTitle": "Inventory Controller",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001255.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000092974",
      "supervisorName": "RAGHU CHENNA"
    },
    {
      "employeeID": "0000986346",
      "firstName": "Douglas",
      "lastName": "Currault",
      "displayName": "DOUGLAS CURRAULT",
      "email": "dcurraul@fmi.com",
      "jobTitle": "Sr VP & General Counsel",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000986346.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051953",
      "supervisorName": "KATHLEEN QUIRK"
    },
    {
      "employeeID": "0000054120",
      "firstName": "Claudette",
      "lastName": "Curry",
      "displayName": "CLAUDETTE CURRY",
      "email": "ccurry@fmi.com",
      "jobTitle": "Sr Tax Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054120.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051658",
      "supervisorName": "BILL VON KOLEN"
    },
    {
      "employeeID": "0060074994",
      "firstName": "John",
      "lastName": "Cyr",
      "displayName": "JP CYR",
      "email": "jcyr@fmi.com",
      "jobTitle": "Temporary Non-Summer Intern",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060074994.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060052006",
      "supervisorName": "MORGAN LAMB"
    },
    {
      "employeeID": "0060046379",
      "firstName": "Ajay",
      "lastName": "Dadheech",
      "displayName": "AJAY DADHEECH",
      "email": "adadheec@fmi.com",
      "jobTitle": "Data Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060046379.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060050437",
      "supervisorName": "MICHAEL BISCHOF"
    },
    {
      "employeeID": "0000011474",
      "firstName": "Heidi",
      "lastName": "Dale",
      "displayName": "HEIDI DALE",
      "email": "hdale@fmi.com",
      "jobTitle": "Dir Compliance & Facilities Admin",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011474.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051215",
      "supervisorName": "DEAN FALGOUST"
    },
    {
      "employeeID": "0060081325",
      "firstName": "David",
      "lastName": "Damron",
      "displayName": "DAVID DAMRON",
      "email": "ddamron1@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081325.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060053391",
      "firstName": "Kali",
      "lastName": "Dandapani",
      "displayName": "KALI DANDAPANI",
      "email": "kdandapa@fmi.com",
      "jobTitle": "BI Developer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060053391.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0060081019",
      "firstName": "Akash",
      "lastName": "Dande",
      "displayName": "AKASH DANDE",
      "email": "adande@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081019.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060087818",
      "firstName": "Robert",
      "lastName": "Daniel",
      "displayName": "ROBERT DANIEL",
      "email": "rdaniel3@fmi.com",
      "jobTitle": "Project Controls Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087818.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060084120",
      "firstName": "Lucy",
      "lastName": "Daniels Eze",
      "displayName": "LUCY DANIELS EZE",
      "email": "ldaniels@fmi.com",
      "jobTitle": "Recruiter I",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060084120.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060076284",
      "supervisorName": "DANELLE MINER"
    },
    {
      "employeeID": "0060085461",
      "firstName": "Mike",
      "lastName": "Danielson",
      "displayName": "MIKE DANIELSON",
      "email": "mdaniels1@fmi.com",
      "jobTitle": "Mining Consultant",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085461.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0060076714",
      "supervisorName": "FANUEL BANDA"
    },
    {
      "employeeID": "0060086315",
      "firstName": "Scott",
      "lastName": "Danklefsen",
      "displayName": "SCOTT DANKLEFSEN",
      "email": "sdanklef@fmi.com",
      "jobTitle": "Credit Analyst",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086315.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017273",
      "supervisorName": "JON BORGE"
    },
    {
      "employeeID": "0060059127",
      "firstName": "Sean",
      "lastName": "Dargan",
      "displayName": "SEAN DARGAN",
      "email": "sdargan@fmi.com",
      "jobTitle": "Business Analyst - Mine Planning",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060059127.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000085592",
      "supervisorName": "JAMES YOUNG"
    },
    {
      "employeeID": "0060078901",
      "firstName": "Lane",
      "lastName": "Davern",
      "displayName": "LANE DAVERN",
      "email": "ldavern@fmi.com",
      "jobTitle": "Commodity Trader",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078901.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000026552",
      "supervisorName": "ROSE HEIRMAN"
    },
    {
      "employeeID": "0000085575",
      "firstName": "Edward",
      "lastName": "Davidson",
      "displayName": "SCOTT DAVIDSON",
      "email": "sdavidso@fmi.com",
      "jobTitle": "Sr Mgr Operational Accounting & Analysis",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085575.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085046",
      "supervisorName": "BOB HELM"
    },
    {
      "employeeID": "0000092597",
      "firstName": "Clayton",
      "lastName": "Davis",
      "displayName": "CLAYTON DAVIS",
      "email": "cdavis1@fmi.com",
      "jobTitle": "Mgr Internal Communications-Tech Project",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092597.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000050020",
      "supervisorName": "RUTHANNE VAN DYKE"
    },
    {
      "employeeID": "0000093667",
      "firstName": "Sandra",
      "lastName": "Davis",
      "displayName": "SANDRA DAVIS",
      "email": "sdavis2@fmi.com",
      "jobTitle": "Social Responsibility Team Coo",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000093667.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000010897",
      "supervisorName": "TRACY ABERNETHY"
    },
    {
      "employeeID": "0000015376",
      "firstName": "Stacey",
      "lastName": "Davis",
      "displayName": "STACEY DAVIS",
      "email": "sdavis10@fmi.com",
      "jobTitle": "SOUTHWEST IRRIGATION LLC",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000015376.JPG",
      "companyDescription": "Morenci Mining JV",
      "supervisorID": "0000056761",
      "supervisorName": "WILLIAM WEARNE"
    },
    {
      "employeeID": "0000092014",
      "firstName": "Teri",
      "lastName": "Davis",
      "displayName": "TERI DAVIS",
      "email": "tdavis@fmi.com",
      "jobTitle": "Staffing Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092014.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060079345",
      "supervisorName": "MICHAEL MORALES"
    },
    {
      "employeeID": "0061000321",
      "firstName": "Alexander",
      "lastName": "Day",
      "displayName": "ALEX DAY",
      "email": "aday@fmi.com",
      "jobTitle": "Sr Process Automation Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000321.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028905",
      "supervisorName": "ARI SUPOMO"
    },
    {
      "employeeID": "0060078551",
      "firstName": "Ruben",
      "lastName": "De La Garza",
      "displayName": "RUBEN DE LA GARZA",
      "email": "rdelagar@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078551.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055243",
      "supervisorName": "JOCHEN GLISS"
    },
    {
      "employeeID": "0060069384",
      "firstName": "Alvaro",
      "lastName": "De La Mora",
      "displayName": "ALVARO DE LA MORA",
      "email": "adelamor@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060069384.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060079333",
      "firstName": "Mark",
      "lastName": "De Los Reyes",
      "displayName": "MARK DE LOS REYES",
      "email": "mdelosre@fmi.com",
      "jobTitle": "Catalog Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079333.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000018239",
      "supervisorName": "TERESA YBARRA"
    },
    {
      "employeeID": "0060025043",
      "firstName": "David",
      "lastName": "Dean",
      "displayName": "DAVID DEAN",
      "email": "ddean@fmi.com",
      "jobTitle": "Sr Project Controls/Admin Mgr",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060025043.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000085055",
      "supervisorName": "TIM CASTEN"
    },
    {
      "employeeID": "0000062783",
      "firstName": "Andrew",
      "lastName": "Deas",
      "displayName": "ANDREW DEAS",
      "email": "adeas@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000062783.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060083237",
      "firstName": "Paul",
      "lastName": "Dee",
      "displayName": "PAUL DEE",
      "email": "pdee@fmi.com",
      "jobTitle": "Lead Cost",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083237.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0000054194",
      "firstName": "Sheila",
      "lastName": "Deely",
      "displayName": "SHEILA DEELY",
      "email": "sdeely@fmi.com",
      "jobTitle": "Asst General Counsel I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054194.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089905",
      "supervisorName": "SCOTT STATHAM"
    },
    {
      "employeeID": "0000086301",
      "firstName": "Ryan",
      "lastName": "Del Pino",
      "displayName": "RYAN DEL PINO",
      "email": "rdelpino@fmi.com",
      "jobTitle": "Accounting Clerk",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086301.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000086665",
      "supervisorName": "BRIAN PIGLIA"
    },
    {
      "employeeID": "0000085449",
      "firstName": "Brody",
      "lastName": "Delcambre",
      "displayName": "BRODY DELCAMBRE",
      "email": "bdelcamb@fmi.com",
      "jobTitle": "Sr Dir Enterprise Infr Delivery",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085449.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030596",
      "supervisorName": "DAVE SOVELL"
    },
    {
      "employeeID": "0060078208",
      "firstName": "Claudia",
      "lastName": "Delgado",
      "displayName": "CLAUDIA DELGADO",
      "email": "cdelgado2@fmi.com",
      "jobTitle": "SAP HCM Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078208.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068782",
      "supervisorName": "REMI BRANDEBOURG"
    },
    {
      "employeeID": "0060065566",
      "firstName": "Felipe",
      "lastName": "Delgado",
      "displayName": "FELIPE DELGADO",
      "email": "fdelgado7@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065566.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060086702",
      "firstName": "Jorge",
      "lastName": "Delvasto",
      "displayName": "JORGE DELVASTO",
      "email": "jdelvast@fmi.com",
      "jobTitle": "SCCM Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086702.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094810",
      "supervisorName": "PRADEEP KUMAR PARIDA"
    },
    {
      "employeeID": "0060041220",
      "firstName": "Cynthia",
      "lastName": "DeMarcus",
      "displayName": "CYNTHIA DEMARCUS",
      "email": "cdemarcu@fmi.com",
      "jobTitle": "Sr Inventory Controller",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060041220.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088472",
      "supervisorName": "RANDY WAWRZYNIAK-FRY"
    },
    {
      "employeeID": "0000066956",
      "firstName": "Ruth",
      "lastName": "DeMore",
      "displayName": "RUTH DEMORE",
      "email": "rdemore@fmi.com",
      "jobTitle": "Mgr Strategic Category Managment",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000066956.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030108",
      "supervisorName": "DEBBIE DUNHAM"
    },
    {
      "employeeID": "0060051618",
      "firstName": "Angela",
      "lastName": "Dempsey",
      "displayName": "ANGIE DEMPSEY",
      "email": "adempsey@fmi.com",
      "jobTitle": "Executive Secretary",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060051618.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000011629",
      "supervisorName": "DANNY HUGHES"
    },
    {
      "employeeID": "0000010854",
      "firstName": "Daniel",
      "lastName": "Dempsey",
      "displayName": "DAN DEMPSEY",
      "email": "ddempsey@fmi.com",
      "jobTitle": "Mgr Property Non-Oper",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000010854.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000064031",
      "supervisorName": "CHRIS FRANKS"
    },
    {
      "employeeID": "0060087177",
      "firstName": "Derek",
      "lastName": "Densel",
      "displayName": "DEREK DENSEL",
      "email": "ddensel1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087177.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060070819",
      "firstName": "Ericka",
      "lastName": "Despanie",
      "displayName": "ERICKA DESPANIE",
      "email": "edespani@fmi.com",
      "jobTitle": "Accounting Clerk",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060070819.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000086665",
      "supervisorName": "BRIAN PIGLIA"
    },
    {
      "employeeID": "0060028038",
      "firstName": "Justin",
      "lastName": "DeTemple",
      "displayName": "JUSTIN DETEMPLE",
      "email": "jdetempl@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060028038.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055534",
      "supervisorName": "STEVEN BACASHIHUA"
    },
    {
      "employeeID": "0060027723",
      "firstName": "Philippe",
      "lastName": "Devillebichot",
      "displayName": "PHIL DEVILLEBICHOT",
      "email": "pdeville@fmi.com",
      "jobTitle": "Dir Global Chemical Sales",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060027723.jpg",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0000052931",
      "supervisorName": "BARBARA BUCK"
    },
    {
      "employeeID": "0000055671",
      "firstName": "Steven",
      "lastName": "DeVore",
      "displayName": "STEVE DEVORE",
      "email": "sdevore@fmi.com",
      "jobTitle": "Sr Mgr Consolidation & Analysis",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000055671.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024216",
      "supervisorName": "KENT ALME"
    },
    {
      "employeeID": "0000017401",
      "firstName": "Bradley",
      "lastName": "DeWaard",
      "displayName": "BRADLEY DEWAARD",
      "email": "bdewaard@fmi.com",
      "jobTitle": "Land & Water Resources Coord",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000017401.jpg",
      "companyDescription": "Western Nuclear Inc",
      "supervisorID": "0000013512",
      "supervisorName": "LARRY CORTE"
    },
    {
      "employeeID": "0060015809",
      "firstName": "Edward",
      "lastName": "Dewey",
      "displayName": "PETER DEWEY",
      "email": "pdewey@fmi.com",
      "jobTitle": "Sr Counsel l",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060015809.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000986346",
      "supervisorName": "DOUGLAS CURRAULT"
    },
    {
      "employeeID": "0000061963",
      "firstName": "Stephanie",
      "lastName": "Dewey",
      "displayName": "STEPHANIE DEWEY",
      "email": null,
      "jobTitle": "",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000061963.jpg",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0000052931",
      "supervisorName": "BARBARA BUCK"
    },
    {
      "employeeID": "0060056637",
      "firstName": "Josh",
      "lastName": "DeYoung",
      "displayName": "JOSH DEYOUNG",
      "email": "jdeyoung@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060056637.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060050820",
      "firstName": "William",
      "lastName": "Dias",
      "displayName": "BILL DIAS",
      "email": "bdias1@fmi.com",
      "jobTitle": "Sr Inventory Controller",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060050820.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088472",
      "supervisorName": "RANDY WAWRZYNIAK-FRY"
    },
    {
      "employeeID": "0000086290",
      "firstName": "John",
      "lastName": "Diasselliss",
      "displayName": "JOHN DIASSELLISS",
      "email": "jdiassel@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086290.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060017216",
      "firstName": "Alvaro Gonzalo",
      "lastName": "Diaz",
      "displayName": "ALVARO GONZALO DIAZ",
      "email": "adiazwic@fmi.com",
      "jobTitle": "Global Mgr Raw Materials",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060017216.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000056295",
      "supervisorName": "DAVID ELLIOTT"
    },
    {
      "employeeID": "0060088202",
      "firstName": "Juan",
      "lastName": "Diaz",
      "displayName": "JUAN DIAZ",
      "email": "jdiaz19@fmi.com",
      "jobTitle": "Project Controls Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088202.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0000023723",
      "firstName": "Yvonne",
      "lastName": "Diaz",
      "displayName": "YVONNE DIAZ",
      "email": "ydiaz@fmi.com",
      "jobTitle": "Executive Secretary",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000023723.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000056295",
      "supervisorName": "DAVID ELLIOTT"
    },
    {
      "employeeID": "0000090865",
      "firstName": "Elena",
      "lastName": "DiBiase",
      "displayName": "ELENA DIBIASE",
      "email": "edibiase@fmi.com",
      "jobTitle": "Sr HR Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090865.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000058072",
      "supervisorName": "CHERYL SHIMKO"
    },
    {
      "employeeID": "0061002236",
      "firstName": "Michael",
      "lastName": "Diering",
      "displayName": "MICHAEL DIERING",
      "email": "mdiering@fmi.com",
      "jobTitle": "Sr UG Prd/Cave Planning Eng",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002236.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0060032214",
      "supervisorName": "DREW BEARD"
    },
    {
      "employeeID": "0060087660",
      "firstName": "Putranto",
      "lastName": "Dimas Prasetya",
      "displayName": "PUTRANTO DIMAS PRASETYA",
      "email": "pdimaspr@fmi.com",
      "jobTitle": "Contract Administrator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087660.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060067228",
      "firstName": "Joseph",
      "lastName": "Dionizio",
      "displayName": "JOSEPH DIONIZIO",
      "email": "jdionizi@fmi.com",
      "jobTitle": "HRSC Quality Assurance & Knowledge Spec",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067228.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028334",
      "supervisorName": "RACHAEL LAUFENBERG"
    },
    {
      "employeeID": "0060088429",
      "firstName": "Habib",
      "lastName": "Djalal",
      "displayName": "HABIB DJALAL",
      "email": "hdjalal@fmi.com",
      "jobTitle": "Cost Lead",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088429.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0000067460",
      "firstName": "Marie",
      "lastName": "Djohanne Celiz",
      "displayName": "MARIE DJOHANNE CELIZ",
      "email": "mdjohann@fmi.com",
      "jobTitle": "Geologist/Project Mgr",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067460.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000067485",
      "supervisorName": "JOSE RAMON TANINGCO"
    },
    {
      "employeeID": "0060088578",
      "firstName": "Melisa",
      "lastName": "Djuanda",
      "displayName": "MELISA DJUANDA",
      "email": "mdjuanda@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088578.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000030526",
      "firstName": "Gabriel",
      "lastName": "Doak",
      "displayName": "GABE DOAK",
      "email": "gdoak@fmi.com",
      "jobTitle": "Business Mgr",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030526.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051252",
      "supervisorName": "GRANT WELKER"
    },
    {
      "employeeID": "0000060945",
      "firstName": "Ann",
      "lastName": "Dohse",
      "displayName": "ANN DOHSE",
      "email": "adohse@fmi.com",
      "jobTitle": "Accounting Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000060945.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000018777",
      "supervisorName": "SHARON CHANEZ"
    },
    {
      "employeeID": "0000014335",
      "firstName": "Estevan",
      "lastName": "Dominguez",
      "displayName": "ESTEVAN DOMINGUEZ",
      "email": "edomingu9@fmi.com",
      "jobTitle": "Mgr Commissioning",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000014335.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0060073853",
      "firstName": "Gretchen",
      "lastName": "Donahue",
      "displayName": "GRETCHEN DONAHUE",
      "email": "gdonahue@fmi.com",
      "jobTitle": "Mgr Freight Transportation",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060073853.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060057313",
      "supervisorName": "AARON FRIEDMAN"
    },
    {
      "employeeID": "0000052232",
      "firstName": "Hugh",
      "lastName": "Donahue",
      "displayName": "HUGH DONAHUE",
      "email": "hdonahue@fmi.com",
      "jobTitle": "VP Taxes",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000052232.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051953",
      "supervisorName": "KATHLEEN QUIRK"
    },
    {
      "employeeID": "0060083161",
      "firstName": "Mike",
      "lastName": "Donnelly",
      "displayName": "MIKE DONNELLY",
      "email": "mdonnell@fmi.com",
      "jobTitle": "Project Controls Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083161.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0061001331",
      "firstName": "Robert",
      "lastName": "Donnelly",
      "displayName": "BOB DONNELLY",
      "email": "bdonnell1@fmi.com",
      "jobTitle": "Mgr UAS Program",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001331.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060052006",
      "supervisorName": "MORGAN LAMB"
    },
    {
      "employeeID": "0060033252",
      "firstName": "Kristina",
      "lastName": "Dooley",
      "displayName": "KRISTINA DOOLEY",
      "email": "kdooley1@fmi.com",
      "jobTitle": "Sr Logistics Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060033252.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060073853",
      "supervisorName": "GRETCHEN DONAHUE"
    },
    {
      "employeeID": "0000060427",
      "firstName": "Monica",
      "lastName": "Dorame",
      "displayName": "MONICA DORAME",
      "email": "mdorame@fmi.com",
      "jobTitle": "HR Shared Services Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000060427.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053282",
      "supervisorName": "SUZANNE PATTISON"
    },
    {
      "employeeID": "0060079084",
      "firstName": "Alibek",
      "lastName": "Dostiyarov",
      "displayName": "ALIBEK DOSTIYAROV",
      "email": "adostiya@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079084.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060085886",
      "firstName": "Laura",
      "lastName": "Dotseth",
      "displayName": "LAURA DOTSETH",
      "email": "ldotseth@fmi.com",
      "jobTitle": "Agile Transformation Lead",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085886.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060030270",
      "supervisorName": "KRISTA GOYARTS"
    },
    {
      "employeeID": "0060075366",
      "firstName": "Thomas",
      "lastName": "Dougherty",
      "displayName": "THOMAS DOUGHERTY",
      "email": "tdougher@fmi.com",
      "jobTitle": "Temporary Non-Summer Intern",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060075366.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088015",
      "supervisorName": "LISA TAYLOR"
    },
    {
      "employeeID": "0060034568",
      "firstName": "Andrew",
      "lastName": "Douglas",
      "displayName": "ANDREW DOUGLAS",
      "email": "adouglas@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060034568.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060065416",
      "firstName": "Joseph",
      "lastName": "Dove",
      "displayName": "JOE DOVE",
      "email": "jdove@fmi.com",
      "jobTitle": "Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065416.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000017824",
      "supervisorName": "CINDY BURAS"
    },
    {
      "employeeID": "0060073876",
      "firstName": "Mark",
      "lastName": "Dowling",
      "displayName": "MARK DOWLING",
      "email": "mdowling@fmi.com",
      "jobTitle": "Sr Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060073876.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000061201",
      "supervisorName": "BRIAN RHINEHART"
    },
    {
      "employeeID": "0060083046",
      "firstName": "Stephanie",
      "lastName": "Downes",
      "displayName": "STEPHANIE DOWNES",
      "email": "sdownes@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083046.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000023125",
      "firstName": "Mary",
      "lastName": "Doyle",
      "displayName": "MARY DOYLE",
      "email": "mdoyle@fmi.com",
      "jobTitle": "Accounting Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000023125.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000012013",
      "supervisorName": "KIM SHIPLEY"
    },
    {
      "employeeID": "0060085911",
      "firstName": "Dana",
      "lastName": "Dozark",
      "displayName": "DANA DOZARK",
      "email": "ddozark1@fmi.com",
      "jobTitle": "Document Controller",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085911.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0060086686",
      "firstName": "Chris",
      "lastName": "Dozier",
      "displayName": "CHRIS DOZIER",
      "email": "cdozier@fmi.com",
      "jobTitle": "Analyst",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086686.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053106",
      "supervisorName": "RYAN DUNNE"
    },
    {
      "employeeID": "0000063059",
      "firstName": "Alan",
      "lastName": "Drake",
      "displayName": "ALAN DRAKE",
      "email": "adrake@fmi.com",
      "jobTitle": "Sr Logistics Analyst - Sulfuric Acid",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000063059.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0060067515",
      "supervisorName": "KASI CAREY"
    },
    {
      "employeeID": "0060081292",
      "firstName": "Melissa",
      "lastName": "Drew",
      "displayName": "MELISSA DREW",
      "email": "mdrew@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081292.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060056795",
      "firstName": "Blake",
      "lastName": "Driver",
      "displayName": "BLAKE DRIVER",
      "email": "bdriver@fmi.com",
      "jobTitle": "Transportation Operations",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060056795.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060073853",
      "supervisorName": "GRETCHEN DONAHUE"
    },
    {
      "employeeID": "0060087452",
      "firstName": "Alex",
      "lastName": "Drury",
      "displayName": "ALEX DRURY",
      "email": "adrury@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087452.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060064201",
      "firstName": "Dennis",
      "lastName": "Drury",
      "displayName": "DENNIS DRURY",
      "email": "ddrury@fmi.com",
      "jobTitle": "Mgr Knowledge Management",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060064201.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000093464",
      "supervisorName": "GEORGIA LYSAY"
    },
    {
      "employeeID": "0000086190",
      "firstName": "Leonard",
      "lastName": "Drury",
      "displayName": "LEONARD DRURY",
      "email": "ldrury@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086190.jpg",
      "companyDescription": "McMoRan Oil & Gas LLC",
      "supervisorID": "0060035871",
      "supervisorName": "KEITH MCFARLAND"
    },
    {
      "employeeID": "0060087413",
      "firstName": "David",
      "lastName": "du Plessis",
      "displayName": "DAVID DU PLESSIS",
      "email": "ddupless@fmi.com",
      "jobTitle": "UX Designer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087413.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0060063118",
      "supervisorName": "TONY PETERSON"
    },
    {
      "employeeID": "0060081018",
      "firstName": "Neha",
      "lastName": "Dubey",
      "displayName": "NEHA DUBEY",
      "email": "ndubey@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081018.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000058200",
      "firstName": "Raymond",
      "lastName": "Dudas",
      "displayName": "RAYMOND DUDAS",
      "email": "rdudas@fmi.com",
      "jobTitle": "IT Security Analyst I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000058200.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060065452",
      "supervisorName": "JEFF PICK"
    },
    {
      "employeeID": "0061003564",
      "firstName": "Troy",
      "lastName": "Duffield",
      "displayName": "TROY DUFFIELD",
      "email": "tduffiel@fmi.com",
      "jobTitle": "Ld Cloud Architect",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003564.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030102",
      "supervisorName": "CHUCK SEARLE"
    },
    {
      "employeeID": "0060088437",
      "firstName": "John",
      "lastName": "Dugas",
      "displayName": "JOHN DUGAS",
      "email": "jdugas@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088437.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060040095",
      "firstName": "Chris",
      "lastName": "Dukarm",
      "displayName": "CHRIS DUKARM",
      "email": "cdukarm@fmi.com",
      "jobTitle": "Sr Network Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060040095.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042677",
      "supervisorName": "STEIN ERICSSON"
    },
    {
      "employeeID": "0000030174",
      "firstName": "Diane",
      "lastName": "DuLong",
      "displayName": "DIANE DULONG",
      "email": "ddulong@fmi.com",
      "jobTitle": "Accounting Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030174.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000063845",
      "supervisorName": "RYAN FORMAN"
    },
    {
      "employeeID": "0000056621",
      "firstName": "Jeannie",
      "lastName": "Duncan",
      "displayName": "JEANNIE DUNCAN",
      "email": "jduncan@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000056621.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054069",
      "supervisorName": "TODD GRAVER"
    },
    {
      "employeeID": "0000030108",
      "firstName": "Deborah",
      "lastName": "Dunham",
      "displayName": "DEBBIE DUNHAM",
      "email": "ddunham@fmi.com",
      "jobTitle": "Dir Project Contract & Controls",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030108.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0061000019",
      "firstName": "Kevin",
      "lastName": "Dunn",
      "displayName": "KEVIN DUNN",
      "email": "kdunn@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000019.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0061001170",
      "firstName": "Timothy",
      "lastName": "Dunn",
      "displayName": "TIM DUNN",
      "email": "tdunn1@fmi.com",
      "jobTitle": "",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061001170.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060063118",
      "supervisorName": "TONY PETERSON"
    },
    {
      "employeeID": "0000090342",
      "firstName": "Minalda",
      "lastName": "Dunne",
      "displayName": "MINA DUNNE",
      "email": "mdunne@fmi.com",
      "jobTitle": "Sr Marketing Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090342.JPG",
      "companyDescription": "Climax Moly Co Admin",
      "supervisorID": "0000052931",
      "supervisorName": "BARBARA BUCK"
    },
    {
      "employeeID": "0000053106",
      "firstName": "Ryan",
      "lastName": "Dunne",
      "displayName": "RYAN DUNNE",
      "email": "rdunne@fmi.com",
      "jobTitle": "Dir Corporate H&S Moly",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000053106.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000014079",
      "supervisorName": "STACY KRAMER"
    },
    {
      "employeeID": "0000090970",
      "firstName": "Carlos",
      "lastName": "Duran",
      "displayName": "CARLOS DURAN",
      "email": "cduran@fmi.com",
      "jobTitle": "Mgr Accounting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090970.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000055955",
      "supervisorName": "CAROLYN GAFFNEY"
    },
    {
      "employeeID": "0060081683",
      "firstName": "Subhajit",
      "lastName": "Dutta",
      "displayName": "SUBHAJIT DUTTA",
      "email": "sdutta@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081683.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060076553",
      "firstName": "Agus",
      "lastName": "Dwi Kurniawan",
      "displayName": "AGUS DWI KURNIAWAN",
      "email": "adwikurn@fmi.com",
      "jobTitle": "Construction Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076553.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060086465",
      "firstName": "Almandhira",
      "lastName": "Dwiwrhaspati",
      "displayName": "ALMANDHIRA DWIWRHASPATI",
      "email": "adwiwrha@fmi.com",
      "jobTitle": "Document Controller",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086465.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060062242",
      "firstName": "Denitsa",
      "lastName": "Dzhurova",
      "displayName": "DENITSA DZHUROVA",
      "email": "ddzhurov@fmi.com",
      "jobTitle": "Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060062242.JPG",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0060064090",
      "supervisorName": "VLAD BUCHYNSKYY"
    },
    {
      "employeeID": "0060086017",
      "firstName": "Cody",
      "lastName": "Earnest",
      "displayName": "CODY EARNEST",
      "email": "cearnest@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086017.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0061000521",
      "firstName": "Jeffrey",
      "lastName": "Eaton",
      "displayName": "JEFF EATON",
      "email": "jeaton1@fmi.com",
      "jobTitle": "Root Cause Analysis Program Mgr",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000521.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000023349",
      "supervisorName": "ANNA LAIJA"
    },
    {
      "employeeID": "0000016103",
      "firstName": "Teresa",
      "lastName": "Eberle",
      "displayName": "TERESA EBERLE",
      "email": "teberle@fmi.com",
      "jobTitle": "Accounting Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000016103.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017705",
      "supervisorName": "CORINNE SHANK"
    },
    {
      "employeeID": "0060023799",
      "firstName": "Angela",
      "lastName": "Edgmon",
      "displayName": "ANGELA EDGMON",
      "email": "aedgmon@fmi.com",
      "jobTitle": "Mgr Transportation Compliance",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060023799.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060053656",
      "supervisorName": "BRUCE NICKLE"
    },
    {
      "employeeID": "0000096323",
      "firstName": "John",
      "lastName": "Edmison",
      "displayName": "JOHN EDMISON",
      "email": "jedmison@fmi.com",
      "jobTitle": "Sr Project Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000096323.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000066179",
      "supervisorName": "SHANE WIEGAND"
    },
    {
      "employeeID": "0000096059",
      "firstName": "Julius",
      "lastName": "Edwards",
      "displayName": "JULIUS EDWARDS",
      "email": "jedwards1@fmi.com",
      "jobTitle": "Sr Document Control Spec",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000096059.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060025043",
      "supervisorName": "DAVID DEAN"
    },
    {
      "employeeID": "0000056211",
      "firstName": "Lyman",
      "lastName": "Edwards",
      "displayName": "LYMAN EDWARDS",
      "email": "ledwards@fmi.com",
      "jobTitle": "Sr Dir HR Analytics",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000056211.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000029859",
      "supervisorName": "LINDA SCOTT"
    },
    {
      "employeeID": "0000030627",
      "firstName": "Karen",
      "lastName": "Eichhorst",
      "displayName": "KAREN EICHHORST",
      "email": "keichhor@fmi.com",
      "jobTitle": "Spv End User Support",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030627.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054930",
      "supervisorName": "DEBBIE BAIRD"
    },
    {
      "employeeID": "0060086568",
      "firstName": "Sarai",
      "lastName": "Ekblad",
      "displayName": "SARAI EKBLAD",
      "email": "sekblad@fmi.com",
      "jobTitle": "Security Analyst",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086568.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094981",
      "supervisorName": "TINA SLANKAS"
    },
    {
      "employeeID": "0060075971",
      "firstName": "Sherif",
      "lastName": "El-Gharbawy",
      "displayName": "SHERIF EL-GHARBAWY",
      "email": "selgharb@fmi.com",
      "jobTitle": "Senior Engineering Manager Geotechnical",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060075971.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0000056705",
      "firstName": "Steven",
      "lastName": "Elcock",
      "displayName": "SEAN ELCOCK",
      "email": "selcock@fmi.com",
      "jobTitle": "Ld HR Metrics Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000056705.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056211",
      "supervisorName": "LYMAN EDWARDS"
    },
    {
      "employeeID": "0060088918",
      "firstName": "William",
      "lastName": "Eller",
      "displayName": "WILLIAM ELLER",
      "email": "weller@fmi.com",
      "jobTitle": "Contract Recruiter",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088918.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053133",
      "supervisorName": "VALERIE BEACH"
    },
    {
      "employeeID": "0000056295",
      "firstName": "David",
      "lastName": "Elliott",
      "displayName": "DAVID ELLIOTT",
      "email": "delliott@fmi.com",
      "jobTitle": "President FM Sales Co",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000056295.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000010314",
      "supervisorName": "STEVE HIGGINS"
    },
    {
      "employeeID": "0060065327",
      "firstName": "Liam",
      "lastName": "Elliott",
      "displayName": "LIAM ELLIOTT",
      "email": "lelliott@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065327.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060065305",
      "supervisorName": "BRENT HANSEN"
    },
    {
      "employeeID": "0060034947",
      "firstName": "Nelson",
      "lastName": "Elliott",
      "displayName": "NELSON ELLIOTT",
      "email": "nelliott@fmi.com",
      "jobTitle": "Sr Contract Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060034947.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088015",
      "supervisorName": "LISA TAYLOR"
    },
    {
      "employeeID": "0000055126",
      "firstName": "Gerald",
      "lastName": "Ellis",
      "displayName": "GERALD ELLIS",
      "email": "gellis@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000055126.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051252",
      "supervisorName": "GRANT WELKER"
    },
    {
      "employeeID": "0000093801",
      "firstName": "Melissa",
      "lastName": "Elrick",
      "displayName": "MELISSA ELRICK",
      "email": "melrick@fmi.com",
      "jobTitle": "Ld Compensation Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000093801.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053075",
      "supervisorName": "RYAN NIESZ"
    },
    {
      "employeeID": "0060079119",
      "firstName": "Alan",
      "lastName": "Emmerton",
      "displayName": "ALAN EMMERTON",
      "email": "aemmerto@fmi.com",
      "jobTitle": "Project Manager Electrical",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079119.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060078044",
      "firstName": "Lizbeth",
      "lastName": "Encinas",
      "displayName": "LIZBETH ENCINAS",
      "email": "lencinas@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078044.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060025523",
      "firstName": "Janet",
      "lastName": "England",
      "displayName": "JANET LEIGH ENGLAND",
      "email": "jengland@fmi.com",
      "jobTitle": "Mgr Legal Project & MSA Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060025523.JPG",
      "companyDescription": "McMoRan Oil & Gas LLC",
      "supervisorID": "0000054298",
      "supervisorName": "PAM MASSON"
    },
    {
      "employeeID": "0060076543",
      "firstName": "Jared",
      "lastName": "Engle",
      "displayName": "JARED ENGLE",
      "email": "jengle1@fmi.com",
      "jobTitle": "JOY GLOBAL SURFACE MINING INC",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076543.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017064",
      "supervisorName": "LISA MEDINA"
    },
    {
      "employeeID": "0000062526",
      "firstName": "Rachel",
      "lastName": "Englund",
      "displayName": "RACHEL ENGLUND",
      "email": "renglund@fmi.com",
      "jobTitle": "Sr Res Estimation Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000062526.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000086445",
      "supervisorName": "ANDREW ISSEL"
    },
    {
      "employeeID": "0060086912",
      "firstName": "Kala",
      "lastName": "Epkins-Henderson",
      "displayName": "KALA EPKINS-HENDERSON",
      "email": "kepkinsh@fmi.com",
      "jobTitle": "Contract Staffing Coordinator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086912.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053133",
      "supervisorName": "VALERIE BEACH"
    },
    {
      "employeeID": "0060049447",
      "firstName": "Mara",
      "lastName": "Erhardt",
      "displayName": "MARA ERHARDT",
      "email": "merhardt@fmi.com",
      "jobTitle": "Geomechanical Engineer II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060049447.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0060072868",
      "supervisorName": "JACQUES NGUZ TSHISENS"
    },
    {
      "employeeID": "0060042677",
      "firstName": "Stein",
      "lastName": "Ericsson",
      "displayName": "STEIN ERICSSON",
      "email": "sericsso@fmi.com",
      "jobTitle": "Mgr Global Network Operations",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060042677.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000085449",
      "supervisorName": "BRODY DELCAMBRE"
    },
    {
      "employeeID": "0061002256",
      "firstName": "Umut",
      "lastName": "Erol",
      "displayName": "UMUT EROL",
      "email": "uerol@fmi.com",
      "jobTitle": "Mgr Metallurgy",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002256.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024233",
      "supervisorName": "LEN HILL"
    },
    {
      "employeeID": "0060078649",
      "firstName": "Jimena",
      "lastName": "Escamilla",
      "displayName": "JIMENA ESCAMILLA",
      "email": "jescamil@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078649.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000067493",
      "firstName": "Francis Benedict",
      "lastName": "Escasio",
      "displayName": "FRANCIS BENEDICT ESCASIO",
      "email": "fescasio@fmi.com",
      "jobTitle": "Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067493.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000067485",
      "supervisorName": "JOSE RAMON TANINGCO"
    },
    {
      "employeeID": "0060063611",
      "firstName": "Amalia",
      "lastName": "Escobar",
      "displayName": "AMALIA ESCOBAR",
      "email": "aescobar4@fmi.com",
      "jobTitle": "HR Service Center Rep",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060063611.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053282",
      "supervisorName": "SUZANNE PATTISON"
    },
    {
      "employeeID": "0061001889",
      "firstName": "Skye",
      "lastName": "Escobar",
      "displayName": "SKYE ESCOBAR",
      "email": "sescobar@fmi.com",
      "jobTitle": "Sr Tax Analyst - Provision",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001889.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062328",
      "supervisorName": "KIMBERLY ALDRIDGE"
    },
    {
      "employeeID": "0000062753",
      "firstName": "Joshua",
      "lastName": "Escobedo",
      "displayName": "JOSHUA ESCOBEDO",
      "email": "jescobed@fmi.com",
      "jobTitle": "Mgr Sales & Operations Planning",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000062753.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000053300",
      "supervisorName": "MICHELLE QUINTANILLA"
    },
    {
      "employeeID": "0060089332",
      "firstName": "Rodrigo",
      "lastName": "Esparza",
      "displayName": "RODRIGO ESPARZA",
      "email": "resparza2@fmi.com",
      "jobTitle": "ROD & COMPANY",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089332.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0000054342",
      "firstName": "Jorge",
      "lastName": "Espinoza",
      "displayName": "JORGE ESPINOZA",
      "email": "jespinoz@fmi.com",
      "jobTitle": "Mgr IS NA Mine Operations",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054342.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054549",
      "supervisorName": "DAN ZEAL"
    },
    {
      "employeeID": "0000063484",
      "firstName": "Marisa",
      "lastName": "Esquer",
      "displayName": "MARISA ESQUER",
      "email": "mesquer@fmi.com",
      "jobTitle": "Communications Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000063484.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053761",
      "supervisorName": "AMY TALKINGTON"
    },
    {
      "employeeID": "0060067771",
      "firstName": "Alexander",
      "lastName": "Esterson",
      "displayName": "ALEXANDER ESTERSON",
      "email": "aesterso@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067771.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060067545",
      "firstName": "Monique",
      "lastName": "Estes",
      "displayName": "MONIQUE ESTES",
      "email": "mestes@fmi.com",
      "jobTitle": "Staffing Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067545.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090027",
      "supervisorName": "BETSY JOHNSON"
    },
    {
      "employeeID": "0060088453",
      "firstName": "Danilo",
      "lastName": "Estevez",
      "displayName": "DANILO ESTEVEZ",
      "email": "destevez@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088453.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000013819",
      "supervisorName": "RENE REYES"
    },
    {
      "employeeID": "0000055242",
      "firstName": "Brian",
      "lastName": "Etheridge",
      "displayName": "BRIAN ETHERIDGE",
      "email": "betherid@fmi.com",
      "jobTitle": "Mgr End User Digital Services",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000055242.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030596",
      "supervisorName": "DAVE SOVELL"
    },
    {
      "employeeID": "0060059572",
      "firstName": "Kelly",
      "lastName": "Ettenborough",
      "displayName": "KELLY ETTENBOROUGH",
      "email": "kettenbo@fmi.com",
      "jobTitle": "Sr Communications Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060059572.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053761",
      "supervisorName": "AMY TALKINGTON"
    },
    {
      "employeeID": "0060059537",
      "firstName": "Kevin",
      "lastName": "Ettinger",
      "displayName": "KEVIN ETTINGER",
      "email": "kettinge@fmi.com",
      "jobTitle": "Accountant I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060059537.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054218",
      "supervisorName": "PAT PREJEAN"
    },
    {
      "employeeID": "0060069143",
      "firstName": "Ashleigh",
      "lastName": "Eubank",
      "displayName": "ASHLEIGH EUBANK",
      "email": "aeubank@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060069143.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000061262",
      "supervisorName": "MICHAEL HULSE"
    },
    {
      "employeeID": "0060069386",
      "firstName": "Lynette",
      "lastName": "Evans",
      "displayName": "LYNETTE EVANS",
      "email": "levans1@fmi.com",
      "jobTitle": "Leave Management Representative",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060069386.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060029856",
      "supervisorName": "LORIE FORBIS"
    },
    {
      "employeeID": "0060087710",
      "firstName": "Shannon",
      "lastName": "Eversoll",
      "displayName": "SHANNON EVERSOLL",
      "email": "seversol@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087710.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0061001518",
      "firstName": "Peter",
      "lastName": "Ewen",
      "displayName": "PETE EWEN",
      "email": "pewen@fmi.com",
      "jobTitle": "Regulatory Strategy Lead",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001518.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000092101",
      "supervisorName": "JOHNNY KEY"
    },
    {
      "employeeID": "0060037502",
      "firstName": "Sandra",
      "lastName": "Fabritz",
      "displayName": "SANDY FABRITZ",
      "email": "sfabritz@fmi.com",
      "jobTitle": "Dir Water Strategy",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060037502.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089445",
      "supervisorName": "FRANCIS MCALLISTER"
    },
    {
      "employeeID": "0060033846",
      "firstName": "ROBINSON PATRICIO",
      "lastName": "FAEZ",
      "displayName": "ROBINSON PATRICIO FAEZ",
      "email": "rfaezmar@fmi.com",
      "jobTitle": "Bus Solution Architect II - Control",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060033846.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000019320",
      "supervisorName": "CHRIS HUGHES"
    },
    {
      "employeeID": "0000024218",
      "firstName": "Joyce",
      "lastName": "Fahy",
      "displayName": "JOYCE FAHY",
      "email": "jfahy@fmi.com",
      "jobTitle": "Sr Quality Systems Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000024218.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000027435",
      "supervisorName": "BRANDON GILLEY"
    },
    {
      "employeeID": "0000096424",
      "firstName": "Rodrick",
      "lastName": "Fairbairn",
      "displayName": "RODRICK FAIRBAIRN",
      "email": "rfairbai@fmi.com",
      "jobTitle": "Chief Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000096424.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000085592",
      "supervisorName": "JAMES YOUNG"
    },
    {
      "employeeID": "0000087025",
      "firstName": "Jessica",
      "lastName": "Fairchild",
      "displayName": "JESSICA FAIRCHILD",
      "email": "jfairchi@fmi.com",
      "jobTitle": "Corporate Travel Consultant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000087025.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000086485",
      "supervisorName": "MICHELE GANNON"
    },
    {
      "employeeID": "0000907805",
      "firstName": "Januar",
      "lastName": "Fajar",
      "displayName": "FAJAR",
      "email": "jfajar@fmi.com",
      "jobTitle": "Superintendent UG Geomechanical",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000907805.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0060072868",
      "supervisorName": "JACQUES NGUZ TSHISENS"
    },
    {
      "employeeID": "0000051215",
      "firstName": "Dean",
      "lastName": "Falgoust",
      "displayName": "DEAN FALGOUST",
      "email": "dfalgous@fmi.com",
      "jobTitle": "VP & Chief Comp Officer FCX, Pres FMS",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051215.jpg",
      "companyDescription": "International Administrat",
      "supervisorID": "0000051953",
      "supervisorName": "KATHLEEN QUIRK"
    },
    {
      "employeeID": "0061000817",
      "firstName": "DeAnne",
      "lastName": "Falise",
      "displayName": "DEANNE FALISE",
      "email": "dfalise1@fmi.com",
      "jobTitle": "Sales Master Data Administrator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061000817.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000050159",
      "supervisorName": "RICH SUTKOWI"
    },
    {
      "employeeID": "0060027780",
      "firstName": "Marlene",
      "lastName": "Falise",
      "displayName": "MARLENE FALISE",
      "email": "mfalise@fmi.com",
      "jobTitle": "Bus Solution Architect III - Commercial",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060027780.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000050159",
      "supervisorName": "RICH SUTKOWI"
    },
    {
      "employeeID": "0060088567",
      "firstName": "Eddie",
      "lastName": "Falucho",
      "displayName": "EDDIE FALUCHO",
      "email": "efalucho@fmi.com",
      "jobTitle": "Ricoh Onsite Specialist",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088567.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068803",
      "supervisorName": "DANIELLE PERRY"
    },
    {
      "employeeID": "0060089099",
      "firstName": "Usman",
      "lastName": "Farooq",
      "displayName": "USMAN FAROOQ",
      "email": "ufarooq@fmi.com",
      "jobTitle": "Data Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089099.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060047531",
      "supervisorName": "TRAVIS GADDIE"
    },
    {
      "employeeID": "0060077613",
      "firstName": "Yop",
      "lastName": "Fatra Erdiata",
      "displayName": "YOP FATRA ERDIATA",
      "email": "yfatraer@fmi.com",
      "jobTitle": "Sr Mechanical Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077613.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0060080705",
      "firstName": "Andras",
      "lastName": "Feher",
      "displayName": "ANDRAS FEHER",
      "email": "afeher@fmi.com",
      "jobTitle": "Solutions Architect - Snowflake",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080705.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0060078958",
      "firstName": "Andres",
      "lastName": "Felipe Lopez",
      "displayName": "ANDRES FELIPE LOPEZ",
      "email": "afelipel@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078958.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060083232",
      "firstName": "Aurora",
      "lastName": "Felizardo",
      "displayName": "AURORA FELIZARDO",
      "email": "afelizar@fmi.com",
      "jobTitle": "",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083232.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "",
      "supervisorName": ""
    },
    {
      "employeeID": "0060058308",
      "firstName": "Lindsey",
      "lastName": "Ferrara",
      "displayName": "LINDSEY FERRARA",
      "email": "lferrara@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060058308.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000052142",
      "firstName": "Jose",
      "lastName": "Ferrero",
      "displayName": "JOSE FERRERO",
      "email": "jferrero@fmi.com",
      "jobTitle": "Ld Systems Integrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000052142.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0000095889",
      "firstName": "Diny",
      "lastName": "Fife",
      "displayName": "DINA FIFE",
      "email": "dfife@fmi.com",
      "jobTitle": "Sr Payroll Clerk",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000095889.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000060444",
      "supervisorName": "CHRIS JORDAN"
    },
    {
      "employeeID": "0060078650",
      "firstName": "Leonel",
      "lastName": "Filippini",
      "displayName": "LEONEL FILIPPINI",
      "email": "lfilippi@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078650.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060048432",
      "firstName": "Gordon",
      "lastName": "Fillmore",
      "displayName": "GORDON FILLMORE",
      "email": "gfillmor@fmi.com",
      "jobTitle": "Project Construction Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060048432.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0000067378",
      "firstName": "David",
      "lastName": "First",
      "displayName": "DAVID FIRST",
      "email": "dfirst@fmi.com",
      "jobTitle": "Chief Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067378.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000017473",
      "supervisorName": "GREG COFFIN"
    },
    {
      "employeeID": "0060029857",
      "firstName": "Bart",
      "lastName": "Fitzgerald",
      "displayName": "BART FITZGERALD",
      "email": "bfitzger@fmi.com",
      "jobTitle": "Sr Investigator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060029857.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094868",
      "supervisorName": "STEPHEN NEHRING"
    },
    {
      "employeeID": "0060070558",
      "firstName": "Todd",
      "lastName": "Flannigan",
      "displayName": "TODD FLANNIGAN",
      "email": "tflannig@fmi.com",
      "jobTitle": "Sr Project Accountant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060070558.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000095201",
      "supervisorName": "CHRISTINE OXFORD"
    },
    {
      "employeeID": "0061002442",
      "firstName": "Mark",
      "lastName": "Flatten",
      "displayName": "MARK FLATTEN",
      "email": "mflatten@fmi.com",
      "jobTitle": "Sr Comm Spec - Corporate Writer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002442.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0061002265",
      "supervisorName": "DAMON GROSS"
    },
    {
      "employeeID": "0000096076",
      "firstName": "Robert",
      "lastName": "Fleming",
      "displayName": "ROBERT FLEMING",
      "email": "rfleming@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000096076.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051658",
      "supervisorName": "BILL VON KOLEN"
    },
    {
      "employeeID": "0060077853",
      "firstName": "Jeremy",
      "lastName": "Flessner",
      "displayName": "JEREMY FLESSNER",
      "email": "jflessne@fmi.com",
      "jobTitle": "ECM/SharePoint Business Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077853.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060069816",
      "supervisorName": "PETER RYAN"
    },
    {
      "employeeID": "0060080046",
      "firstName": "Fernando",
      "lastName": "Flores",
      "displayName": "FERNANDO FLORES",
      "email": "fflores@fmi.com",
      "jobTitle": "Physical Records Staff",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080046.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030672",
      "supervisorName": "SHARON AHMED"
    },
    {
      "employeeID": "0000055952",
      "firstName": "Victor",
      "lastName": "Flores",
      "displayName": "VICTOR FLORES",
      "email": "vflores@fmi.com",
      "jobTitle": "Sr HR Systems Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000055952.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030627",
      "supervisorName": "KAREN EICHHORST"
    },
    {
      "employeeID": "0060089310",
      "firstName": "Shane",
      "lastName": "Foley",
      "displayName": "SHANE FOLEY",
      "email": "sfoley@fmi.com",
      "jobTitle": "Developer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089310.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000088954",
      "supervisorName": "MIKE LEMMOND"
    },
    {
      "employeeID": "0060086681",
      "firstName": "William",
      "lastName": "Foos",
      "displayName": "WILLIAM FOOS",
      "email": "wfoos@fmi.com",
      "jobTitle": "Project Principal",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086681.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053106",
      "supervisorName": "RYAN DUNNE"
    },
    {
      "employeeID": "0060060059",
      "firstName": "Henrietta",
      "lastName": "Footracer",
      "displayName": "HENRIETTA FOOTRACER",
      "email": "hfootrac@fmi.com",
      "jobTitle": "Sr Accounting Clerk",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060060059.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000018777",
      "supervisorName": "SHARON CHANEZ"
    },
    {
      "employeeID": "0060058364",
      "firstName": "Colton",
      "lastName": "Forbis",
      "displayName": "COLTON FORBIS",
      "email": "cforbis@fmi.com",
      "jobTitle": "Accountant II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060058364.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055671",
      "supervisorName": "STEVE DEVORE"
    },
    {
      "employeeID": "0000054340",
      "firstName": "Jon",
      "lastName": "Forbis",
      "displayName": "JON FORBIS",
      "email": "jforbis@fmi.com",
      "jobTitle": "Mgr Tax - State Income Tax",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054340.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052232",
      "supervisorName": "HUGH DONAHUE"
    },
    {
      "employeeID": "0060029856",
      "firstName": "Laura",
      "lastName": "Forbis",
      "displayName": "LORIE FORBIS",
      "email": "lforbis@fmi.com",
      "jobTitle": "Mgr Leave Management",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060029856.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028334",
      "supervisorName": "RACHAEL LAUFENBERG"
    },
    {
      "employeeID": "0000085619",
      "firstName": "Courtney",
      "lastName": "Ford",
      "displayName": "COURTNEY FORD",
      "email": "cford@fmi.com",
      "jobTitle": "Accounting Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085619.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000012013",
      "supervisorName": "KIM SHIPLEY"
    },
    {
      "employeeID": "0061000175",
      "firstName": "Courtney",
      "lastName": "Ford",
      "displayName": "COURTNEY FORD",
      "email": "cford@fmi.com",
      "jobTitle": "Accounting Assistant",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061000175.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000012013",
      "supervisorName": "KIM SHIPLEY"
    },
    {
      "employeeID": "0000011753",
      "firstName": "Lisa",
      "lastName": "Ford",
      "displayName": "LISA FORD",
      "email": "lford@fmi.com",
      "jobTitle": "Intl Sr Sales Analyst - PTFI",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011753.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085492",
      "supervisorName": "TOMMY ALLEN"
    },
    {
      "employeeID": "0000063845",
      "firstName": "Ryan",
      "lastName": "Forman",
      "displayName": "RYAN FORMAN",
      "email": "rforman1@fmi.com",
      "jobTitle": "Ld Logistics Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000063845.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060053656",
      "supervisorName": "BRUCE NICKLE"
    },
    {
      "employeeID": "0060080433",
      "firstName": "Laura",
      "lastName": "Forte",
      "displayName": "LAURA FORTE",
      "email": "lforte@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080433.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0000019587",
      "firstName": "Bradley",
      "lastName": "Fox",
      "displayName": "BRAD FOX",
      "email": "bfox@fmi.com",
      "jobTitle": "Dir Financial Analysis",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000019587.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000085082",
      "supervisorName": "CHAD VENTOLA"
    },
    {
      "employeeID": "0000014471",
      "firstName": "Brenda",
      "lastName": "Fox",
      "displayName": "BRENDA FOX",
      "email": "bfox1@fmi.com",
      "jobTitle": "Sr Inventory Controller",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000014471.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088472",
      "supervisorName": "RANDY WAWRZYNIAK-FRY"
    },
    {
      "employeeID": "0000058288",
      "firstName": "Gregory",
      "lastName": "Fox-Fitzgerald",
      "displayName": "GREGORY FOX-FITZGERALD",
      "email": "gfoxfitz@fmi.com",
      "jobTitle": "Sr Bus Info/Sys Proc Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000058288.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089987",
      "supervisorName": "JIM SCHIFFER"
    },
    {
      "employeeID": "0060080609",
      "firstName": "Margaret",
      "lastName": "Fraizer",
      "displayName": "MARGARET FRAIZER",
      "email": "mfraizer@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080609.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060086534",
      "firstName": "Ashley",
      "lastName": "Frambach Baker",
      "displayName": "ASHLEY FRAMBACH BAKER",
      "email": "aframbac@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086534.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000056399",
      "firstName": "Lauren",
      "lastName": "Frank",
      "displayName": "LAUREN FRANK",
      "email": "lfrank@fmi.com",
      "jobTitle": "Dir Financial Shared Services",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000056399.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000081075",
      "supervisorName": "BERT ODINET"
    },
    {
      "employeeID": "0000064031",
      "firstName": "Chris",
      "lastName": "Franks",
      "displayName": "CHRIS FRANKS",
      "email": "cfranks@fmi.com",
      "jobTitle": "Dir Land Resources",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000064031.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089445",
      "supervisorName": "FRANCIS MCALLISTER"
    },
    {
      "employeeID": "0060063337",
      "firstName": "Kristina",
      "lastName": "Fraser",
      "displayName": "KRISTINA FRASER",
      "email": "kfraser@fmi.com",
      "jobTitle": "Recruiter II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060063337.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060079345",
      "supervisorName": "MICHAEL MORALES"
    },
    {
      "employeeID": "0060067531",
      "firstName": "Kimberly",
      "lastName": "Freed",
      "displayName": "KIMBERLY FREED",
      "email": "kfreed@fmi.com",
      "jobTitle": "Benefits Representative - H&W",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067531.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000013956",
      "supervisorName": "LISA JENSEN"
    },
    {
      "employeeID": "0000092726",
      "firstName": "Daniel",
      "lastName": "Freese",
      "displayName": "DANIEL FREESE",
      "email": "dfreese@fmi.com",
      "jobTitle": "Proj Mgr Engineering I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092726.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000016873",
      "supervisorName": "JOE BRUNNER"
    },
    {
      "employeeID": "0060074232",
      "firstName": "Clezio",
      "lastName": "Freitas",
      "displayName": "CLEZIO FREITAS",
      "email": "cfreitas@fmi.com",
      "jobTitle": "Engineering Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060074232.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0061002040",
      "firstName": "Natalie",
      "lastName": "French",
      "displayName": "NATALIE FRENCH",
      "email": "nfrench1@fmi.com",
      "jobTitle": "Transformation/Agile Specialist I",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002040.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060072598",
      "supervisorName": "SHANNON LIJEK"
    },
    {
      "employeeID": "0060057313",
      "firstName": "Aaron",
      "lastName": "Friedman",
      "displayName": "AARON FRIEDMAN",
      "email": "afriedma@fmi.com",
      "jobTitle": "Mgr Strategic Category Management",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060057313.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060053656",
      "supervisorName": "BRUCE NICKLE"
    },
    {
      "employeeID": "0000063165",
      "firstName": "Ingrid",
      "lastName": "Fritz",
      "displayName": "INGRID FRITZ",
      "email": "ifritz@fmi.com",
      "jobTitle": "Paralegal",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000063165.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000085651",
      "supervisorName": "MONIQUE CENAC"
    },
    {
      "employeeID": "0060031209",
      "firstName": "Machiko",
      "lastName": "Fukazawa",
      "displayName": "MACHIKO FUKAZAWA",
      "email": "mfukazaw@fmi.com",
      "jobTitle": "Customer Service Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060031209.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0060031208",
      "supervisorName": "KEIKO NAKANO"
    },
    {
      "employeeID": "0000896339",
      "firstName": ".",
      "lastName": "FURJIYANTO",
      "displayName": ". FURJIYANTO",
      "email": "furjiyan@fmi.com",
      "jobTitle": "Chief Engineer UG Mine Planning",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000896339.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000066178",
      "supervisorName": "CHUCK BRANNON"
    },
    {
      "employeeID": "0060051192",
      "firstName": "Amy",
      "lastName": "Gabrielson",
      "displayName": "AMY GABRIELSON",
      "email": "agabriel@fmi.com",
      "jobTitle": "Safety Systems Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060051192.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057092",
      "supervisorName": "ROBERT MCLAIN"
    },
    {
      "employeeID": "0060081554",
      "firstName": "Subba Rao",
      "lastName": "Gadamsetty Venkata",
      "displayName": "SUBBA RAO GADAMSETTY VENKATA",
      "email": "sgadamse@fmi.com",
      "jobTitle": "Cataloger",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081554.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000019708",
      "supervisorName": "AUDREY MERTES"
    },
    {
      "employeeID": "0060047531",
      "firstName": "Travis",
      "lastName": "Gaddie",
      "displayName": "TRAVIS GADDIE",
      "email": "tgaddie@fmi.com",
      "jobTitle": "Data Scientist II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060047531.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062216",
      "supervisorName": "SCOTT BIRMINGHAM"
    },
    {
      "employeeID": "0000092905",
      "firstName": "Jennifer",
      "lastName": "Gadzichowski",
      "displayName": "JENNIFER GADZICHOWSKI",
      "email": "jgadzich@fmi.com",
      "jobTitle": "Bus Solution Architect II FA & HR",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092905.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065010",
      "supervisorName": "JAMES PATTERSON"
    },
    {
      "employeeID": "0000055955",
      "firstName": "Carolyn",
      "lastName": "Gaffney",
      "displayName": "CAROLYN GAFFNEY",
      "email": "cgaffney@fmi.com",
      "jobTitle": "Sr Mgr Consolidation & Analysis",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000055955.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024216",
      "supervisorName": "KENT ALME"
    },
    {
      "employeeID": "0060080570",
      "firstName": "Zak",
      "lastName": "Gaibi",
      "displayName": "ZAK GAIBI",
      "email": "zgaibi@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080570.JPG",
      "companyDescription": "FM Bagdad Inc",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060078906",
      "firstName": "Maria",
      "lastName": "Galaviz",
      "displayName": "MARIA GALAVIZ",
      "email": "mgalaviz@fmi.com",
      "jobTitle": "Contractor - HR Representative",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078906.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053282",
      "supervisorName": "SUZANNE PATTISON"
    },
    {
      "employeeID": "0060087659",
      "firstName": "Valentin Martinez",
      "lastName": "Gama",
      "displayName": "VALENTIN MARTINEZ GAMA",
      "email": "vgama@fmi.com",
      "jobTitle": "Data Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087659.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060047531",
      "supervisorName": "TRAVIS GADDIE"
    },
    {
      "employeeID": "0060085762",
      "firstName": "Justin",
      "lastName": "Gamble",
      "displayName": "JUSTIN GAMBLE",
      "email": "jgamble@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085762.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060088505",
      "firstName": "Jesse",
      "lastName": "Gamon",
      "displayName": "JESSE GAMON",
      "email": "jgamon@fmi.com",
      "jobTitle": "Expeditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088505.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000013819",
      "supervisorName": "RENE REYES"
    },
    {
      "employeeID": "0060081326",
      "firstName": "Sivasankar",
      "lastName": "Ganesan",
      "displayName": "SIVASANKAR GANESAN",
      "email": "sganesan@fmi.com",
      "jobTitle": "SAG Area Project Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081326.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060088420",
      "firstName": "Rahul",
      "lastName": "Ganjiwale",
      "displayName": "RAHUL GANJIWALE",
      "email": "rganjiwa@fmi.com",
      "jobTitle": "PROMETHEUS GROUP ENTERPRISE LLC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088420.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0000086485",
      "firstName": "Michele",
      "lastName": "Gannon",
      "displayName": "MICHELE GANNON",
      "email": "mgannon@fmi.com",
      "jobTitle": "Dir Global Travel Services",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086485.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000054298",
      "supervisorName": "PAM MASSON"
    },
    {
      "employeeID": "0060065549",
      "firstName": "Kyle",
      "lastName": "Gara",
      "displayName": "KYLE GARA",
      "email": null,
      "jobTitle": "",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065549.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000016919",
      "supervisorName": "SCOTT KIEL"
    },
    {
      "employeeID": "0060085391",
      "firstName": "Giuliana",
      "lastName": "Garcia",
      "displayName": "GIULIANA GARCIA",
      "email": "ggarcia12@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085391.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060023271",
      "firstName": "Mauricio",
      "lastName": "Garcia",
      "displayName": "MAURICIO GARCIA",
      "email": "mgarcia@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060023271.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051339",
      "supervisorName": "MIKE MCADAM"
    },
    {
      "employeeID": "0000053810",
      "firstName": "Richard",
      "lastName": "Garcia",
      "displayName": "RICHARD GARCIA",
      "email": "rgarcia2@fmi.com",
      "jobTitle": "Sr Process Ldr Supply Chain",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000053810.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0060048277",
      "firstName": "Guillermo",
      "lastName": "Garcia Garcia",
      "displayName": "GUILLERMO GARCIA GARCIA",
      "email": "ggarciag@fmi.com",
      "jobTitle": "Mgr Quality Assurance & Prod Specs",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060048277.jpg",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0000053411",
      "supervisorName": "CHANDRAMOULEESWARAN VAIDYANATHAN"
    },
    {
      "employeeID": "0060027623",
      "firstName": "Jose",
      "lastName": "Garcia Ibanez",
      "displayName": "JOSE GARCIA IBANEZ",
      "email": "jgarciai1@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060027623.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060065579",
      "firstName": "Magaly",
      "lastName": "Garcia-Vasquez",
      "displayName": "MAGALY GARCIA-VASQUEZ",
      "email": "mgarciav@fmi.com",
      "jobTitle": "Project Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065579.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000253124",
      "supervisorName": "SETIA NUGROHO"
    },
    {
      "employeeID": "0000088963",
      "firstName": "Rebecca",
      "lastName": "Gardner",
      "displayName": "REBECCA GARDNER",
      "email": "rgardner@fmi.com",
      "jobTitle": "Manager - Investor Relations",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088963.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000011677",
      "supervisorName": "DAVID JOINT"
    },
    {
      "employeeID": "0060077679",
      "firstName": "Lavkesh",
      "lastName": "Garg",
      "displayName": "LAVKESH GARG",
      "email": "lgarg@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077679.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060079254",
      "firstName": "Vikas",
      "lastName": "Garg",
      "displayName": "VIKAS GARG",
      "email": "vgarg1@fmi.com",
      "jobTitle": "BI Developer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079254.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0060077373",
      "firstName": "Matias",
      "lastName": "Garibaldi",
      "displayName": "MATIAS GARIBALDI",
      "email": "mgaribal@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077373.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017636",
      "supervisorName": "CORY STEVENS"
    },
    {
      "employeeID": "0000067986",
      "firstName": "Terri",
      "lastName": "Garvais",
      "displayName": "TERRI GARVAIS",
      "email": "tgarvais@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067986.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000986346",
      "supervisorName": "DOUGLAS CURRAULT"
    },
    {
      "employeeID": "0060028878",
      "firstName": "Carolyn",
      "lastName": "Gary",
      "displayName": "CAROLYN GARY",
      "email": "cgary@fmi.com",
      "jobTitle": "Sr Leave Management Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060028878.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060029856",
      "supervisorName": "LORIE FORBIS"
    },
    {
      "employeeID": "0000093548",
      "firstName": "Carlos",
      "lastName": "Gasca",
      "displayName": "CARLOS GASCA",
      "email": "cgasca@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000093548.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055243",
      "supervisorName": "JOCHEN GLISS"
    },
    {
      "employeeID": "0060076411",
      "firstName": "Mathew",
      "lastName": "Gaudreau",
      "displayName": "MATHEW GAUDREAU",
      "email": "mgaudreau@fmi.com",
      "jobTitle": "Firewall Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076411.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094981",
      "supervisorName": "TINA SLANKAS"
    },
    {
      "employeeID": "0000090880",
      "firstName": "Priynk",
      "lastName": "Gautam",
      "displayName": "PRIYNK GAUTAM",
      "email": "pgautam@fmi.com",
      "jobTitle": "Conversion Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090880.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068782",
      "supervisorName": "REMI BRANDEBOURG"
    },
    {
      "employeeID": "0060077515",
      "firstName": "Javier",
      "lastName": "Gavaldon",
      "displayName": "JAVIER GAVALDON",
      "email": "jgavaldo1@fmi.com",
      "jobTitle": "Southwestern Railroad Inc",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077515.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060064689",
      "supervisorName": "CHARLES ODDO"
    },
    {
      "employeeID": "0060086689",
      "firstName": "Jes",
      "lastName": "Gearing",
      "displayName": "JES GEARING",
      "email": "jgearing@fmi.com",
      "jobTitle": "Lead Analyst",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086689.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053106",
      "supervisorName": "RYAN DUNNE"
    },
    {
      "employeeID": "0060059975",
      "firstName": "Austin",
      "lastName": "Geenens",
      "displayName": "AUSTIN GEENENS",
      "email": "ageenens@fmi.com",
      "jobTitle": "Accountant I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060059975.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000011706",
      "supervisorName": "SHAWN LYONS"
    },
    {
      "employeeID": "0060079522",
      "firstName": "Dana",
      "lastName": "Geislinger",
      "displayName": "DANA GEISLINGER",
      "email": "dgeislin@fmi.com",
      "jobTitle": "Sr Data Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079522.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060050437",
      "supervisorName": "MICHAEL BISCHOF"
    },
    {
      "employeeID": "0000057172",
      "firstName": "Paul",
      "lastName": "Gelfi",
      "displayName": "PAUL GELFI",
      "email": "pgelfi@fmi.com",
      "jobTitle": "General Mgr Processing Op Improvement",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000057172.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017636",
      "supervisorName": "CORY STEVENS"
    },
    {
      "employeeID": "0000086888",
      "firstName": "Sarah",
      "lastName": "Gennusa",
      "displayName": "SARAH GENNUSA",
      "email": "sgennusa@fmi.com",
      "jobTitle": "Mgr Financial Analysis",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086888.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085082",
      "supervisorName": "CHAD VENTOLA"
    },
    {
      "employeeID": "0000091847",
      "firstName": "Yordan",
      "lastName": "Georgiev",
      "displayName": "YORDAN GEORGIEV",
      "email": "ygeorgie@fmi.com",
      "jobTitle": "Sr Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091847.JPG",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0060064090",
      "supervisorName": "VLAD BUCHYNSKYY"
    },
    {
      "employeeID": "0060028343",
      "firstName": "Andrea",
      "lastName": "Georgopoulos",
      "displayName": "ANDREA GEORGOPOULOS",
      "email": "ageorgop@fmi.com",
      "jobTitle": "Mgr Project Controls II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060028343.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030108",
      "supervisorName": "DEBBIE DUNHAM"
    },
    {
      "employeeID": "0000096503",
      "firstName": "Seth",
      "lastName": "Gering",
      "displayName": "SETH GERING",
      "email": "sgering@fmi.com",
      "jobTitle": "Product Specialist - MineSight",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000096503.jpg",
      "companyDescription": "FM Sierrita Inc",
      "supervisorID": "0000016643",
      "supervisorName": "DAVID GORDON"
    },
    {
      "employeeID": "0060071378",
      "firstName": "Ryan",
      "lastName": "Gerow",
      "displayName": "RYAN GEROW",
      "email": "rgerow@fmi.com",
      "jobTitle": "Security Application Consultant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060071378.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060072316",
      "supervisorName": "DAVID RIZA"
    },
    {
      "employeeID": "0060070108",
      "firstName": "Abanoub",
      "lastName": "Ghaly",
      "displayName": "ABANOUB GHALY",
      "email": "aghaly@fmi.com",
      "jobTitle": "MSO Security",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060070108.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094981",
      "supervisorName": "TINA SLANKAS"
    },
    {
      "employeeID": "0060070783",
      "firstName": "Saurav",
      "lastName": "Ghosh",
      "displayName": "SAURAV GHOSH",
      "email": "sghosh@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060070783.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000028743",
      "firstName": "Gina",
      "lastName": "Gibson",
      "displayName": "GINA GIBSON",
      "email": "ggibson1@fmi.com",
      "jobTitle": "Sr Benefits Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000028743.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000014944",
      "supervisorName": "CECE LEWIN"
    },
    {
      "employeeID": "0000028992",
      "firstName": "Tim",
      "lastName": "Gibson",
      "displayName": "TIM GIBSON",
      "email": "tgibson3@fmi.com",
      "jobTitle": "Mgr Water Resources",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000028992.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060037502",
      "supervisorName": "SANDY FABRITZ"
    },
    {
      "employeeID": "0000062945",
      "firstName": "Tara",
      "lastName": "Giesinger",
      "displayName": "TARA GIESINGER",
      "email": "tgiesing@fmi.com",
      "jobTitle": "Bus Solution Architect III FA & HR",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000062945.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065010",
      "supervisorName": "JAMES PATTERSON"
    },
    {
      "employeeID": "0000090148",
      "firstName": "Courtney",
      "lastName": "Giessler",
      "displayName": "COURTNEY GIESSLER",
      "email": "cgiessle@fmi.com",
      "jobTitle": "Sr Mgr Tax Provision & Technology",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090148.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052232",
      "supervisorName": "HUGH DONAHUE"
    },
    {
      "employeeID": "0000086118",
      "firstName": "Tiffany",
      "lastName": "Gifford",
      "displayName": "TIFFANY GIFFORD",
      "email": "tgifford@fmi.com",
      "jobTitle": "Dir Executive Compensation & Benefits",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086118.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000029859",
      "supervisorName": "LINDA SCOTT"
    },
    {
      "employeeID": "0060025701",
      "firstName": "Charles",
      "lastName": "Gilbert",
      "displayName": "CHARLES GILBERT",
      "email": "cgilbert@fmi.com",
      "jobTitle": "Technical Service Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060025701.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000016643",
      "supervisorName": "DAVID GORDON"
    },
    {
      "employeeID": "0060024658",
      "firstName": "Brett",
      "lastName": "Giles",
      "displayName": "BRETT GILES",
      "email": "bgiles@fmi.com",
      "jobTitle": "AP Systems Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060024658.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000096009",
      "supervisorName": "SUSAN BACHLER"
    },
    {
      "employeeID": "0060085566",
      "firstName": "Gregory",
      "lastName": "Giles",
      "displayName": "GREGORY GILES",
      "email": "ggiles@fmi.com",
      "jobTitle": "Contracts Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085566.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000092167",
      "supervisorName": "DANIEL GONZALEZ OLAYA"
    },
    {
      "employeeID": "0060086311",
      "firstName": "David",
      "lastName": "Gill",
      "displayName": "DAVID GILL",
      "email": "dgill@fmi.com",
      "jobTitle": "Desktop Support",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086311.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059565",
      "supervisorName": "JOSE GRANADO"
    },
    {
      "employeeID": "0000027435",
      "firstName": "Brandon",
      "lastName": "Gilley",
      "displayName": "BRANDON GILLEY",
      "email": "bgilley@fmi.com",
      "jobTitle": "Mgr Health & Safety",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000027435.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057092",
      "supervisorName": "ROBERT MCLAIN"
    },
    {
      "employeeID": "0000017174",
      "firstName": "Alan",
      "lastName": "Gin",
      "displayName": "ALAN GIN",
      "email": "agin@fmi.com",
      "jobTitle": "Mgr Accounting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000017174.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054218",
      "supervisorName": "PAT PREJEAN"
    },
    {
      "employeeID": "0060050084",
      "firstName": "Katelyn",
      "lastName": "Gleeson",
      "displayName": "KATELYN GLEESON",
      "email": "kgleeson@fmi.com",
      "jobTitle": "PMO Lead & Service Mgmt",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060050084.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060043585",
      "supervisorName": "BENITO RALPH"
    },
    {
      "employeeID": "0000055243",
      "firstName": "Jochen",
      "lastName": "Gliss",
      "displayName": "JOCHEN GLISS",
      "email": "jgliss@fmi.com",
      "jobTitle": "Mgr Corporate Security",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000055243.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000085509",
      "supervisorName": "JOHN MOSHER"
    },
    {
      "employeeID": "0000062697",
      "firstName": "Andrew",
      "lastName": "Gluvna",
      "displayName": "ANDREW GLUVNA",
      "email": "agluvna@fmi.com",
      "jobTitle": "Mgr Moly/Rod/Refining",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000062697.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054549",
      "supervisorName": "DAN ZEAL"
    },
    {
      "employeeID": "0060080574",
      "firstName": "Muthu Subramanian",
      "lastName": "Gnana Guruswamy",
      "displayName": "MUTHU SUBRAMANIAN GNANA GURUSWAMY",
      "email": "mgnanagu@fmi.com",
      "jobTitle": "BI Developer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080574.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0000056651",
      "firstName": "Alan",
      "lastName": "Gnann",
      "displayName": "CHRIS GNANN",
      "email": "cgnann@fmi.com",
      "jobTitle": "Dir Global Met Sales & Commercial Ops",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000056651.jpg",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0000052931",
      "supervisorName": "BARBARA BUCK"
    },
    {
      "employeeID": "0060060617",
      "firstName": "Olivia",
      "lastName": "Goddard",
      "displayName": "OLIVIA GODDARD",
      "email": "ogoddard@fmi.com",
      "jobTitle": "Sr Bus Info/Sys Proc Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060060617.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060069816",
      "supervisorName": "PETER RYAN"
    },
    {
      "employeeID": "0000088377",
      "firstName": "Cindy",
      "lastName": "Godel",
      "displayName": "CINDY GODEL",
      "email": "cgodel@fmi.com",
      "jobTitle": "Sr Recruiter",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088377.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060079345",
      "supervisorName": "MICHAEL MORALES"
    },
    {
      "employeeID": "0060057408",
      "firstName": "Lorena",
      "lastName": "Godoi",
      "displayName": "LORENA GODOI",
      "email": "lgodoi@fmi.com",
      "jobTitle": "Immigration & Tax Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060057408.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056973",
      "supervisorName": "TONY CARROLL"
    },
    {
      "employeeID": "0000090195",
      "firstName": "Nitin",
      "lastName": "Goel",
      "displayName": "NITIN GOEL",
      "email": "ngoel1@fmi.com",
      "jobTitle": "Dir Engineering",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090195.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0060056938",
      "firstName": "Michelle",
      "lastName": "Gogerty",
      "displayName": "MICHELLE GOGERTY",
      "email": "mgogerty@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060056938.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060088579",
      "firstName": "Bhawna",
      "lastName": "Gokhlani",
      "displayName": "BHAWNA GOKHLANI",
      "email": "bgokhlan@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088579.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0061000122",
      "firstName": "Sean",
      "lastName": "Golbad",
      "displayName": "SEAN GOLBAD",
      "email": "sgolbad@fmi.com",
      "jobTitle": "Sr Data Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000122.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060050437",
      "supervisorName": "MICHAEL BISCHOF"
    },
    {
      "employeeID": "0060089032",
      "firstName": "Mitchell",
      "lastName": "Goldberg",
      "displayName": "MITCHELL GOLDBERG",
      "email": "mgoldber@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089032.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0000091922",
      "firstName": "Sheryl",
      "lastName": "Gomez",
      "displayName": "SHERYL GOMEZ",
      "email": "sgomez@fmi.com",
      "jobTitle": "Sr Compensation Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091922.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053075",
      "supervisorName": "RYAN NIESZ"
    },
    {
      "employeeID": "0060064649",
      "firstName": "Flora",
      "lastName": "Gong Yan",
      "displayName": "FLORA GONG YAN",
      "email": "fgongyan@fmi.com",
      "jobTitle": "Admin Assistant/Receptionist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060064649.jpg",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0000077072",
      "supervisorName": "XIWEN CHEN"
    },
    {
      "employeeID": "0000086686",
      "firstName": "Angelo",
      "lastName": "Gonzales",
      "displayName": "ANGELO GONZALES",
      "email": "agonzale@fmi.com",
      "jobTitle": "Mgr Accounting Revenue",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086686.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0060035922",
      "supervisorName": "STEPHEN WINGERSON"
    },
    {
      "employeeID": "0060089331",
      "firstName": "Jose",
      "lastName": "Gonzales",
      "displayName": "JOSE GONZALES",
      "email": "jgonzale79@fmi.com",
      "jobTitle": "ROD & COMPANY",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089331.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060070305",
      "firstName": "Pamela",
      "lastName": "Gonzales",
      "displayName": "PAMELA GONZALES",
      "email": "pgonzale13@fmi.com",
      "jobTitle": "HR Systems Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060070305.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030627",
      "supervisorName": "KAREN EICHHORST"
    },
    {
      "employeeID": "0061000005",
      "firstName": "Claudio",
      "lastName": "Gonzalez",
      "displayName": "CLAUDIO GONZALEZ",
      "email": "cgonzale26@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000005.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060065305",
      "supervisorName": "BRENT HANSEN"
    },
    {
      "employeeID": "0061000212",
      "firstName": "Nathan",
      "lastName": "Gonzalez",
      "displayName": "NATHAN GONZALEZ",
      "email": "ngonzale4@fmi.com",
      "jobTitle": "Sr Communications Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000212.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000050020",
      "supervisorName": "RUTHANNE VAN DYKE"
    },
    {
      "employeeID": "0060062087",
      "firstName": "Vera",
      "lastName": "Gonzalez",
      "displayName": "VERA GONZALEZ",
      "email": "vgonzale4@fmi.com",
      "jobTitle": "Recruiter I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060062087.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060062314",
      "supervisorName": "DREW RENBERG"
    },
    {
      "employeeID": "0000092167",
      "firstName": "Daniel",
      "lastName": "Gonzalez Olaya",
      "displayName": "DANIEL GONZALEZ OLAYA",
      "email": "dgonzale@fmi.com",
      "jobTitle": "Mgr Corporate Contracts",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092167.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030108",
      "supervisorName": "DEBBIE DUNHAM"
    },
    {
      "employeeID": "0060057871",
      "firstName": "Whitney",
      "lastName": "Goodson",
      "displayName": "WHITNEY GOODSON",
      "email": "wgoodson@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060057871.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060064689",
      "supervisorName": "CHARLES ODDO"
    },
    {
      "employeeID": "0000092600",
      "firstName": "Brenda",
      "lastName": "Goodwin",
      "displayName": "BRENDA GOODWIN",
      "email": "bgoodwin@fmi.com",
      "jobTitle": "Sr Recruiter",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092600.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000093345",
      "supervisorName": "MELANIE PEIRE"
    },
    {
      "employeeID": "0000085341",
      "firstName": "Janet",
      "lastName": "Gordon",
      "displayName": "JANET GORDON",
      "email": "jgordon@fmi.com",
      "jobTitle": "Sr. Tax Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085341.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000011474",
      "supervisorName": "HEIDI DALE"
    },
    {
      "employeeID": "0060040448",
      "firstName": "David",
      "lastName": "Gosen",
      "displayName": "DAVID GOSEN",
      "email": "dgosen@fmi.com",
      "jobTitle": "Mgr Remediation Projects",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060040448.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000026712",
      "supervisorName": "BRYCE ROMIG"
    },
    {
      "employeeID": "0000030371",
      "firstName": "Cheryl",
      "lastName": "Gossett",
      "displayName": "CHERYL GOSSETT",
      "email": "cgossett@fmi.com",
      "jobTitle": "Sr PMO Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030371.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000061223",
      "supervisorName": "KEVIN JACOBS"
    },
    {
      "employeeID": "0000063744",
      "firstName": "Russell",
      "lastName": "Gossett",
      "displayName": "RUSSELL GOSSETT",
      "email": "rgossett@fmi.com",
      "jobTitle": "Ld Environmental Systems Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000063744.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000016264",
      "supervisorName": "JERRY ROOSE"
    },
    {
      "employeeID": "0060030270",
      "firstName": "Krista",
      "lastName": "Goyarts",
      "displayName": "KRISTA GOYARTS",
      "email": "kgoyarts@fmi.com",
      "jobTitle": "IT Business Liaison",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060030270.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056399",
      "supervisorName": "LAUREN FRANK"
    },
    {
      "employeeID": "0060033036",
      "firstName": "Ashcon",
      "lastName": "Gozloo",
      "displayName": "JOHNATHAN GOZLOO",
      "email": "jgozloo@fmi.com",
      "jobTitle": "Mine Engineer II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060033036.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0060076714",
      "supervisorName": "FANUEL BANDA"
    },
    {
      "employeeID": "0060059565",
      "firstName": "Jose",
      "lastName": "Granado",
      "displayName": "JOSE GRANADO",
      "email": "jgranado1@fmi.com",
      "jobTitle": "Sr Desktop Support Technician",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060059565.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060056603",
      "supervisorName": "PAUL SMIGEL"
    },
    {
      "employeeID": "0060087939",
      "firstName": "Olivier",
      "lastName": "Grandjean",
      "displayName": "OLIVIER GRANDJEAN",
      "email": "ograndje@fmi.com",
      "jobTitle": "Operating Model Execution Lead",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087939.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060085886",
      "supervisorName": "LAURA DOTSETH"
    },
    {
      "employeeID": "0000054069",
      "firstName": "Todd",
      "lastName": "Graver",
      "displayName": "TODD GRAVER",
      "email": "tgraver@fmi.com",
      "jobTitle": "VP Operations HR",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054069.jpg",
      "companyDescription": "International Administrat",
      "supervisorID": "0000010314",
      "supervisorName": "STEVE HIGGINS"
    },
    {
      "employeeID": "0060076146",
      "firstName": "Chris",
      "lastName": "Gray",
      "displayName": "CHRIS GRAY",
      "email": "cgray1@fmi.com",
      "jobTitle": "SAP Asset Mgr Sr Consultant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076146.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051441",
      "supervisorName": "PAUL WHITEAKER"
    },
    {
      "employeeID": "0060043688",
      "firstName": "David",
      "lastName": "Gray",
      "displayName": "DAVID GRAY",
      "email": "dgray@fmi.com",
      "jobTitle": "Systems Architect Database III",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060043688.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000085449",
      "supervisorName": "BRODY DELCAMBRE"
    },
    {
      "employeeID": "0060075913",
      "firstName": "Malcolm",
      "lastName": "Gray",
      "displayName": "MALCOLM GRAY",
      "email": "mgray@fmi.com",
      "jobTitle": "Project Contracts Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060075913.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000092167",
      "supervisorName": "DANIEL GONZALEZ OLAYA"
    },
    {
      "employeeID": "0060079936",
      "firstName": "Paul",
      "lastName": "Green",
      "displayName": "PAUL GREEN",
      "email": "pgreen@fmi.com",
      "jobTitle": "DRILL TECH INC",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079936.JPG",
      "companyDescription": "Morenci Mining JV",
      "supervisorID": "0000056761",
      "supervisorName": "WILLIAM WEARNE"
    },
    {
      "employeeID": "0060015803",
      "firstName": "Hughes",
      "lastName": "Grehan",
      "displayName": "HUGHES GREHAN",
      "email": "hgrehan@fmi.com",
      "jobTitle": "Contractor Access Only",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060015803.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000986346",
      "supervisorName": "DOUGLAS CURRAULT"
    },
    {
      "employeeID": "0000054740",
      "firstName": "William",
      "lastName": "Grief",
      "displayName": "WILLIAM GRIEF",
      "email": "wgrief@fmi.com",
      "jobTitle": "Remediation Projects PCS Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054740.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000026712",
      "supervisorName": "BRYCE ROMIG"
    },
    {
      "employeeID": "0000016174",
      "firstName": "Ruben",
      "lastName": "Griffith",
      "displayName": "RUBEN GRIFFITH",
      "email": "rgriffit@fmi.com",
      "jobTitle": "General Mgr Mining Ops Improvement",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000016174.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017636",
      "supervisorName": "CORY STEVENS"
    },
    {
      "employeeID": "0000089854",
      "firstName": "Keri",
      "lastName": "Griffith-Terry",
      "displayName": "KERI GRIFFITH-TERRY",
      "email": "kgriffit@fmi.com",
      "jobTitle": "Sr Benefits Spec Retire",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000089854.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028334",
      "supervisorName": "RACHAEL LAUFENBERG"
    },
    {
      "employeeID": "0061002444",
      "firstName": "Jacob",
      "lastName": "Griffiths",
      "displayName": "JACOB GRIFFITHS",
      "email": "jgriffit@fmi.com",
      "jobTitle": "Sr IT Security Analyst - Cloud",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002444.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060063022",
      "supervisorName": "SEAN MCWHORTER"
    },
    {
      "employeeID": "0060057990",
      "firstName": "Chris",
      "lastName": "Gropel",
      "displayName": "CHRIS GROPEL",
      "email": "cgropel@fmi.com",
      "jobTitle": "Sr HR Metrics Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060057990.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056211",
      "supervisorName": "LYMAN EDWARDS"
    },
    {
      "employeeID": "0061002265",
      "firstName": "Damon",
      "lastName": "Gross",
      "displayName": "DAMON GROSS",
      "email": "dgross@fmi.com",
      "jobTitle": "Mgr Content & Editorial Operations",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002265.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000050020",
      "supervisorName": "RUTHANNE VAN DYKE"
    },
    {
      "employeeID": "0060088287",
      "firstName": "Ryan",
      "lastName": "Gross",
      "displayName": "RYAN GROSS",
      "email": "rgross@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088287.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000030188",
      "firstName": "Charles",
      "lastName": "Grundell",
      "displayName": "CHARLES GRUNDELL",
      "email": "cgrundel@fmi.com",
      "jobTitle": "Sr Financial Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030188.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051814",
      "supervisorName": "JEFF JOHNSON"
    },
    {
      "employeeID": "0060087936",
      "firstName": "Steven",
      "lastName": "Grune",
      "displayName": "STEVEN GRUNE",
      "email": "sgrune@fmi.com",
      "jobTitle": "",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060087936.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000093800",
      "firstName": "Andrea",
      "lastName": "Guare",
      "displayName": "ANDREA GUARE",
      "email": "aguare@fmi.com",
      "jobTitle": "Benefits Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000093800.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000014944",
      "supervisorName": "CECE LEWIN"
    },
    {
      "employeeID": "0060082058",
      "firstName": "Frantz",
      "lastName": "Guerrier",
      "displayName": "FRANTZ GUERRIER",
      "email": null,
      "jobTitle": "Scanning Services Contractor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060082058.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030672",
      "supervisorName": "SHARON AHMED"
    },
    {
      "employeeID": "0000011495",
      "firstName": "James",
      "lastName": "Guidry",
      "displayName": "JIM GUIDRY",
      "email": "jguidry@fmi.com",
      "jobTitle": "Director Contract Development",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011495.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000019036",
      "supervisorName": "ERIC BOURGEOIS"
    },
    {
      "employeeID": "0060051377",
      "firstName": "Jerene",
      "lastName": "Guidry",
      "displayName": "JERENE GUIDRY",
      "email": "jguidry3@fmi.com",
      "jobTitle": "Executive Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060051377.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000085369",
      "supervisorName": "RICHARD ADKERSON"
    },
    {
      "employeeID": "0060087176",
      "firstName": "Aditi",
      "lastName": "Gulati",
      "displayName": "ADITI GULATI",
      "email": "agulati1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087176.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060086006",
      "firstName": "Gulmyrat",
      "lastName": "Gullyev",
      "displayName": "GULMYRAT GULLYEV",
      "email": "ggullyev@fmi.com",
      "jobTitle": "Cost Lead",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086006.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0000053827",
      "firstName": "Swen",
      "lastName": "Gunderson",
      "displayName": "SWEN GUNDERSON",
      "email": "sgunders@fmi.com",
      "jobTitle": "Dir HR Business Partner",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000053827.jpg",
      "companyDescription": "Climax Moly Co Admin",
      "supervisorID": "0000054069",
      "supervisorName": "TODD GRAVER"
    },
    {
      "employeeID": "0060055898",
      "firstName": "Anuj",
      "lastName": "Gupta",
      "displayName": "ANUJ GUPTA",
      "email": "agupta2@fmi.com",
      "jobTitle": "",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060055898.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060050437",
      "supervisorName": "MICHAEL BISCHOF"
    },
    {
      "employeeID": "0060073883",
      "firstName": "Priya",
      "lastName": "Gupta",
      "displayName": "PRIYA GUPTA",
      "email": "pgupta@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060073883.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060062139",
      "firstName": "Ranjiv",
      "lastName": "Gupta",
      "displayName": "RANJIV GUPTA",
      "email": "rgupta2@fmi.com",
      "jobTitle": "Chief Geotechnical Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060062139.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000093464",
      "supervisorName": "GEORGIA LYSAY"
    },
    {
      "employeeID": "0060054625",
      "firstName": "Jane",
      "lastName": "Gurevich",
      "displayName": "JANE GUREVICH",
      "email": "jgurevic@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060054625.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0061003712",
      "firstName": "Melissa",
      "lastName": "Gurtler",
      "displayName": "MELISSA GURTLER",
      "email": "mgurtler5@fmi.com",
      "jobTitle": "Sr Recruiter",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003712.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060076284",
      "supervisorName": "DANELLE MINER"
    },
    {
      "employeeID": "0061003991",
      "firstName": "Kelyn",
      "lastName": "Guthrie",
      "displayName": "KELYN GUTHRIE",
      "email": "kguthrie@fmi.com",
      "jobTitle": "Treasury Support Specialist",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003991.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030525",
      "supervisorName": "ELLIE MIKES"
    },
    {
      "employeeID": "0060089329",
      "firstName": "Mario",
      "lastName": "Gutierrez",
      "displayName": "MARIO GUTIERREZ",
      "email": "mgutierr21@fmi.com",
      "jobTitle": "ROD & COMPANY",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089329.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060086570",
      "firstName": "Miguel",
      "lastName": "Gutierrez",
      "displayName": "MIGUEL GUTIERREZ",
      "email": "mgutierr18@fmi.com",
      "jobTitle": "Project Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086570.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0000088409",
      "firstName": "Silvia",
      "lastName": "Gutierrez",
      "displayName": "SILVIA GUTIERREZ",
      "email": "sgutierr6@fmi.com",
      "jobTitle": "Sr Sales Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088409.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000026557",
      "supervisorName": "KRISTA COLEMAN"
    },
    {
      "employeeID": "0060081227",
      "firstName": "Varun",
      "lastName": "H G",
      "displayName": "VARUN H G",
      "email": "vhg@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081227.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060079122",
      "firstName": "Robert",
      "lastName": "Haag",
      "displayName": "ROBERT HAAG",
      "email": "rhaag@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079122.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089084",
      "supervisorName": "AMANDA HERNANDEZ"
    },
    {
      "employeeID": "0060076762",
      "firstName": "Arash",
      "lastName": "Habibi",
      "displayName": "ARASH HABIBI",
      "email": "ahabibi@fmi.com",
      "jobTitle": "Sr UG Mine Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076762.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0060076714",
      "supervisorName": "FANUEL BANDA"
    },
    {
      "employeeID": "0060082671",
      "firstName": "Meadow",
      "lastName": "Hackett",
      "displayName": "MEADOW HACKETT",
      "email": "mhackett@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060082671.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060022751",
      "firstName": "Erin",
      "lastName": "Hageman",
      "displayName": "ERIN HAGEMAN",
      "email": "ehageman@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060022751.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055671",
      "supervisorName": "STEVE DEVORE"
    },
    {
      "employeeID": "0060043528",
      "firstName": "Monte",
      "lastName": "Hague",
      "displayName": "MONTE HAGUE",
      "email": "mhague@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060043528.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060076714",
      "supervisorName": "FANUEL BANDA"
    },
    {
      "employeeID": "0060037336",
      "firstName": "Alida",
      "lastName": "Hainkel",
      "displayName": "ALIDA HAINKEL",
      "email": "ahainkel@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060037336.jpg",
      "companyDescription": "McMoRan Oil & Gas LLC",
      "supervisorID": "0000011474",
      "supervisorName": "HEIDI DALE"
    },
    {
      "employeeID": "0060086560",
      "firstName": "Jered",
      "lastName": "Hales",
      "displayName": "JERED HALES",
      "email": "jhales@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086560.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000013819",
      "supervisorName": "RENE REYES"
    },
    {
      "employeeID": "0060025292",
      "firstName": "Cassandra",
      "lastName": "Hall",
      "displayName": "CASSANDRA HALL",
      "email": "chall@fmi.com",
      "jobTitle": "Mgr Geotechnical Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060025292.JPG",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000060797",
      "supervisorName": "TAMARA JOHNDROW"
    },
    {
      "employeeID": "0000010402",
      "firstName": "Edward",
      "lastName": "Hall",
      "displayName": "EDWARD HALL",
      "email": "ehall@fmi.com",
      "jobTitle": "Mgr Environmental Regional",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000010402.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000016264",
      "supervisorName": "JERRY ROOSE"
    },
    {
      "employeeID": "0000094762",
      "firstName": "Stefanie",
      "lastName": "Hall",
      "displayName": "STEFANIE HALL",
      "email": "shall@fmi.com",
      "jobTitle": "Accounting Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000094762.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000018777",
      "supervisorName": "SHARON CHANEZ"
    },
    {
      "employeeID": "0060030557",
      "firstName": "Traci",
      "lastName": "Hall",
      "displayName": "TRACI HALL",
      "email": "thall1@fmi.com",
      "jobTitle": "IT Project Mgr II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060030557.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000085449",
      "supervisorName": "BRODY DELCAMBRE"
    },
    {
      "employeeID": "0060026808",
      "firstName": "Sandy",
      "lastName": "Hallman",
      "displayName": "SANDY HALLMAN",
      "email": "shallman@fmi.com",
      "jobTitle": "Sr HRMS Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060026808.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054930",
      "supervisorName": "DEBBIE BAIRD"
    },
    {
      "employeeID": "0060079756",
      "firstName": "Jasmine",
      "lastName": "Hambright",
      "displayName": "JASMINE HAMBRIGHT",
      "email": "jhambrig@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079756.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060029856",
      "supervisorName": "LORIE FORBIS"
    },
    {
      "employeeID": "0060075487",
      "firstName": "Alyssa",
      "lastName": "Handmaker",
      "displayName": "ALYSSA HANDMAKER",
      "email": "ahandmak@fmi.com",
      "jobTitle": "Staffing Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060075487.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090027",
      "supervisorName": "BETSY JOHNSON"
    },
    {
      "employeeID": "0061002235",
      "firstName": "Lillian",
      "lastName": "Hanna",
      "displayName": "LILI HANNA",
      "email": "lhanna1@fmi.com",
      "jobTitle": "PT Temporary Non-Summer Intern",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002235.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090027",
      "supervisorName": "BETSY JOHNSON"
    },
    {
      "employeeID": "0060065305",
      "firstName": "Brent",
      "lastName": "Hansen",
      "displayName": "BRENT HANSEN",
      "email": "bhansen1@fmi.com",
      "jobTitle": "Procurement Ld",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065305.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089084",
      "supervisorName": "AMANDA HERNANDEZ"
    },
    {
      "employeeID": "0000028822",
      "firstName": "Lisa",
      "lastName": "Hansen",
      "displayName": "LISA HANSEN",
      "email": "lhansen@fmi.com",
      "jobTitle": "Mgr HR Systems",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000028822.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000016919",
      "supervisorName": "SCOTT KIEL"
    },
    {
      "employeeID": "0060077876",
      "firstName": "Anthony",
      "lastName": "Hanson",
      "displayName": "ANTHONY HANSON",
      "email": "ahanson1@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077876.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060057945",
      "firstName": "Mark",
      "lastName": "Hanson",
      "displayName": "MARK HANSON",
      "email": "mhanson2@fmi.com",
      "jobTitle": "Dir Energy Management",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060057945.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000088202",
      "supervisorName": "TOM STUFFCO"
    },
    {
      "employeeID": "0060088895",
      "firstName": "Asad",
      "lastName": "Haq",
      "displayName": "ASAD HAQ",
      "email": "ahaq2@fmi.com",
      "jobTitle": "Data Scientist",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088895.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060047531",
      "supervisorName": "TRAVIS GADDIE"
    },
    {
      "employeeID": "0061001121",
      "firstName": "Imran",
      "lastName": "Haque",
      "displayName": "IMRAN HAQUE",
      "email": "ihaque@fmi.com",
      "jobTitle": "Geomechanical Engineer II",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001121.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0060072868",
      "supervisorName": "JACQUES NGUZ TSHISENS"
    },
    {
      "employeeID": "0060025215",
      "firstName": "Erin",
      "lastName": "Hare",
      "displayName": "ERIN HARE",
      "email": "ehare@fmi.com",
      "jobTitle": "Mgr Contracts I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060025215.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000092167",
      "supervisorName": "DANIEL GONZALEZ OLAYA"
    },
    {
      "employeeID": "0000016137",
      "firstName": "Gregory",
      "lastName": "Hare",
      "displayName": "GREGORY HARE",
      "email": "ghare@fmi.com",
      "jobTitle": "Sr Investigator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000016137.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094868",
      "supervisorName": "STEPHEN NEHRING"
    },
    {
      "employeeID": "0000030545",
      "firstName": "Angela",
      "lastName": "Harmon",
      "displayName": "ANGIE HARMON",
      "email": "aharmon@fmi.com",
      "jobTitle": "Regional Mgr CD NA",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030545.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000010897",
      "supervisorName": "TRACY ABERNETHY"
    },
    {
      "employeeID": "0000017030",
      "firstName": "Barbra",
      "lastName": "Harmon",
      "displayName": "BARBIE HARMON",
      "email": "bharmon@fmi.com",
      "jobTitle": "Sr Paralegal",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000017030.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054194",
      "supervisorName": "SHEILA DEELY"
    },
    {
      "employeeID": "0000059566",
      "firstName": "Jill",
      "lastName": "Harness",
      "displayName": "JILL HARNESS",
      "email": "jharness@fmi.com",
      "jobTitle": "Executive Secretary",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000059566.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000986346",
      "supervisorName": "DOUGLAS CURRAULT"
    },
    {
      "employeeID": "0060059352",
      "firstName": "Logan",
      "lastName": "Harper",
      "displayName": "LOGAN HARPER",
      "email": "lharper1@fmi.com",
      "jobTitle": "Sr Logistics Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060059352.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060064689",
      "supervisorName": "CHARLES ODDO"
    },
    {
      "employeeID": "0000054260",
      "firstName": "Johnny",
      "lastName": "Harrell",
      "displayName": "JOHNNY HARRELL",
      "email": "Johnny_Harrell@fmi.com",
      "jobTitle": "Assistant Mgr Camp",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054260.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051239",
      "supervisorName": "RON HOWARD"
    },
    {
      "employeeID": "0060064675",
      "firstName": "Andrea",
      "lastName": "Harris",
      "displayName": "ANDREA HARRIS",
      "email": "aharris2@fmi.com",
      "jobTitle": "Mgr Sulfuric Acid & Sulfur",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060064675.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000067891",
      "supervisorName": "DAVID SFERRA"
    },
    {
      "employeeID": "0000066173",
      "firstName": "Doug",
      "lastName": "Harris",
      "displayName": "DOUG HARRIS",
      "email": "dharris1@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000066173.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055243",
      "supervisorName": "JOCHEN GLISS"
    },
    {
      "employeeID": "0000088949",
      "firstName": "Steven",
      "lastName": "Harris",
      "displayName": "STEVE HARRIS",
      "email": "sharris@fmi.com",
      "jobTitle": "Sr Process Ldr - Commodity Mgmt",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088949.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054547",
      "supervisorName": "CYNTHIA BARBER"
    },
    {
      "employeeID": "0060081184",
      "firstName": "Susannah",
      "lastName": "Harris",
      "displayName": "SUSANNAH HARRIS",
      "email": "sharris1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081184.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000068017",
      "firstName": "William",
      "lastName": "Harris",
      "displayName": "BILL HARRIS",
      "email": "bharris@fmi.com",
      "jobTitle": "Sr VP Administration",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000068017.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000051953",
      "supervisorName": "KATHLEEN QUIRK"
    },
    {
      "employeeID": "0000089487",
      "firstName": "Leanice",
      "lastName": "Hart",
      "displayName": "LEANICE HART",
      "email": "lhart@fmi.com",
      "jobTitle": "Admin GM",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000089487.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017636",
      "supervisorName": "CORY STEVENS"
    },
    {
      "employeeID": "0000091663",
      "firstName": "Anne",
      "lastName": "Hartingh",
      "displayName": "ANNE HARTINGH",
      "email": "aharting@fmi.com",
      "jobTitle": "Sr Marketing Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091663.jpg",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0000052931",
      "supervisorName": "BARBARA BUCK"
    },
    {
      "employeeID": "0060074550",
      "firstName": "Jane",
      "lastName": "Harvey",
      "displayName": "JANE HARVEY",
      "email": "jharvey1@fmi.com",
      "jobTitle": "Contract Sr Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060074550.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000017473",
      "supervisorName": "GREG COFFIN"
    },
    {
      "employeeID": "0000052761",
      "firstName": "Shikhar",
      "lastName": "Hassani",
      "displayName": "SHIKHAR HASSANI",
      "email": "shassani@fmi.com",
      "jobTitle": "Mgr GSC Systems",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000052761.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024467",
      "supervisorName": "DAVE PREST"
    },
    {
      "employeeID": "0060015702",
      "firstName": "Jessica",
      "lastName": "Hatch",
      "displayName": "JESSICA HATCH",
      "email": "jhatch1@fmi.com",
      "jobTitle": "IT Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060015702.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060074968",
      "firstName": "Thomas",
      "lastName": "Hathaway",
      "displayName": "THOMAS HATHAWAY",
      "email": "thathawa@fmi.com",
      "jobTitle": "Inventory Controller",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060074968.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088472",
      "supervisorName": "RANDY WAWRZYNIAK-FRY"
    },
    {
      "employeeID": "0000023287",
      "firstName": "Raye",
      "lastName": "Hawley",
      "displayName": "RAYE ANN HAWLEY",
      "email": "rhawley@fmi.com",
      "jobTitle": "Manager Marketing",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000023287.jpg",
      "companyDescription": "McMoRan Oil & Gas LLC",
      "supervisorID": "0000054023",
      "supervisorName": "TODD CANTRALL"
    },
    {
      "employeeID": "0060071673",
      "firstName": "Michael",
      "lastName": "Haydock",
      "displayName": "MICHAEL HAYDOCK",
      "email": "mhaydock@fmi.com",
      "jobTitle": "Manager Professional Services",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060071673.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051441",
      "supervisorName": "PAUL WHITEAKER"
    },
    {
      "employeeID": "0000015409",
      "firstName": "Linda",
      "lastName": "Hayes",
      "displayName": "LINDA HAYES",
      "email": "lhayes@fmi.com",
      "jobTitle": "VP Communications",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000015409.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000051953",
      "supervisorName": "KATHLEEN QUIRK"
    },
    {
      "employeeID": "0060079322",
      "firstName": "Michael",
      "lastName": "Haynes",
      "displayName": "MICHAEL HAYNES",
      "email": "mhaynes@fmi.com",
      "jobTitle": "Southwestern Railroad Inc",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079322.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060064689",
      "supervisorName": "CHARLES ODDO"
    },
    {
      "employeeID": "0061002317",
      "firstName": "Samuel",
      "lastName": "Haynes",
      "displayName": "SAM HAYNES",
      "email": "shaynes@fmi.com",
      "jobTitle": "Systems Architect III -Ld Systems",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002317.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030102",
      "supervisorName": "CHUCK SEARLE"
    },
    {
      "employeeID": "0060081142",
      "firstName": "Timothy",
      "lastName": "Head",
      "displayName": "TIMOTHY HEAD",
      "email": "thead2@fmi.com",
      "jobTitle": "Email Architect",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081142.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060054327",
      "supervisorName": "ROBERT KIMBERLIN"
    },
    {
      "employeeID": "0060048485",
      "firstName": "Robert",
      "lastName": "Headley",
      "displayName": "ROBERT HEADLEY",
      "email": "rheadley@fmi.com",
      "jobTitle": "Drafter",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060048485.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0060076714",
      "supervisorName": "FANUEL BANDA"
    },
    {
      "employeeID": "0000054187",
      "firstName": "Brian",
      "lastName": "Heap",
      "displayName": "SCOTT HEAP",
      "email": "sheap@fmi.com",
      "jobTitle": "Spt Operational Improvement",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054187.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000015472",
      "supervisorName": "CURTIS MARSHALL"
    },
    {
      "employeeID": "0060029909",
      "firstName": "Linda",
      "lastName": "Heath",
      "displayName": "LINDA HEATH",
      "email": "lheath@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060029909.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060034177",
      "supervisorName": "CAROLYN LODER"
    },
    {
      "employeeID": "0060039297",
      "firstName": "Austin",
      "lastName": "Hebert",
      "displayName": "AUSTIN HEBERT",
      "email": "ahebert1@fmi.com",
      "jobTitle": "Fin Reporting & Equity Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060039297.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000091498",
      "supervisorName": "KRISTI LAURENT"
    },
    {
      "employeeID": "0000026552",
      "firstName": "Rose",
      "lastName": "Heirman",
      "displayName": "ROSE HEIRMAN",
      "email": "rheirman@fmi.com",
      "jobTitle": "Mgr Commodity Risk Mgmt",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000026552.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000068000",
      "supervisorName": "RANDY NICKLE"
    },
    {
      "employeeID": "0000085046",
      "firstName": "Robert",
      "lastName": "Helm",
      "displayName": "BOB HELM",
      "email": "bhelm@fmi.com",
      "jobTitle": "Assistant Controller Operations FCX",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085046.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000011657",
      "supervisorName": "DON WHITMIRE"
    },
    {
      "employeeID": "0060075460",
      "firstName": "John",
      "lastName": "Henderson",
      "displayName": "J.T. HENDERSON",
      "email": "jhenders4@fmi.com",
      "jobTitle": "Accountant I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060075460.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000029826",
      "supervisorName": "AMY RAMSBACHER"
    },
    {
      "employeeID": "0060076002",
      "firstName": "Stephan",
      "lastName": "Henderson",
      "displayName": "STEPHAN HENDERSON",
      "email": "shenders@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076002.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000061262",
      "supervisorName": "MICHAEL HULSE"
    },
    {
      "employeeID": "0060083975",
      "firstName": "Nancy",
      "lastName": "Hendrickson",
      "displayName": "NANCY HENDRICKSON",
      "email": "nhendric@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083975.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053133",
      "supervisorName": "VALERIE BEACH"
    },
    {
      "employeeID": "0061001970",
      "firstName": "Jonathan",
      "lastName": "Henkel",
      "displayName": "JONATHAN HENKEL",
      "email": "jhenkel@fmi.com",
      "jobTitle": "PT Temporary Non-Summer Intern",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001970.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088468",
      "supervisorName": "ANDREW SUSSMAN"
    },
    {
      "employeeID": "0060088597",
      "firstName": "Mary",
      "lastName": "Hennenfent",
      "displayName": "MARY HENNENFENT",
      "email": "mhennenf@fmi.com",
      "jobTitle": "Contract Recruiter",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088597.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053133",
      "supervisorName": "VALERIE BEACH"
    },
    {
      "employeeID": "0000019241",
      "firstName": "Kimberly",
      "lastName": "Henry",
      "displayName": "KIM HENRY",
      "email": "khenry@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000019241.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051377",
      "supervisorName": "DALE CHRISTIANSEN"
    },
    {
      "employeeID": "0000021022",
      "firstName": "Ryan",
      "lastName": "Henry",
      "displayName": "RYAN HENRY",
      "email": "rhenry@fmi.com",
      "jobTitle": "Dir GSC Operations",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000021022.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000011629",
      "supervisorName": "DANNY HUGHES"
    },
    {
      "employeeID": "0060079867",
      "firstName": "Heri",
      "lastName": "Hermawan",
      "displayName": "HERI HERMAWAN",
      "email": "hhermawa1@fmi.com",
      "jobTitle": "Field Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079867.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0000089084",
      "firstName": "Amanda",
      "lastName": "Hernandez",
      "displayName": "AMANDA HERNANDEZ",
      "email": "ahernand2@fmi.com",
      "jobTitle": "Mgr Procurement",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000089084.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056982",
      "supervisorName": "BRIAN BUTTRAM"
    },
    {
      "employeeID": "0060038782",
      "firstName": "Ray",
      "lastName": "Hernandez",
      "displayName": "RAY HERNANDEZ",
      "email": "rhernand9@fmi.com",
      "jobTitle": "Inventory Ld",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060038782.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000091848",
      "supervisorName": "CHASE PARKER"
    },
    {
      "employeeID": "0060060605",
      "firstName": "Silverio",
      "lastName": "Hernandez",
      "displayName": "SILVERIO HERNANDEZ",
      "email": "shernand1@fmi.com",
      "jobTitle": "SAP Basis/TFM",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060060605.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060039827",
      "supervisorName": "SHASHANK SINGH"
    },
    {
      "employeeID": "0060086987",
      "firstName": "Diana",
      "lastName": "Hernandez Becerra",
      "displayName": "DIANA HERNANDEZ BECERRA",
      "email": "dhernand4@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086987.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060067306",
      "firstName": "Kent",
      "lastName": "Hertzell",
      "displayName": "KENT HERTZELL",
      "email": "khertzel@fmi.com",
      "jobTitle": "Vulnerability Mgmt Program Architect",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067306.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060065452",
      "supervisorName": "JEFF PICK"
    },
    {
      "employeeID": "0060070738",
      "firstName": "Christopher",
      "lastName": "Hester",
      "displayName": "CHRISTOPHER HESTER",
      "email": "chester@fmi.com",
      "jobTitle": "Sr Logistics Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060070738.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060073853",
      "supervisorName": "GRETCHEN DONAHUE"
    },
    {
      "employeeID": "0060078787",
      "firstName": "Andrew",
      "lastName": "Hetrick",
      "displayName": "ANDREW HETRICK",
      "email": "ahetrick@fmi.com",
      "jobTitle": "Scrum Master",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078787.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056399",
      "supervisorName": "LAUREN FRANK"
    },
    {
      "employeeID": "0000030111",
      "firstName": "Stephanie",
      "lastName": "Hewitt",
      "displayName": "STEPHANIE HEWITT",
      "email": "shewitt@fmi.com",
      "jobTitle": "Mgr Regional Supply Chain",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030111.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000011629",
      "supervisorName": "DANNY HUGHES"
    },
    {
      "employeeID": "0000010979",
      "firstName": "Nicholas",
      "lastName": "Hickson",
      "displayName": "NICHOLAS HICKSON",
      "email": "nhickson@fmi.com",
      "jobTitle": "Mgr Systems Operational Improvement",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000010979.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000016174",
      "supervisorName": "RUBEN GRIFFITH"
    },
    {
      "employeeID": "0060087833",
      "firstName": "Sonia",
      "lastName": "Hidalgo",
      "displayName": "SONIA HIDALGO",
      "email": "shidalgo1@fmi.com",
      "jobTitle": "Document Controller",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087833.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0000010314",
      "firstName": "Stephen",
      "lastName": "Higgins",
      "displayName": "STEVE HIGGINS",
      "email": "shiggins@fmi.com",
      "jobTitle": "SVP and Chief Administrative Officer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000010314.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051953",
      "supervisorName": "KATHLEEN QUIRK"
    },
    {
      "employeeID": "0060050032",
      "firstName": "Lori",
      "lastName": "Higuera",
      "displayName": "LORI HIGUERA",
      "email": "lhiguera@fmi.com",
      "jobTitle": "Asst General Counsel I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060050032.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000986346",
      "supervisorName": "DOUGLAS CURRAULT"
    },
    {
      "employeeID": "0000067245",
      "firstName": "Raeef",
      "lastName": "Hijazi",
      "displayName": "RAEEF HIJAZI",
      "email": "rhijazi@fmi.com",
      "jobTitle": "Proj Mgr Engineering II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067245.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0000088306",
      "firstName": "Jeanne",
      "lastName": "Hill",
      "displayName": "JEANNE HILL",
      "email": "jhill@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088306.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0000024233",
      "firstName": "Leonard",
      "lastName": "Hill",
      "displayName": "LEN HILL",
      "email": "lhill@fmi.com",
      "jobTitle": "Dir Metallurgy & Strategic Planning",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000024233.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088202",
      "supervisorName": "TOM STUFFCO"
    },
    {
      "employeeID": "0060079709",
      "firstName": "Emily",
      "lastName": "Hillyard",
      "displayName": "EMILY HILLYARD",
      "email": "ehillyar@fmi.com",
      "jobTitle": "Project Planner",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079709.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060083320",
      "firstName": "Jordan",
      "lastName": "Hines",
      "displayName": "JORDAN HINES",
      "email": "jhines2@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083320.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060043319",
      "firstName": "Tracy",
      "lastName": "Hippensteel",
      "displayName": "TRACY HIPPENSTEEL",
      "email": "thippens@fmi.com",
      "jobTitle": "Sr Estimator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060043319.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060025043",
      "supervisorName": "DAVID DEAN"
    },
    {
      "employeeID": "0000019507",
      "firstName": "Jaime",
      "lastName": "Hirales",
      "displayName": "JAIME HIRALES",
      "email": "jhirales@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000019507.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0060061264",
      "firstName": "Thidar",
      "lastName": "Hla",
      "displayName": "THIDAR HLA",
      "email": "thla@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060061264.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060080701",
      "firstName": "Kevin",
      "lastName": "Ho",
      "displayName": "KEVIN HO",
      "email": "kho@fmi.com",
      "jobTitle": "Data Migration Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080701.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065010",
      "supervisorName": "JAMES PATTERSON"
    },
    {
      "employeeID": "0061000322",
      "firstName": "Eric",
      "lastName": "Hobbs",
      "displayName": "ERIC HOBBS",
      "email": "ehobbs@fmi.com",
      "jobTitle": "Sr Geologist Res Estimation",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000322.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000086445",
      "supervisorName": "ANDREW ISSEL"
    },
    {
      "employeeID": "0061000316",
      "firstName": "Jennifer",
      "lastName": "Hobbs",
      "displayName": "JENNIFER HOBBS",
      "email": "jhobbs2@fmi.com",
      "jobTitle": "Contract Ld",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000316.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000063218",
      "supervisorName": "BRITTANY STAMEY"
    },
    {
      "employeeID": "0060089185",
      "firstName": "Alexander",
      "lastName": "Hoff",
      "displayName": "ALEX HOFF",
      "email": "ahoff@fmi.com",
      "jobTitle": "Project Controls",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089185.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0000090848",
      "firstName": "John",
      "lastName": "Hoffert",
      "displayName": "JOHN HOFFERT",
      "email": "jhoffert@fmi.com",
      "jobTitle": "Consultant Paid",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090848.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000067840",
      "supervisorName": "MIKE MULAR"
    },
    {
      "employeeID": "0060068625",
      "firstName": "LeRoy",
      "lastName": "Hollenbeck",
      "displayName": "LEROY HOLLENBECK",
      "email": "lhollenb@fmi.com",
      "jobTitle": "Dir Social Resonsibility & Community Dev",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060068625.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000050843",
      "supervisorName": "BILL COBB"
    },
    {
      "employeeID": "0060087955",
      "firstName": "Nicholas",
      "lastName": "Holmay",
      "displayName": "NICHOLAS HOLMAY",
      "email": "nholmay@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087955.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0061000445",
      "firstName": "Tara",
      "lastName": "Holstay",
      "displayName": "TARA HOLSTAY",
      "email": "tholstay@fmi.com",
      "jobTitle": "Agile Coach",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000445.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060069393",
      "supervisorName": "RENEE CAMPISI"
    },
    {
      "employeeID": "0060071612",
      "firstName": "Mandy",
      "lastName": "Holt",
      "displayName": "MANDY HOLT",
      "email": "mholt1@fmi.com",
      "jobTitle": "Sr Payroll Clerk",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060071612.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000060444",
      "supervisorName": "CHRIS JORDAN"
    },
    {
      "employeeID": "0000091062",
      "firstName": "Katharine",
      "lastName": "Holtman",
      "displayName": "KATIE HOLTMAN",
      "email": "kholtman@fmi.com",
      "jobTitle": "Travel Documentation Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091062.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000086485",
      "supervisorName": "MICHELE GANNON"
    },
    {
      "employeeID": "0060060387",
      "firstName": "Waylon",
      "lastName": "Honga",
      "displayName": "WAYLON HONGA",
      "email": "whonga@fmi.com",
      "jobTitle": "Ld Native American Affairs Spec",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060060387.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000066695",
      "supervisorName": "PETER DENETCLAW"
    },
    {
      "employeeID": "0060076405",
      "firstName": "Craig",
      "lastName": "Hoots",
      "displayName": "CRAIG HOOTS",
      "email": "choots@fmi.com",
      "jobTitle": "Sr Tax Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076405.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054340",
      "supervisorName": "JON FORBIS"
    },
    {
      "employeeID": "0060074295",
      "firstName": "Anthony",
      "lastName": "Hoover",
      "displayName": "ANTHONY HOOVER",
      "email": "ahoover@fmi.com",
      "jobTitle": "Inventory Controller",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060074295.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060038782",
      "supervisorName": "RAY HERNANDEZ"
    },
    {
      "employeeID": "0060058309",
      "firstName": "Jeffrey",
      "lastName": "Hopkins",
      "displayName": "JEFF HOPKINS",
      "email": "jhopkins1@fmi.com",
      "jobTitle": "Collaboration Specialist II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060058309.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060030270",
      "supervisorName": "KRISTA GOYARTS"
    },
    {
      "employeeID": "0060069863",
      "firstName": "Brett",
      "lastName": "Hosking",
      "displayName": "BRETT HOSKING",
      "email": "bhosking@fmi.com",
      "jobTitle": "Sr Civil Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060069863.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0060087342",
      "firstName": "Rob",
      "lastName": "Hosmer",
      "displayName": "ROB HOSMER",
      "email": "rhosmer@fmi.com",
      "jobTitle": "Security Project Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087342.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060065452",
      "supervisorName": "JEFF PICK"
    },
    {
      "employeeID": "0061001850",
      "firstName": "Sagar",
      "lastName": "Hossain",
      "displayName": "SAGAR HOSSAIN",
      "email": "shossain@fmi.com",
      "jobTitle": "Electrical Engineer I",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001850.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060018940",
      "supervisorName": "ENEAS EDWIN CALIZAYA"
    },
    {
      "employeeID": "0060088009",
      "firstName": "Marina",
      "lastName": "Hota",
      "displayName": "MARINA HOTA",
      "email": "mhota@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088009.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060083869",
      "firstName": "Cyprian",
      "lastName": "Houck",
      "displayName": "CYPRIAN HOUCK",
      "email": "chouck@fmi.com",
      "jobTitle": "Desktop Support Technician",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083869.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0060023718",
      "supervisorName": "MARK IOIA"
    },
    {
      "employeeID": "0000051239",
      "firstName": "Ronnie",
      "lastName": "Howard",
      "displayName": "RON HOWARD",
      "email": "rhoward@fmi.com",
      "jobTitle": "Mgr Camp",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051239.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051215",
      "supervisorName": "DEAN FALGOUST"
    },
    {
      "employeeID": "0060082626",
      "firstName": "Chris",
      "lastName": "Howerin",
      "displayName": "CHRIS HOWERIN",
      "email": "chowerin@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060082626.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060073853",
      "supervisorName": "GRETCHEN DONAHUE"
    },
    {
      "employeeID": "0060081005",
      "firstName": "Aron",
      "lastName": "Howlett",
      "displayName": "ARON HOWLETT",
      "email": "ahowlett@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081005.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060077712",
      "firstName": "Audry",
      "lastName": "Hsu",
      "displayName": "AUDRY HSU",
      "email": "ahsu@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077712.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089905",
      "supervisorName": "SCOTT STATHAM"
    },
    {
      "employeeID": "0000067671",
      "firstName": "Carol",
      "lastName": "Hu",
      "displayName": "CAROL HU",
      "email": "chu@fmi.com",
      "jobTitle": "CM Intl Acctnt/Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067671.jpg",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0000077072",
      "supervisorName": "XIWEN CHEN"
    },
    {
      "employeeID": "0000067679",
      "firstName": "Leonard",
      "lastName": "Hu",
      "displayName": "LEONARD HU",
      "email": "lhu@fmi.com",
      "jobTitle": "CM Intl Sr Dir Mktg China",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067679.jpg",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0000068000",
      "supervisorName": "RANDY NICKLE"
    },
    {
      "employeeID": "0060038334",
      "firstName": "Kent",
      "lastName": "Huang",
      "displayName": "KENT HUANG",
      "email": "khuang@fmi.com",
      "jobTitle": "Mgr Sales",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060038334.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000067679",
      "supervisorName": "LEONARD HU"
    },
    {
      "employeeID": "0060064269",
      "firstName": "Rebecca",
      "lastName": "Hudson-Nunez",
      "displayName": "REBECCA HUDSON-NUNEZ",
      "email": "rhnunez@fmi.com",
      "jobTitle": "Mgr Government Relations",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060064269.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094443",
      "supervisorName": "RICHARD BARK"
    },
    {
      "employeeID": "0000029717",
      "firstName": "Michael",
      "lastName": "Huehne",
      "displayName": "MICHAEL HUEHNE",
      "email": "mhuehne@fmi.com",
      "jobTitle": "Business Mgr Exploration",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000029717.jpg",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000017473",
      "supervisorName": "GREG COFFIN"
    },
    {
      "employeeID": "0060081744",
      "firstName": "Eduardo",
      "lastName": "Huergo",
      "displayName": "EDUARDO HUERGO",
      "email": "ehuergo@fmi.com",
      "jobTitle": "Lead Assessor / Client Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081744.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000027435",
      "supervisorName": "BRANDON GILLEY"
    },
    {
      "employeeID": "0000019320",
      "firstName": "Christopher",
      "lastName": "Hughes",
      "displayName": "CHRIS HUGHES",
      "email": "CHughes@fmi.com",
      "jobTitle": "Bus Solution Architect III",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000019320.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030258",
      "supervisorName": "KETAN PATEL"
    },
    {
      "employeeID": "0000011629",
      "firstName": "Daniel",
      "lastName": "Hughes",
      "displayName": "DANNY HUGHES",
      "email": "dhughes@fmi.com",
      "jobTitle": "VP Supply Chain",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011629.jpg",
      "companyDescription": "International Administrat",
      "supervisorID": "0000010314",
      "supervisorName": "STEVE HIGGINS"
    },
    {
      "employeeID": "0060051191",
      "firstName": "Jason",
      "lastName": "Hughes",
      "displayName": "JASON HUGHES",
      "email": "jhughes@fmi.com",
      "jobTitle": "Sr Counsel II Environmental",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060051191.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089905",
      "supervisorName": "SCOTT STATHAM"
    },
    {
      "employeeID": "0000055764",
      "firstName": "Michele",
      "lastName": "Hughes",
      "displayName": "MICHELE HUGHES",
      "email": "mhughes2@fmi.com",
      "jobTitle": "Mgr Legal Administration",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000055764.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000986346",
      "supervisorName": "DOUGLAS CURRAULT"
    },
    {
      "employeeID": "0000058233",
      "firstName": "Tonya",
      "lastName": "Hughes",
      "displayName": "TONYA HUGHES",
      "email": "thughes@fmi.com",
      "jobTitle": "Procurement Ld",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000058233.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089084",
      "supervisorName": "AMANDA HERNANDEZ"
    },
    {
      "employeeID": "0061002233",
      "firstName": "Amelia",
      "lastName": "Huish",
      "displayName": "AMY HUISH",
      "email": "ahuish@fmi.com",
      "jobTitle": "Logistics Analyst II",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002233.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000063845",
      "supervisorName": "RYAN FORMAN"
    },
    {
      "employeeID": "0000052927",
      "firstName": "Britton",
      "lastName": "Huish",
      "displayName": "BRITT HUISH",
      "email": "bhuish@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000052927.jpg",
      "companyDescription": "Climax Moly Co Admin",
      "supervisorID": "0000051043",
      "supervisorName": "JESSICA PHILLIPO"
    },
    {
      "employeeID": "0060024963",
      "firstName": "Hunter",
      "lastName": "Huish",
      "displayName": "HUNTER HUISH",
      "email": "hhuish1@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060024963.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000058233",
      "supervisorName": "TONYA HUGHES"
    },
    {
      "employeeID": "0000015838",
      "firstName": "Ivan",
      "lastName": "Huish",
      "displayName": "IVAN HUISH",
      "email": "ihuish@fmi.com",
      "jobTitle": "Sr Process Ldr Supply Chain",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000015838.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055640",
      "supervisorName": "STEVEN MCBRIDE"
    },
    {
      "employeeID": "0000061262",
      "firstName": "George",
      "lastName": "Hulse",
      "displayName": "MICHAEL HULSE",
      "email": "mhulse@fmi.com",
      "jobTitle": "Project Mgr Engineering II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000061262.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0060081144",
      "firstName": "Ed",
      "lastName": "Humphries",
      "displayName": "ED HUMPHRIES",
      "email": "ehumphri@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081144.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060049496",
      "firstName": "Brenda",
      "lastName": "Hurtado",
      "displayName": "BRENDA HURTADO",
      "email": "bhurtado1@fmi.com",
      "jobTitle": "Mobility & Recruiting Support Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060049496.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053133",
      "supervisorName": "VALERIE BEACH"
    },
    {
      "employeeID": "0000095416",
      "firstName": "Jasminko",
      "lastName": "Husanovic",
      "displayName": "JASMINKO HUSANOVIC",
      "email": "jhusanov@fmi.com",
      "jobTitle": "Sr Accountant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000095416.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000095201",
      "supervisorName": "CHRISTINE OXFORD"
    },
    {
      "employeeID": "0060080525",
      "firstName": "Preston",
      "lastName": "Hutcherson",
      "displayName": "PRESTON HUTCHERSON",
      "email": "phutcher@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080525.JPG",
      "companyDescription": "FM Bagdad Inc",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060016031",
      "firstName": "MICHAEL LUIS",
      "lastName": "IBARRA",
      "displayName": "MICHAEL LUIS IBARRA",
      "email": "mibarrag@fmi.com",
      "jobTitle": "Bus Solution Architect II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060016031.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051441",
      "supervisorName": "PAUL WHITEAKER"
    },
    {
      "employeeID": "0060088643",
      "firstName": "Hafizul",
      "lastName": "Ihsan",
      "displayName": "HAFIZUL IHSAN",
      "email": "hihsan@fmi.com",
      "jobTitle": "Field Electrical Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088643.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060023718",
      "firstName": "Mark",
      "lastName": "Ioia",
      "displayName": "MARK IOIA",
      "email": "mioia@fmi.com",
      "jobTitle": "Mgr Global End User Services",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060023718.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000085449",
      "supervisorName": "BRODY DELCAMBRE"
    },
    {
      "employeeID": "0060087689",
      "firstName": "Dedi",
      "lastName": "Irawan",
      "displayName": "DEDI IRAWAN",
      "email": "dirawan10@fmi.com",
      "jobTitle": "Construction Assistant",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087689.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060079883",
      "firstName": "Makhabbat",
      "lastName": "Iskakova",
      "displayName": "MAKHABBAT ISKAKOVA",
      "email": "miskakov@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079883.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017705",
      "supervisorName": "CORINNE SHANK"
    },
    {
      "employeeID": "0000086445",
      "firstName": "Andrzej",
      "lastName": "Issel",
      "displayName": "ANDREW ISSEL",
      "email": "aissel@fmi.com",
      "jobTitle": "Dir Resource Estimation & Reporting - PT",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086445.JPG",
      "companyDescription": "International Administrat",
      "supervisorID": "0000085369",
      "supervisorName": "RICHARD ADKERSON"
    },
    {
      "employeeID": "0060081282",
      "firstName": "Avilash",
      "lastName": "Iyer",
      "displayName": "AVILASH IYER",
      "email": "aiyer@fmi.com",
      "jobTitle": "SCCM Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081282.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094810",
      "supervisorName": "PRADEEP KUMAR PARIDA"
    },
    {
      "employeeID": "0000061223",
      "firstName": "Kevin",
      "lastName": "Jacobs",
      "displayName": "KEVIN JACOBS",
      "email": "kjacobs@fmi.com",
      "jobTitle": "Mgr PMO Quality",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000061223.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056399",
      "supervisorName": "LAUREN FRANK"
    },
    {
      "employeeID": "0060076481",
      "firstName": "Curt",
      "lastName": "Jacobsen",
      "displayName": "CURT JACOBSEN",
      "email": "cjacobse@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076481.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0000086727",
      "firstName": "Minor",
      "lastName": "Jahncke",
      "displayName": "MINOR JAHNCKE",
      "email": "mjahncke@fmi.com",
      "jobTitle": "Sr Analyst - Cash Management",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086727.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051194",
      "supervisorName": "BOB BOYCE"
    },
    {
      "employeeID": "0060087690",
      "firstName": "Nehil",
      "lastName": "Jain",
      "displayName": "NEHIL JAIN",
      "email": "njain@fmi.com",
      "jobTitle": "ML / Data Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087690.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060047531",
      "supervisorName": "TRAVIS GADDIE"
    },
    {
      "employeeID": "0060056593",
      "firstName": "Ryan",
      "lastName": "Jakubowski",
      "displayName": "RYAN JAKUBOWSKI",
      "email": "rjakubow@fmi.com",
      "jobTitle": "Sr Hydrogeologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060056593.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060052666",
      "supervisorName": "MICHAEL LACEY"
    },
    {
      "employeeID": "0060076764",
      "firstName": "Robert",
      "lastName": "James",
      "displayName": "ROBERT JAMES",
      "email": "rjames3@fmi.com",
      "jobTitle": "Designer/Drafter UG",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076764.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060076714",
      "supervisorName": "FANUEL BANDA"
    },
    {
      "employeeID": "0060064147",
      "firstName": "Robert",
      "lastName": "Jancoski",
      "displayName": "BOB JANCOSKI",
      "email": "bjancosk@fmi.com",
      "jobTitle": "Ld Systems Integrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060064147.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088954",
      "supervisorName": "MIKE LEMMOND"
    },
    {
      "employeeID": "0060086462",
      "firstName": "Sagita",
      "lastName": "Jannati",
      "displayName": "SAGITA JANNATI",
      "email": "sjannati@fmi.com",
      "jobTitle": "QA/QC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086462.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060067168",
      "firstName": "Geoff",
      "lastName": "Jarvis",
      "displayName": "GEOFF JARVIS",
      "email": "gjarvis@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067168.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0000090678",
      "firstName": "Kelli",
      "lastName": "Jauregui",
      "displayName": "KELLI JAUREGUI",
      "email": "kjauregu1@fmi.com",
      "jobTitle": "Commercial Business Systems Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090678.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000050159",
      "supervisorName": "RICH SUTKOWI"
    },
    {
      "employeeID": "0060086688",
      "firstName": "Elaine",
      "lastName": "Jennings",
      "displayName": "ELAINE JENNINGS",
      "email": "ejenning@fmi.com",
      "jobTitle": "Senior Consultant",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086688.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053106",
      "supervisorName": "RYAN DUNNE"
    },
    {
      "employeeID": "0061000229",
      "firstName": "Jeffrey",
      "lastName": "Jennings",
      "displayName": "JEFFREY JENNINGS",
      "email": "jjenning1@fmi.com",
      "jobTitle": "Sr Process Ldr SC-Sustainability",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000229.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000019708",
      "supervisorName": "AUDREY MERTES"
    },
    {
      "employeeID": "0060061199",
      "firstName": "David",
      "lastName": "Jensen",
      "displayName": "DAVID JENSEN",
      "email": "djensen3@fmi.com",
      "jobTitle": "Sr Engineer Water Resources",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060061199.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094452",
      "supervisorName": "MARK SCHMELTER"
    },
    {
      "employeeID": "0000013956",
      "firstName": "Lisa",
      "lastName": "Jensen",
      "displayName": "LISA JENSEN",
      "email": "ljensen@fmi.com",
      "jobTitle": "Spv Benefits Administration",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000013956.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028334",
      "supervisorName": "RACHAEL LAUFENBERG"
    },
    {
      "employeeID": "0060030342",
      "firstName": "Jesse",
      "lastName": "Jett",
      "displayName": "JESSE JETT",
      "email": "jjett1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060030342.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060078505",
      "firstName": "Liangyun",
      "lastName": "Jiang",
      "displayName": "GRACE JIANG",
      "email": "gjiang@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078505.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060065305",
      "supervisorName": "BRENT HANSEN"
    },
    {
      "employeeID": "0060081712",
      "firstName": "Sumana",
      "lastName": "Jogavajjula",
      "displayName": "SUMANA JOGAVAJJULA",
      "email": "sjogavaj@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081712.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060065519",
      "firstName": "Van",
      "lastName": "Johansen",
      "displayName": "VAN JOHANSEN",
      "email": "vjohanse@fmi.com",
      "jobTitle": "Data Analyst I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065519.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060050437",
      "supervisorName": "MICHAEL BISCHOF"
    },
    {
      "employeeID": "0000060797",
      "firstName": "Tamara",
      "lastName": "Johndrow",
      "displayName": "TAMARA JOHNDROW",
      "email": "tjohndro@fmi.com",
      "jobTitle": "Dir Tailings, Crush Leach & Water",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000060797.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000088202",
      "supervisorName": "TOM STUFFCO"
    },
    {
      "employeeID": "0060059053",
      "firstName": "Alexander",
      "lastName": "Johnson",
      "displayName": "ALEX JOHNSON",
      "email": "ajohnson2@fmi.com",
      "jobTitle": "Bus Info/Sys Proc Analyst II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060059053.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000058288",
      "supervisorName": "GREGORY FOX-FITZGERALD"
    },
    {
      "employeeID": "0000090027",
      "firstName": "Betsy",
      "lastName": "Johnson",
      "displayName": "BETSY JOHNSON",
      "email": "bjohnson3@fmi.com",
      "jobTitle": "Mgr College Recruiting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090027.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053075",
      "supervisorName": "RYAN NIESZ"
    },
    {
      "employeeID": "0000090374",
      "firstName": "Gerald",
      "lastName": "Johnson",
      "displayName": "CHIP JOHNSON",
      "email": "cjohnson4@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090374.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000051814",
      "firstName": "Jeffrey",
      "lastName": "Johnson",
      "displayName": "JEFF JOHNSON",
      "email": "jjohnson7@fmi.com",
      "jobTitle": "Mgr Financial Analysis",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051814.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030160",
      "supervisorName": "TODD WILLIAMS"
    },
    {
      "employeeID": "0000019570",
      "firstName": "Kimberly",
      "lastName": "Johnson",
      "displayName": "KIM JOHNSON",
      "email": "kjohnson@fmi.com",
      "jobTitle": "Mgr GSC Training",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000019570.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060052006",
      "supervisorName": "MORGAN LAMB"
    },
    {
      "employeeID": "0000050830",
      "firstName": "Morgan",
      "lastName": "Johnson",
      "displayName": "MORGAN JOHNSON",
      "email": "mjohnson1@fmi.com",
      "jobTitle": "Mgr Strategic Category Managment",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000050830.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000054547",
      "supervisorName": "CYNTHIA BARBER"
    },
    {
      "employeeID": "0000085354",
      "firstName": "Sandra",
      "lastName": "Johnson",
      "displayName": "SANDRA JOHNSON",
      "email": "sjohnson@fmi.com",
      "jobTitle": "Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085354.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000054104",
      "supervisorName": "DAVID NORRISS"
    },
    {
      "employeeID": "0000011677",
      "firstName": "David",
      "lastName": "Joint",
      "displayName": "DAVID JOINT",
      "email": "djoint@fmi.com",
      "jobTitle": "Vice President - Investor Relations",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011677.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051953",
      "supervisorName": "KATHLEEN QUIRK"
    },
    {
      "employeeID": "0000088914",
      "firstName": "Austin",
      "lastName": "Jones",
      "displayName": "AUSTIN JONES",
      "email": "ajones4@fmi.com",
      "jobTitle": "Mgr Waste Programs",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088914.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000016264",
      "supervisorName": "JERRY ROOSE"
    },
    {
      "employeeID": "0060087856",
      "firstName": "Jackie",
      "lastName": "Jones",
      "displayName": "JACKIE JONES",
      "email": "jjones19@fmi.com",
      "jobTitle": "Records Indexing Contractor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087856.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060069816",
      "supervisorName": "PETER RYAN"
    },
    {
      "employeeID": "0000096464",
      "firstName": "Martin",
      "lastName": "Jones",
      "displayName": "MARTIN JONES",
      "email": "mjones1@fmi.com",
      "jobTitle": "Dir Product Stewardship Moly",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000096464.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000050843",
      "supervisorName": "BILL COBB"
    },
    {
      "employeeID": "0060083639",
      "firstName": "Michael",
      "lastName": "Jones",
      "displayName": "MICHAEL JONES",
      "email": "mjones@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083639.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060088488",
      "firstName": "Milton",
      "lastName": "Jones",
      "displayName": "MILTON JONES",
      "email": "mjones11@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088488.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060083920",
      "firstName": "Moses",
      "lastName": "Jones",
      "displayName": "MOSES JONES",
      "email": "mjones6@fmi.com",
      "jobTitle": "Firewall Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083920.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094981",
      "supervisorName": "TINA SLANKAS"
    },
    {
      "employeeID": "0060071707",
      "firstName": "Murphy",
      "lastName": "Jones",
      "displayName": "MURPHY JONES",
      "email": "mjones4@fmi.com",
      "jobTitle": "PVB FABRICATIONS INC",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060071707.JPG",
      "companyDescription": "Morenci Mining JV",
      "supervisorID": "0000056761",
      "supervisorName": "WILLIAM WEARNE"
    },
    {
      "employeeID": "0060089014",
      "firstName": "Stephanie",
      "lastName": "Jones",
      "displayName": "STEPHANIE JONES",
      "email": "sjones11@fmi.com",
      "jobTitle": "ALKU TECHNOLOGIES",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089014.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0000060444",
      "firstName": "Christina",
      "lastName": "Jordan",
      "displayName": "CHRIS JORDAN",
      "email": "cjordan@fmi.com",
      "jobTitle": "Spv Payroll",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000060444.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056399",
      "supervisorName": "LAUREN FRANK"
    },
    {
      "employeeID": "0060072604",
      "firstName": "Vauda",
      "lastName": "Jordan",
      "displayName": "VAUDA JORDAN",
      "email": "vjordan@fmi.com",
      "jobTitle": "Dir Enterprise Security Architecture",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060072604.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030596",
      "supervisorName": "DAVE SOVELL"
    },
    {
      "employeeID": "0000017470",
      "firstName": "Ursula",
      "lastName": "Joseph",
      "displayName": "URSULA JOSEPH",
      "email": "ujoseph@fmi.com",
      "jobTitle": "Admin Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000017470.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000054062",
      "supervisorName": "GREG PROBST"
    },
    {
      "employeeID": "0000086950",
      "firstName": "Eric",
      "lastName": "Jovanovich",
      "displayName": "ERIC JOVANOVICH",
      "email": "ejovanov@fmi.com",
      "jobTitle": "Mgr Environmental",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086950.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000054104",
      "supervisorName": "DAVID NORRISS"
    },
    {
      "employeeID": "0061000132",
      "firstName": "Eric",
      "lastName": "Jovanovich",
      "displayName": "ERIC JOVANOVICH",
      "email": "ejovanov1@fmi.com",
      "jobTitle": "Mgr Environmental",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061000132.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000054104",
      "supervisorName": "DAVID NORRISS"
    },
    {
      "employeeID": "0060055935",
      "firstName": "Rebecca",
      "lastName": "Kahrhoff",
      "displayName": "REBECCA KAHRHOFF",
      "email": "rkahrhof@fmi.com",
      "jobTitle": "GIS Programmer/Developer I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060055935.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000064031",
      "supervisorName": "CHRIS FRANKS"
    },
    {
      "employeeID": "0060043602",
      "firstName": "Surya",
      "lastName": "Kalidindi",
      "displayName": "SURYA KALIDINDI",
      "email": "skalidin@fmi.com",
      "jobTitle": "SAP SCM Bus Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060043602.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068782",
      "supervisorName": "REMI BRANDEBOURG"
    },
    {
      "employeeID": "0060054250",
      "firstName": "Shirish",
      "lastName": "Kamat",
      "displayName": "SHIRISH KAMAT",
      "email": "skamat@fmi.com",
      "jobTitle": "MSO SIEM Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060054250.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060072316",
      "supervisorName": "DAVID RIZA"
    },
    {
      "employeeID": "0060086870",
      "firstName": "Mangala",
      "lastName": "Kamath",
      "displayName": "MANGALA KAMATH",
      "email": "mkamath@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086870.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060077699",
      "firstName": "John",
      "lastName": "Kane",
      "displayName": "JOHN KANE",
      "email": "jkane@fmi.com",
      "jobTitle": "ECM/SharePoint Project Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077699.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060069816",
      "supervisorName": "PETER RYAN"
    },
    {
      "employeeID": "0060083606",
      "firstName": "Rahim",
      "lastName": "Kanjiani",
      "displayName": "RAHIM KANJIANI",
      "email": "rkanjian@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083606.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060073551",
      "firstName": "Sanket",
      "lastName": "Kanodia",
      "displayName": "SANKET KANODIA",
      "email": "skanodia@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060073551.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060076919",
      "firstName": "Emela",
      "lastName": "Kantic",
      "displayName": "EMELA KANTIC",
      "email": "ekantic@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076919.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000093726",
      "firstName": "Pradeep",
      "lastName": "Karna",
      "displayName": "PRADEEP KARNA",
      "email": "pkarna@fmi.com",
      "jobTitle": "Sr Hydrogeologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000093726.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060037502",
      "supervisorName": "SANDY FABRITZ"
    },
    {
      "employeeID": "0060066950",
      "firstName": "Jennifer",
      "lastName": "Karns",
      "displayName": "JENNIFER KARNS",
      "email": "jkarns@fmi.com",
      "jobTitle": "Sr Paralegal - Corporate",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060066950.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055764",
      "supervisorName": "MICHELE HUGHES"
    },
    {
      "employeeID": "0000092571",
      "firstName": "David",
      "lastName": "Kashuba",
      "displayName": "DAVID KASHUBA",
      "email": "dkashuba@fmi.com",
      "jobTitle": "Mgr Metallurgy",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092571.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024233",
      "supervisorName": "LEN HILL"
    },
    {
      "employeeID": "0000095331",
      "firstName": "Kanyembo",
      "lastName": "Katapa",
      "displayName": "KANYEMBO KATAPA",
      "email": "kkatapa@fmi.com",
      "jobTitle": "Mgr Geotechnical Engineering",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000095331.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000060797",
      "supervisorName": "TAMARA JOHNDROW"
    },
    {
      "employeeID": "0060086668",
      "firstName": "Minaz",
      "lastName": "Kathawala",
      "displayName": "MINAZ KATHAWALA",
      "email": "mkathawa@fmi.com",
      "jobTitle": "SAP MDG Functional Lead",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086668.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060087465",
      "supervisorName": "JULIAN PESA"
    },
    {
      "employeeID": "0060075488",
      "firstName": "Venkata Suresh",
      "lastName": "Katragadda",
      "displayName": "VENKATA SURESH KATRAGADDA",
      "email": "vkatraga@fmi.com",
      "jobTitle": "BI Developer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060075488.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0060081239",
      "firstName": "Eric",
      "lastName": "Katz",
      "displayName": "ERIC KATZ",
      "email": "ekatz@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081239.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060037966",
      "firstName": "Chris",
      "lastName": "Kaupp",
      "displayName": "CHRIS KAUPP",
      "email": "ckaupp@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060037966.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085046",
      "supervisorName": "BOB HELM"
    },
    {
      "employeeID": "0000030546",
      "firstName": "Debra",
      "lastName": "Keating",
      "displayName": "DEBBIE KEATING",
      "email": "dkeating@fmi.com",
      "jobTitle": "Accounting Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030546.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015474",
      "supervisorName": "STACY COSTELLO"
    },
    {
      "employeeID": "0060076545",
      "firstName": "Toye",
      "lastName": "Kee",
      "displayName": "TOYE KEE",
      "email": "tkee1@fmi.com",
      "jobTitle": "JOY GLOBAL SURFACE MINING INC",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076545.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017064",
      "supervisorName": "LISA MEDINA"
    },
    {
      "employeeID": "0000091048",
      "firstName": "James",
      "lastName": "Keenan",
      "displayName": "JAY KEENAN",
      "email": "jkeenan@fmi.com",
      "jobTitle": "Employment Verification Coord",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091048.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053282",
      "supervisorName": "SUZANNE PATTISON"
    },
    {
      "employeeID": "0060080045",
      "firstName": "Christian",
      "lastName": "Keil",
      "displayName": "CHRISTIAN KEIL",
      "email": "ckeil1@fmi.com",
      "jobTitle": "Cisco Systems Account Mgr",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080045.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042677",
      "supervisorName": "STEIN ERICSSON"
    },
    {
      "employeeID": "0060089443",
      "firstName": "Heather",
      "lastName": "Keisel",
      "displayName": "HEATHER KEISEL",
      "email": "hkeisel@fmi.com",
      "jobTitle": "Recruiting Coordinator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089443.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053133",
      "supervisorName": "VALERIE BEACH"
    },
    {
      "employeeID": "0000011660",
      "firstName": "Katherine",
      "lastName": "Kelley",
      "displayName": "KATHY KELLEY",
      "email": "kkelley@fmi.com",
      "jobTitle": "Creative Design & Graphics Spv",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011660.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000054062",
      "supervisorName": "GREG PROBST"
    },
    {
      "employeeID": "0000023359",
      "firstName": "Michelle",
      "lastName": "Kelley",
      "displayName": "MICHELLE KELLEY",
      "email": "mkelley@fmi.com",
      "jobTitle": "Accounting Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000023359.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000018777",
      "supervisorName": "SHARON CHANEZ"
    },
    {
      "employeeID": "0060081403",
      "firstName": "Ashley",
      "lastName": "Kellner",
      "displayName": "ASHLEY KELLNER",
      "email": "akellner@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081403.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060043924",
      "firstName": "Colleen",
      "lastName": "Kelly",
      "displayName": "COLLEEN KELLY",
      "email": "ckelly@fmi.com",
      "jobTitle": "Sr Recruiter",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060043924.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060062314",
      "supervisorName": "DREW RENBERG"
    },
    {
      "employeeID": "0060060537",
      "firstName": "Christopher",
      "lastName": "Kemp",
      "displayName": "CHRISTOPHER KEMP",
      "email": "ckemp@fmi.com",
      "jobTitle": "Bus Solution Architect III Systems",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060060537.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088954",
      "supervisorName": "MIKE LEMMOND"
    },
    {
      "employeeID": "0060022168",
      "firstName": "Matej",
      "lastName": "Kenda",
      "displayName": "MATEJ KENDA",
      "email": "mkenda@fmi.com",
      "jobTitle": "Mgr Government Reg & Relations Balkans",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060022168.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000010948",
      "supervisorName": "MAC CANBY"
    },
    {
      "employeeID": "0000014260",
      "firstName": "Michael",
      "lastName": "Kendrick",
      "displayName": "MIKE KENDRICK",
      "email": "mkendric@fmi.com",
      "jobTitle": "President Climax Moly",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000014260.jpg",
      "companyDescription": "Climax Moly Co Admin",
      "supervisorID": "0000017690",
      "supervisorName": "RED CONGER"
    },
    {
      "employeeID": "0061001890",
      "firstName": "Craig",
      "lastName": "Kennedy",
      "displayName": "CRAIG KENNEDY",
      "email": "ckennedy@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001890.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0000094781",
      "firstName": "Krissel",
      "lastName": "Kennedy",
      "displayName": "KRISSEL KENNEDY",
      "email": "kvarela@fmi.com",
      "jobTitle": "Sr Tax Analyst - Provisions & Technology",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000094781.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052232",
      "supervisorName": "HUGH DONAHUE"
    },
    {
      "employeeID": "0060077435",
      "firstName": "Tracy",
      "lastName": "Kennedy",
      "displayName": "TRACY KENNEDY",
      "email": "tkennedy4@fmi.com",
      "jobTitle": "Security PM Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077435.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000061223",
      "supervisorName": "KEVIN JACOBS"
    },
    {
      "employeeID": "0000091150",
      "firstName": "Jason",
      "lastName": "Kepner",
      "displayName": "JASON KEPNER",
      "email": "jkepner@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091150.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0000011372",
      "firstName": "David",
      "lastName": "Kepper",
      "displayName": "DAVID KEPPER",
      "email": "dkepper@fmi.com",
      "jobTitle": "Mgr Cash",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011372.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051194",
      "supervisorName": "BOB BOYCE"
    },
    {
      "employeeID": "0000092101",
      "firstName": "John",
      "lastName": "Key",
      "displayName": "JOHNNY KEY",
      "email": "jkey@fmi.com",
      "jobTitle": "Dir Energy & Power Management",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092101.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088202",
      "supervisorName": "TOM STUFFCO"
    },
    {
      "employeeID": "0061000017",
      "firstName": "Wendy",
      "lastName": "Khamphong",
      "displayName": "WENDY KHAMPHONG",
      "email": "wkhampho@fmi.com",
      "jobTitle": "ERP Project Data Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000017.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000018239",
      "supervisorName": "TERESA YBARRA"
    },
    {
      "employeeID": "0060063386",
      "firstName": "Fahad",
      "lastName": "Khan",
      "displayName": "FAHAD KHAN",
      "email": "fkhan@fmi.com",
      "jobTitle": "IT Project Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060063386.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060054327",
      "supervisorName": "ROBERT KIMBERLIN"
    },
    {
      "employeeID": "0060039433",
      "firstName": "Kashif",
      "lastName": "Khan",
      "displayName": "KASHIF KHAN",
      "email": "kkhan@fmi.com",
      "jobTitle": "WPS Operations",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060039433.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094810",
      "supervisorName": "PRADEEP KUMAR PARIDA"
    },
    {
      "employeeID": "0060059858",
      "firstName": "Shivanshu",
      "lastName": "Khanna",
      "displayName": "SHIVANSHU KHANNA",
      "email": "skhanna@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060059858.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000011812",
      "firstName": "Louis",
      "lastName": "Kieffer",
      "displayName": "LOUIS KIEFFER",
      "email": "lkieffer@fmi.com",
      "jobTitle": "Dir Project Engineering",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011812.jpg",
      "companyDescription": "International Administrat",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0000016919",
      "firstName": "David",
      "lastName": "Kiel",
      "displayName": "SCOTT KIEL",
      "email": "skiel@fmi.com",
      "jobTitle": "Dir HR Systems",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000016919.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000029859",
      "supervisorName": "LINDA SCOTT"
    },
    {
      "employeeID": "0000085581",
      "firstName": "Wendy",
      "lastName": "Kiff",
      "displayName": "WENDY KIFF",
      "email": "wkiff@fmi.com",
      "jobTitle": "Sr Payroll Accountant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085581.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085330",
      "supervisorName": "AIMEE PRAYTOR"
    },
    {
      "employeeID": "0000051418",
      "firstName": "Donna",
      "lastName": "Kihneman",
      "displayName": "DONNA KIHNEMAN",
      "email": "dkihnema@fmi.com",
      "jobTitle": "Accountant Senior Revenue",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051418.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000086686",
      "supervisorName": "ANGELO GONZALES"
    },
    {
      "employeeID": "0060031200",
      "firstName": "Bert",
      "lastName": "Kilanowski",
      "displayName": "BERT KILANOWSKI",
      "email": "bkilanow@fmi.com",
      "jobTitle": "Mgr Sales Powder Metallurgy",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060031200.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0060030480",
      "supervisorName": "JEFF BLAZEK"
    },
    {
      "employeeID": "0060080608",
      "firstName": "Erin",
      "lastName": "Kilpatrick",
      "displayName": "ERIN KILPATRICK",
      "email": "ekilpatr@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080608.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060067607",
      "firstName": "Homin",
      "lastName": "Kim",
      "displayName": "HOMIN KIM",
      "email": "hkim@fmi.com",
      "jobTitle": "Civil Engineer II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067607.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060029045",
      "supervisorName": "BRANT WHITING"
    },
    {
      "employeeID": "0060087666",
      "firstName": "Linsey",
      "lastName": "Kim",
      "displayName": "LINSEY KIM",
      "email": "lkim@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087666.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060054327",
      "firstName": "Robert",
      "lastName": "Kimberlin",
      "displayName": "ROBERT KIMBERLIN",
      "email": "rkimberl@fmi.com",
      "jobTitle": "Infrastructure Operations Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060054327.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000085449",
      "supervisorName": "BRODY DELCAMBRE"
    },
    {
      "employeeID": "0000054140",
      "firstName": "Keith",
      "lastName": "Kimble",
      "displayName": "KEITH KIMBLE",
      "email": "kkimble@fmi.com",
      "jobTitle": "Facilities Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054140.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000016865",
      "supervisorName": "JANICE SINGLETON"
    },
    {
      "employeeID": "0060024554",
      "firstName": "Candice",
      "lastName": "King",
      "displayName": "CANDICE KING",
      "email": "cking@fmi.com",
      "jobTitle": "Sr Document Control Spec",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060024554.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060064201",
      "supervisorName": "DENNIS DRURY"
    },
    {
      "employeeID": "0060030894",
      "firstName": "Monica",
      "lastName": "Kinney",
      "displayName": "MONICA KINNEY",
      "email": "mkinney@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060030894.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060065305",
      "supervisorName": "BRENT HANSEN"
    },
    {
      "employeeID": "0060049551",
      "firstName": "Kody",
      "lastName": "Kirchner",
      "displayName": "KODY KIRCHNER",
      "email": "kkirchne@fmi.com",
      "jobTitle": "Mechanical Engineer II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060049551.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000874000",
      "supervisorName": "STEVEN MITCHELL"
    },
    {
      "employeeID": "0060074583",
      "firstName": "Viasear",
      "lastName": "Kirika",
      "displayName": "VIASEAR KIRIKA",
      "email": "vkirika@fmi.com",
      "jobTitle": "Engineering Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060074583.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0061001846",
      "firstName": "Emma",
      "lastName": "Klebe",
      "displayName": "EMMA KLEBE",
      "email": "eklebe@fmi.com",
      "jobTitle": "Contract Administrator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001846.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0061000316",
      "supervisorName": "JENNIFER HOBBS"
    },
    {
      "employeeID": "0060077762",
      "firstName": "Jermel",
      "lastName": "Knight",
      "displayName": "MEL KNIGHT",
      "email": "mknight2@fmi.com",
      "jobTitle": "SAP Project Master Data Admin",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077762.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000018239",
      "supervisorName": "TERESA YBARRA"
    },
    {
      "employeeID": "0060040118",
      "firstName": "Sherri",
      "lastName": "Knight",
      "displayName": "SHERRI KNIGHT",
      "email": "sknight@fmi.com",
      "jobTitle": "HR Service Center Rep",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060040118.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053282",
      "supervisorName": "SUZANNE PATTISON"
    },
    {
      "employeeID": "0000087090",
      "firstName": "Valeri",
      "lastName": "Knox",
      "displayName": "VAL KNOX",
      "email": "vknox@fmi.com",
      "jobTitle": "Corporate Travel Consultant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000087090.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000086485",
      "supervisorName": "MICHELE GANNON"
    },
    {
      "employeeID": "0060024480",
      "firstName": "Thomas",
      "lastName": "Knudsen",
      "displayName": "THOMAS KNUDSEN",
      "email": "tknudsen@fmi.com",
      "jobTitle": "Mgr Category Management",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060024480.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054547",
      "supervisorName": "CYNTHIA BARBER"
    },
    {
      "employeeID": "0000091826",
      "firstName": "Scott",
      "lastName": "Knutson",
      "displayName": "SCOTT KNUTSON",
      "email": "sknutson@fmi.com",
      "jobTitle": "Mgr Training & Development",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091826.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054069",
      "supervisorName": "TODD GRAVER"
    },
    {
      "employeeID": "0060037550",
      "firstName": "Atsuhisa",
      "lastName": "Kobori",
      "displayName": "ATSUHISA KOBORI",
      "email": "akobori@fmi.com",
      "jobTitle": "Mgr Sales",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060037550.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000056295",
      "supervisorName": "DAVID ELLIOTT"
    },
    {
      "employeeID": "0000067523",
      "firstName": "Anatoly",
      "lastName": "Kolesnikov",
      "displayName": "ANATOLY KOLESNIKOV",
      "email": "",
      "jobTitle": "Contractor Access Only",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067523.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000010948",
      "supervisorName": "MAC CANBY"
    },
    {
      "employeeID": "0000023605",
      "firstName": "Anne",
      "lastName": "Koll",
      "displayName": "ANNE KOLL",
      "email": "akoll@fmi.com",
      "jobTitle": "Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000023605.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000067686",
      "supervisorName": "CARRIE ROBINSON"
    },
    {
      "employeeID": "0000094231",
      "firstName": "Eric",
      "lastName": "Kolste",
      "displayName": "ERIC KOLSTE",
      "email": "ekolste@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000094231.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060077988",
      "supervisorName": "GEMMA WISEMAN"
    },
    {
      "employeeID": "0061001942",
      "firstName": "Mark",
      "lastName": "Komosinski",
      "displayName": "MARK KOMOSINSKI",
      "email": "mkomosin@fmi.com",
      "jobTitle": "Sr Process Ldr - Sustainability",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001942.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000019708",
      "supervisorName": "AUDREY MERTES"
    },
    {
      "employeeID": "0060078325",
      "firstName": "Sudhakar",
      "lastName": "Kondapalli",
      "displayName": "SUDHAKAR KONDAPALLI",
      "email": "skondapa@fmi.com",
      "jobTitle": "SuccessFactors EC Consultant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078325.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068782",
      "supervisorName": "REMI BRANDEBOURG"
    },
    {
      "employeeID": "0060081145",
      "firstName": "Maika",
      "lastName": "Kondo",
      "displayName": "MAIKA KONDO",
      "email": "mkondo@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081145.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060065588",
      "firstName": "Nicolas",
      "lastName": "Kotchou",
      "displayName": "NICOLAS KOTCHOU",
      "email": "nkotchou@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065588.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055640",
      "supervisorName": "STEVEN MCBRIDE"
    },
    {
      "employeeID": "0060037090",
      "firstName": "Upasna",
      "lastName": "Kothari",
      "displayName": "UPASNA KOTHARI",
      "email": "ukothari@fmi.com",
      "jobTitle": "Geomechanical Engineer II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060037090.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0060072868",
      "supervisorName": "JACQUES NGUZ TSHISENS"
    },
    {
      "employeeID": "0060057776",
      "firstName": "Veselin",
      "lastName": "Kovachev",
      "displayName": "VESELIN KOVACHEV",
      "email": "vkovache@fmi.com",
      "jobTitle": "Consultant Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060057776.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000010948",
      "supervisorName": "MAC CANBY"
    },
    {
      "employeeID": "0000014100",
      "firstName": "Eric",
      "lastName": "Kramer",
      "displayName": "ERIC KRAMER",
      "email": "ekramer@fmi.com",
      "jobTitle": "Mgr Metallurgical Testing",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000014100.jpg",
      "companyDescription": "FMC Process Tech Center",
      "supervisorID": "0000052315",
      "supervisorName": "JACKLYN STEEPLES"
    },
    {
      "employeeID": "0000014079",
      "firstName": "Stacy",
      "lastName": "Kramer",
      "displayName": "STACY KRAMER",
      "email": "skramer@FMI.com",
      "jobTitle": "VP Corp Health & Safety",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000014079.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000010314",
      "supervisorName": "STEVE HIGGINS"
    },
    {
      "employeeID": "0060043875",
      "firstName": "Amanda",
      "lastName": "Kraus",
      "displayName": "AMANDA KRAUS",
      "email": "akraus@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060043875.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000095485",
      "firstName": "Peter",
      "lastName": "Kraut",
      "displayName": "PETER KRAUT",
      "email": "pkraut@fmi.com",
      "jobTitle": "Sr Mgr Financial Systems Support",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000095485.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024216",
      "supervisorName": "KENT ALME"
    },
    {
      "employeeID": "0000029601",
      "firstName": "Dan",
      "lastName": "Kravets",
      "displayName": "DAN KRAVETS",
      "email": "dkravets@fmi.com",
      "jobTitle": "Vice President - Strategic Resource Dev",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000029601.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051953",
      "supervisorName": "KATHLEEN QUIRK"
    },
    {
      "employeeID": "0061001471",
      "firstName": "Jeff",
      "lastName": "Kreitner",
      "displayName": "JEFF KREITNER",
      "email": "jkreitne@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001471.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055955",
      "supervisorName": "CAROLYN GAFFNEY"
    },
    {
      "employeeID": "0000089242",
      "firstName": "Donald",
      "lastName": "Kridel",
      "displayName": "JAY KRIDEL",
      "email": "jkridel@fmi.com",
      "jobTitle": "Sr Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000089242.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0060088374",
      "firstName": "Giridharan",
      "lastName": "Krishnamoorthy",
      "displayName": "GIRIDHARAN KRISHNAMOORTHY",
      "email": "gkrishna@fmi.com",
      "jobTitle": "SAP AMER INC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088374.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0060087557",
      "firstName": "Pramod",
      "lastName": "Krishnan",
      "displayName": "PRAMOD KRISHNAN",
      "email": "pkrishna@fmi.com",
      "jobTitle": "Project Controls Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087557.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060089854",
      "firstName": "Kimberly",
      "lastName": "Kruel",
      "displayName": "KIMBERLY KRUEL",
      "email": "kkruel@fmi.com",
      "jobTitle": "UX Developer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089854.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0060063118",
      "supervisorName": "TONY PETERSON"
    },
    {
      "employeeID": "0000091162",
      "firstName": "Katie",
      "lastName": "Kruger",
      "displayName": "KATIE KRUGER",
      "email": "kkruger@fmi.com",
      "jobTitle": "Mgr Geotechnical",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091162.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000093464",
      "supervisorName": "GEORGIA LYSAY"
    },
    {
      "employeeID": "0000052516",
      "firstName": "Mitchell",
      "lastName": "Kruger",
      "displayName": "MITCHELL KRUGER",
      "email": "mkruger@fmi.com",
      "jobTitle": "Dir Corporate H&S Smelter Rod & Refining",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000052516.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000014079",
      "supervisorName": "STACY KRAMER"
    },
    {
      "employeeID": "0000055830",
      "firstName": "Megan",
      "lastName": "Kuefler",
      "displayName": "MEGAN KUEFLER",
      "email": "mkuefler@fmi.com",
      "jobTitle": "Business & Human Rights Ld",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000055830.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000067020",
      "supervisorName": "CHRIS CHAMBERS"
    },
    {
      "employeeID": "0060086910",
      "firstName": "Ajay",
      "lastName": "Kulkarni",
      "displayName": "AJAY KULKARNI",
      "email": "akulkarn1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086910.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060089188",
      "firstName": "Ashok",
      "lastName": "Kumar",
      "displayName": "ASHOK KUMAR",
      "email": "akumar@fmi.com",
      "jobTitle": "PROMETHEUS GROUP ENTERPRISE LLC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089188.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0060058379",
      "firstName": "Nirmod",
      "lastName": "Kumar",
      "displayName": "NIRMOD KUMAR",
      "email": "nkumar1@fmi.com",
      "jobTitle": "Global SAP HR Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060058379.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068782",
      "supervisorName": "REMI BRANDEBOURG"
    },
    {
      "employeeID": "0060084647",
      "firstName": "Julie",
      "lastName": "Kumari",
      "displayName": "JULIE KUMARI",
      "email": "jkumari@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060084647.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060054830",
      "firstName": "Makoto",
      "lastName": "Kumazoe",
      "displayName": "MAKOTO KUMAZOE",
      "email": "mkumazoe@fmi.com",
      "jobTitle": "Dir Sales",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060054830.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000056295",
      "supervisorName": "DAVID ELLIOTT"
    },
    {
      "employeeID": "0060048481",
      "firstName": "Katelyn",
      "lastName": "Kusa",
      "displayName": "KATELYN KUSA",
      "email": "kkusa@fmi.com",
      "jobTitle": "Sr Designer/Drafter",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060048481.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060076714",
      "supervisorName": "FANUEL BANDA"
    },
    {
      "employeeID": "0000879530",
      "firstName": "David",
      "lastName": "Kusnadi",
      "displayName": "DAVID KUSNADI",
      "email": "dkusnadi@fmi.com",
      "jobTitle": "E & C Planner/Scheduler",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000879530.jpg",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060052666",
      "firstName": "Michael",
      "lastName": "Lacey",
      "displayName": "MICHAEL LACEY",
      "email": "mlacey@fmi.com",
      "jobTitle": "Mgr Hydrogeology",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060052666.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060037502",
      "supervisorName": "SANDY FABRITZ"
    },
    {
      "employeeID": "0060031201",
      "firstName": "Michael",
      "lastName": "Lacis",
      "displayName": "MICHAEL LACIS",
      "email": "mlacis@fmi.com",
      "jobTitle": "Gbl Bus Mgr Freeport Cobalt Europe GmbH",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060031201.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000056295",
      "supervisorName": "DAVID ELLIOTT"
    },
    {
      "employeeID": "0060069587",
      "firstName": "Lloyd",
      "lastName": "LaCoste",
      "displayName": "LLOYD LACOSTE",
      "email": "llacoste@fmi.com",
      "jobTitle": "Field Operations Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060069587.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051239",
      "supervisorName": "RON HOWARD"
    },
    {
      "employeeID": "0060061129",
      "firstName": "Daniel",
      "lastName": "LaCroix",
      "displayName": "DANIEL LACROIX",
      "email": "dlacroix@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060061129.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055955",
      "supervisorName": "CAROLYN GAFFNEY"
    },
    {
      "employeeID": "0060078816",
      "firstName": "Nate",
      "lastName": "Lagacy",
      "displayName": "NATE LAGACY",
      "email": "nlagacy@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078816.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060077534",
      "firstName": "Jennifer",
      "lastName": "Laggan",
      "displayName": "JENNIFER LAGGAN",
      "email": "jlaggan@fmi.com",
      "jobTitle": "Mgr Remediation Projects",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077534.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000026712",
      "supervisorName": "BRYCE ROMIG"
    },
    {
      "employeeID": "0000023349",
      "firstName": "Anna",
      "lastName": "Laija",
      "displayName": "ANNA LAIJA",
      "email": "alaija@fmi.com",
      "jobTitle": "Dir Corporate Health & Safety FMA",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000023349.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000014079",
      "supervisorName": "STACY KRAMER"
    },
    {
      "employeeID": "0060077501",
      "firstName": "Megharaja",
      "lastName": "Lakkavalli",
      "displayName": "MEGHARAJA LAKKAVALLI",
      "email": "mlakkava@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077501.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0000067820",
      "firstName": "Eddy",
      "lastName": "Lam",
      "displayName": "EDDY LAM",
      "email": "elam@fmi.com",
      "jobTitle": "Controls & Instrument Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067820.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0000062163",
      "firstName": "Michael",
      "lastName": "Lam",
      "displayName": "MICHAEL LAM",
      "email": "mlam@fmi.com",
      "jobTitle": "Mgr Metallurgy",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000062163.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000060822",
      "supervisorName": "ARI PARTANEN"
    },
    {
      "employeeID": "0000092271",
      "firstName": "Anthony",
      "lastName": "LaMacchia",
      "displayName": "TONY LAMACCHIA",
      "email": "tlamacch@fmi.com",
      "jobTitle": "Mgr Glbl eDiscov/Lit Solutions",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092271.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089905",
      "supervisorName": "SCOTT STATHAM"
    },
    {
      "employeeID": "0060052006",
      "firstName": "Morgan",
      "lastName": "Lamb",
      "displayName": "MORGAN LAMB",
      "email": "mlamb1@fmi.com",
      "jobTitle": "Dir Aviation",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060052006.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000011629",
      "supervisorName": "DANNY HUGHES"
    },
    {
      "employeeID": "0060061528",
      "firstName": "Alyssa",
      "lastName": "Lambert",
      "displayName": "ALYSSA LAMBERT",
      "email": "alambert@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060061528.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000011706",
      "supervisorName": "SHAWN LYONS"
    },
    {
      "employeeID": "0000051838",
      "firstName": "Lynn",
      "lastName": "Lande",
      "displayName": "LYNN LANDE",
      "email": "llande@fmi.com",
      "jobTitle": "Chief Environmental Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051838.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060040448",
      "supervisorName": "DAVID GOSEN"
    },
    {
      "employeeID": "0060079066",
      "firstName": "Angela",
      "lastName": "Lane",
      "displayName": "ANGELA LANE",
      "email": "alane1@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079066.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060065305",
      "supervisorName": "BRENT HANSEN"
    },
    {
      "employeeID": "0060034078",
      "firstName": "Brittany",
      "lastName": "Langer",
      "displayName": "BRITTANY LANGER",
      "email": "blanger@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060034078.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060063615",
      "firstName": "Fernando",
      "lastName": "Lara Moran",
      "displayName": "FERNANDO LARA MORAN",
      "email": "flaramor@fmi.com",
      "jobTitle": "Sr UG Prd/Cave Planning Eng",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060063615.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000066178",
      "supervisorName": "CHUCK BRANNON"
    },
    {
      "employeeID": "0060067284",
      "firstName": "Stacee",
      "lastName": "Larkins",
      "displayName": "STACEE LARKINS",
      "email": "slarkins@fmi.com",
      "jobTitle": "Accounting Clerk",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067284.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015474",
      "supervisorName": "STACY COSTELLO"
    },
    {
      "employeeID": "0000067700",
      "firstName": "Robert",
      "lastName": "Larson",
      "displayName": "ROBERT LARSON",
      "email": "rlarson@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067700.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000067686",
      "supervisorName": "CARRIE ROBINSON"
    },
    {
      "employeeID": "0061002709",
      "firstName": "Bob",
      "lastName": "Laudner",
      "displayName": "BOB LAUDNER",
      "email": "blaudner@fmi.com",
      "jobTitle": "",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061002709.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060063118",
      "supervisorName": "TONY PETERSON"
    },
    {
      "employeeID": "0060028334",
      "firstName": "Rachael",
      "lastName": "Laufenberg",
      "displayName": "RACHAEL LAUFENBERG",
      "email": "rlaufenb@fmi.com",
      "jobTitle": "Mgr HR Service Center HRSC Ops",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060028334.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024126",
      "supervisorName": "MICHELLE STONEHOUSE"
    },
    {
      "employeeID": "0000091498",
      "firstName": "Kristina",
      "lastName": "Laurent",
      "displayName": "KRISTI LAURENT",
      "email": "klaurent@fmi.com",
      "jobTitle": "Sr Mgr Financial Reporting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091498.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000054218",
      "supervisorName": "PAT PREJEAN"
    },
    {
      "employeeID": "0060078652",
      "firstName": "Charles",
      "lastName": "Laurin",
      "displayName": "CHARLES LAURIN",
      "email": "claurin@fmi.com",
      "jobTitle": "Data Scientist I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078652.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060050437",
      "supervisorName": "MICHAEL BISCHOF"
    },
    {
      "employeeID": "0060067669",
      "firstName": "Kimberly",
      "lastName": "Laurisch",
      "displayName": "KIMBERLY LAURISCH",
      "email": "klaurisc@fmi.com",
      "jobTitle": "Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067669.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028334",
      "supervisorName": "RACHAEL LAUFENBERG"
    },
    {
      "employeeID": "0060081399",
      "firstName": "James",
      "lastName": "Laven",
      "displayName": "JAMES LAVEN",
      "email": "jlaven@fmi.com",
      "jobTitle": "Security Project Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081399.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060072604",
      "supervisorName": "VAUDA JORDAN"
    },
    {
      "employeeID": "0000095146",
      "firstName": "Justin",
      "lastName": "Lavender",
      "displayName": "JUSTIN LAVENDER",
      "email": "jlavende@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000095146.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000011687",
      "supervisorName": "BILLY BOUDREAUX"
    },
    {
      "employeeID": "0000064681",
      "firstName": "Jill",
      "lastName": "Layton",
      "displayName": "JILL LAYTON",
      "email": "jlayton@fmi.com",
      "jobTitle": "Mgr Accounting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000064681.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024216",
      "supervisorName": "KENT ALME"
    },
    {
      "employeeID": "0000028177",
      "firstName": "Javier",
      "lastName": "Lazalde",
      "displayName": "JAVIER LAZALDE",
      "email": "jlazalde@fmi.com",
      "jobTitle": "HRMS Analyst II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000028177.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054930",
      "supervisorName": "DEBBIE BAIRD"
    },
    {
      "employeeID": "0000085787",
      "firstName": "Robert",
      "lastName": "Leake",
      "displayName": "ROBIN LEAKE",
      "email": "rleake@fmi.com",
      "jobTitle": "Excalibur Business Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085787.JPG",
      "companyDescription": "McMoRan Oil & Gas LLC",
      "supervisorID": "0000011491",
      "supervisorName": "JEFF CHAMP"
    },
    {
      "employeeID": "0000092454",
      "firstName": "Craig",
      "lastName": "LeBaron",
      "displayName": "CRAIG LEBARON",
      "email": "clebaron@fmi.com",
      "jobTitle": "Sr Desktop Support Technician",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092454.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0060023718",
      "supervisorName": "MARK IOIA"
    },
    {
      "employeeID": "0000011823",
      "firstName": "Suzanne",
      "lastName": "LeBaron",
      "displayName": "SUZANNE LEBARON",
      "email": "slebaron@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011823.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051339",
      "supervisorName": "MIKE MCADAM"
    },
    {
      "employeeID": "0060024634",
      "firstName": "David",
      "lastName": "LeBlanc",
      "displayName": "DAVID LEBLANC",
      "email": "dleblanc@fmi.com",
      "jobTitle": "Mgr Corporate Development",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060024634.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062464",
      "supervisorName": "TAYLOR MELVIN"
    },
    {
      "employeeID": "0000086702",
      "firstName": "Jean",
      "lastName": "LeBourgeois",
      "displayName": "JEAN LEBOURGEOIS",
      "email": "jlebourg@fmi.com",
      "jobTitle": "Accounting Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086702.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000012013",
      "supervisorName": "KIM SHIPLEY"
    },
    {
      "employeeID": "0000011627",
      "firstName": "Shereen",
      "lastName": "Lecron",
      "displayName": "SHEREEN LECRON",
      "email": "slecron@fmi.com",
      "jobTitle": "Sr Graphics Technology Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011627.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000011660",
      "supervisorName": "KATHY KELLEY"
    },
    {
      "employeeID": "0000086978",
      "firstName": "Robert",
      "lastName": "Ledet",
      "displayName": "ROB LEDET",
      "email": "rledet@fmi.com",
      "jobTitle": "Mgr Global Supply Chain",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086978.jpg",
      "companyDescription": "International Administrat",
      "supervisorID": "0000051339",
      "supervisorName": "MIKE MCADAM"
    },
    {
      "employeeID": "0061000014",
      "firstName": "Brandon",
      "lastName": "Lee",
      "displayName": "BRANDON LEE",
      "email": "blee5@fmi.com",
      "jobTitle": "Inventory Controller",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000014.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088472",
      "supervisorName": "RANDY WAWRZYNIAK-FRY"
    },
    {
      "employeeID": "0060074063",
      "firstName": "Brian",
      "lastName": "Lee",
      "displayName": "BRIAN LEE",
      "email": "blee1@fmi.com",
      "jobTitle": "Project Controls Cost Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060074063.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060079598",
      "firstName": "Cameron",
      "lastName": "Lee",
      "displayName": "CAMERON LEE",
      "email": "clee9@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079598.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060077988",
      "supervisorName": "GEMMA WISEMAN"
    },
    {
      "employeeID": "0060078286",
      "firstName": "Casey",
      "lastName": "Lee",
      "displayName": "CASEY LEE",
      "email": "clee7@fmi.com",
      "jobTitle": "Enterprise Security Architect",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078286.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060072604",
      "supervisorName": "VAUDA JORDAN"
    },
    {
      "employeeID": "0000087031",
      "firstName": "Cindy",
      "lastName": "Lee",
      "displayName": "CINDY LEE",
      "email": "clee@fmi.com",
      "jobTitle": "Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000087031.jpg",
      "companyDescription": "McMoRan Oil & Gas LLC",
      "supervisorID": "0000023287",
      "supervisorName": "RAYE ANN HAWLEY"
    },
    {
      "employeeID": "0060069358",
      "firstName": "Ezequiel",
      "lastName": "Leguiza",
      "displayName": "EZEQUIEL LEGUIZA",
      "email": "eleguiza@fmi.com",
      "jobTitle": "Service Management Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060069358.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060050084",
      "supervisorName": "KATELYN GLEESON"
    },
    {
      "employeeID": "0060063253",
      "firstName": "Joshua",
      "lastName": "Leigh",
      "displayName": "JOSHUA LEIGH",
      "email": "jleigh@fmi.com",
      "jobTitle": "Sr Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060063253.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000017473",
      "supervisorName": "GREG COFFIN"
    },
    {
      "employeeID": "0000088954",
      "firstName": "Michael",
      "lastName": "Lemmond",
      "displayName": "MIKE LEMMOND",
      "email": "mlemmond@fmi.com",
      "jobTitle": "Mgr Custom Solutions",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088954.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062216",
      "supervisorName": "SCOTT BIRMINGHAM"
    },
    {
      "employeeID": "0060089184",
      "firstName": "Keith",
      "lastName": "Lemon",
      "displayName": "KEITH LEMON",
      "email": "klemon1@fmi.com",
      "jobTitle": "ADO Architect",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089184.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060085886",
      "supervisorName": "LAURA DOTSETH"
    },
    {
      "employeeID": "0060065391",
      "firstName": "Luis",
      "lastName": "Leon-Poblano",
      "displayName": "LUIS LEON-POBLANO",
      "email": "lleon@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065391.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000064681",
      "supervisorName": "JILL LAYTON"
    },
    {
      "employeeID": "0061001240",
      "firstName": "Brandon",
      "lastName": "Leonard",
      "displayName": "BRANDON LEONARD",
      "email": "bleonard@fmi.com",
      "jobTitle": "IT Security Analyst I",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001240.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060067306",
      "supervisorName": "KENT HERTZELL"
    },
    {
      "employeeID": "0060081140",
      "firstName": "Aaron",
      "lastName": "Leritz",
      "displayName": "AARON LERITZ",
      "email": "aleritz@fmi.com",
      "jobTitle": "Environmental Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081140.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000016264",
      "supervisorName": "JERRY ROOSE"
    },
    {
      "employeeID": "0060055229",
      "firstName": "David",
      "lastName": "Lewenthal",
      "displayName": "DAVID LEWENTHAL",
      "email": "dlewenth@fmi.com",
      "jobTitle": "Sr Security Project Mgr",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060055229.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060065452",
      "supervisorName": "JEFF PICK"
    },
    {
      "employeeID": "0000014944",
      "firstName": "Cecilia",
      "lastName": "Lewin",
      "displayName": "CECE LEWIN",
      "email": "clewin@fmi.com",
      "jobTitle": "Mgr Benefits",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000014944.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000086118",
      "supervisorName": "TIFFANY GIFFORD"
    },
    {
      "employeeID": "0000091612",
      "firstName": "Jeff",
      "lastName": "Liang",
      "displayName": "JEFF LIANG",
      "email": "jliang@fmi.com",
      "jobTitle": "CM Intl Mgr Proj Chf Rep",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091612.jpg",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0060027723",
      "supervisorName": "PHIL DEVILLEBICHOT"
    },
    {
      "employeeID": "0000095621",
      "firstName": "Camilla",
      "lastName": "Liddell",
      "displayName": "CAMILLA LIDDELL",
      "email": "cliddell@fmi.com",
      "jobTitle": "Sr Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000095621.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000085449",
      "supervisorName": "BRODY DELCAMBRE"
    },
    {
      "employeeID": "0061000571",
      "firstName": "Kurt",
      "lastName": "Lieber",
      "displayName": "KURT LIEBER",
      "email": "klieber@fmi.com",
      "jobTitle": "Chief Information Security Officer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000571.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000081075",
      "supervisorName": "BERT ODINET"
    },
    {
      "employeeID": "0000092413",
      "firstName": "Nicholas",
      "lastName": "Lieberman",
      "displayName": "NICK LIEBERMAN",
      "email": "nlieberm@fmi.com",
      "jobTitle": "Corporate Travel Consultant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092413.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000086485",
      "supervisorName": "MICHELE GANNON"
    },
    {
      "employeeID": "0000057332",
      "firstName": "Challis",
      "lastName": "Lieurance",
      "displayName": "CHALLIS LIEURANCE",
      "email": "clieuran@fmi.com",
      "jobTitle": "Bus Solution Architect II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000057332.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065010",
      "supervisorName": "JAMES PATTERSON"
    },
    {
      "employeeID": "0060072598",
      "firstName": "Shannon",
      "lastName": "Lijek",
      "displayName": "SHANNON LIJEK",
      "email": "slijek@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060072598.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060065954",
      "firstName": "Karine",
      "lastName": "Lim-Kong",
      "displayName": "KARINE LIM-KONG",
      "email": "klimkong@fmi.com",
      "jobTitle": "Project Mechanical Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065954.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000253124",
      "supervisorName": "SETIA NUGROHO"
    },
    {
      "employeeID": "0000057607",
      "firstName": "Jamie",
      "lastName": "Lindemann",
      "displayName": "JAMIE LINDEMANN",
      "email": "jlindema1@fmi.com",
      "jobTitle": "Sr Sales Analyst Concentrate",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000057607.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000017824",
      "supervisorName": "CINDY BURAS"
    },
    {
      "employeeID": "0060067543",
      "firstName": "Jessica",
      "lastName": "Linker",
      "displayName": "JESSICA LINKER",
      "email": "jlinker@fmi.com",
      "jobTitle": "HR Service Center Rep",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067543.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053282",
      "supervisorName": "SUZANNE PATTISON"
    },
    {
      "employeeID": "0000011391",
      "firstName": "Tiffanie",
      "lastName": "Linn",
      "displayName": "TIFFANIE LINN",
      "email": "tlinn@fmi.com",
      "jobTitle": "Sr Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011391.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051339",
      "supervisorName": "MIKE MCADAM"
    },
    {
      "employeeID": "0060033094",
      "firstName": "Leann",
      "lastName": "Littleton",
      "displayName": "LEANN LITTLETON",
      "email": "llittlet@fmi.com",
      "jobTitle": "Inventory Controller",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060033094.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060038782",
      "supervisorName": "RAY HERNANDEZ"
    },
    {
      "employeeID": "0060065548",
      "firstName": "Weiping",
      "lastName": "Liu",
      "displayName": "WEIPING LIU",
      "email": "wliu@fmi.com",
      "jobTitle": "Metallurgist II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065548.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024233",
      "supervisorName": "LEN HILL"
    },
    {
      "employeeID": "0060078578",
      "firstName": "Daniela",
      "lastName": "Lizarraga",
      "displayName": "DANIELA LIZARRAGA",
      "email": "dlizarra2@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078578.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000092783",
      "firstName": "Rita",
      "lastName": "Lloyd-Mills",
      "displayName": "RITA LLOYD-MILLS",
      "email": "rlloydmi@fmi.com",
      "jobTitle": "Mgr Strategic Community Dev - Disc Ops",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092783.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030545",
      "supervisorName": "ANGIE HARMON"
    },
    {
      "employeeID": "0060034177",
      "firstName": "Carolyn",
      "lastName": "Loder",
      "displayName": "CAROLYN LODER",
      "email": "cloder@fmi.com",
      "jobTitle": "Mgr Prop Mnrl Rghts & Pub Lnd",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060034177.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000064031",
      "supervisorName": "CHRIS FRANKS"
    },
    {
      "employeeID": "0000012035",
      "firstName": "Ronald",
      "lastName": "Lodriguss",
      "displayName": "RONNIE LODRIGUSS",
      "email": "rlodrigu@fmi.com",
      "jobTitle": "Internal Security Mgr",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000012035.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000011474",
      "supervisorName": "HEIDI DALE"
    },
    {
      "employeeID": "0061000053",
      "firstName": "Efren",
      "lastName": "Loera",
      "displayName": "EFREN LOERA",
      "email": "eloera@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000053.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0000093848",
      "firstName": "Tiffany",
      "lastName": "Logan",
      "displayName": "TIFFANY LOGAN",
      "email": "tlogan@fmi.com",
      "jobTitle": "Sr Training Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000093848.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000091826",
      "supervisorName": "SCOTT KNUTSON"
    },
    {
      "employeeID": "0061001323",
      "firstName": "Samuel",
      "lastName": "Lolon",
      "displayName": "SAM LOLON",
      "email": "slolon@fmi.com",
      "jobTitle": "Sr Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001323.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0060076714",
      "supervisorName": "FANUEL BANDA"
    },
    {
      "employeeID": "0000067703",
      "firstName": "Seema",
      "lastName": "Lord",
      "displayName": "SEEMA LORD",
      "email": "slord@fmi.com",
      "jobTitle": "Risk Consultant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067703.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000067686",
      "supervisorName": "CARRIE ROBINSON"
    },
    {
      "employeeID": "0060073485",
      "firstName": "Nereo",
      "lastName": "Loresto",
      "displayName": "NEREO LORESTO",
      "email": "nloresto@fmi.com",
      "jobTitle": "Identity and Access Management Architect",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060073485.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060072604",
      "supervisorName": "VAUDA JORDAN"
    },
    {
      "employeeID": "0000095500",
      "firstName": "Graziella",
      "lastName": "Loupil",
      "displayName": "GRAZIELLA LOUPIL",
      "email": "gloupil@fmi.com",
      "jobTitle": "Sr Sales & Operations Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000095500.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000062753",
      "supervisorName": "JOSHUA ESCOBEDO"
    },
    {
      "employeeID": "0060086712",
      "firstName": "Mitchell",
      "lastName": "LoVerde",
      "displayName": "MITCHELL LOVERDE",
      "email": "mloverde@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086712.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060077231",
      "firstName": "Nan",
      "lastName": "Lu",
      "displayName": "NAN LU",
      "email": "nlu@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077231.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060066996",
      "firstName": "Hilda",
      "lastName": "Lujan",
      "displayName": "HILDA LUJAN",
      "email": "hlujan@fmi.com",
      "jobTitle": "Recruiter II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060066996.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060079345",
      "supervisorName": "MICHAEL MORALES"
    },
    {
      "employeeID": "0060078206",
      "firstName": "Jeremy",
      "lastName": "Lujan",
      "displayName": "JEREMY LUJAN",
      "email": "jlujan4@fmi.com",
      "jobTitle": "Ricoh Onsite Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078206.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057338",
      "supervisorName": "KEVIN TRASENTE"
    },
    {
      "employeeID": "0060065775",
      "firstName": "Elizabeth",
      "lastName": "Lunseth",
      "displayName": "LIBBY LUNSETH",
      "email": "llunseth@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065775.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052232",
      "supervisorName": "HUGH DONAHUE"
    },
    {
      "employeeID": "0060078226",
      "firstName": "Jeff",
      "lastName": "Lura",
      "displayName": "JEFF LURA",
      "email": "jlura@fmi.com",
      "jobTitle": "CROWN TECHNICAL SYSTEMS",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078226.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017064",
      "supervisorName": "LISA MEDINA"
    },
    {
      "employeeID": "0000012058",
      "firstName": "Doris",
      "lastName": "Luxich",
      "displayName": "DORIS LUXICH",
      "email": "dluxich@fmi.com",
      "jobTitle": "Investor Relations Admin Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000012058.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000011677",
      "supervisorName": "DAVID JOINT"
    },
    {
      "employeeID": "0060062502",
      "firstName": "Jenny",
      "lastName": "Lynch",
      "displayName": "JENNY LYNCH",
      "email": "jlynch1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060062502.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000062686",
      "firstName": "Christopher",
      "lastName": "Lyon",
      "displayName": "CHRISTOPHER LYON",
      "email": "clyon@fmi.com",
      "jobTitle": "Mgr Accounting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000062686.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024216",
      "supervisorName": "KENT ALME"
    },
    {
      "employeeID": "0000011706",
      "firstName": "Shawn",
      "lastName": "Lyons",
      "displayName": "SHAWN LYONS",
      "email": "slyons@fmi.com",
      "jobTitle": "Sr Mgr Consolidation & Analysis",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011706.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024216",
      "supervisorName": "KENT ALME"
    },
    {
      "employeeID": "0000093464",
      "firstName": "Georgia",
      "lastName": "Lysay",
      "displayName": "GEORGIA LYSAY",
      "email": "glysay@fmi.com",
      "jobTitle": "Dir Tailings, Crush Leach & Water",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000093464.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088202",
      "supervisorName": "TOM STUFFCO"
    },
    {
      "employeeID": "0060081747",
      "firstName": "Roberto",
      "lastName": "Macedo",
      "displayName": "ROBERTO MACEDO",
      "email": "rmacedo@fmi.com",
      "jobTitle": "Lead Assessor / Client Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081747.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000027435",
      "supervisorName": "BRANDON GILLEY"
    },
    {
      "employeeID": "0060088473",
      "firstName": "Manuel",
      "lastName": "Macias",
      "displayName": "MANUEL MACIAS",
      "email": "mmacias3@fmi.com",
      "jobTitle": "Operating Model Consultant",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088473.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060085886",
      "supervisorName": "LAURA DOTSETH"
    },
    {
      "employeeID": "0000045590",
      "firstName": "Robert",
      "lastName": "Maciejewski",
      "displayName": "ROBERT MACIEJEWSKI",
      "email": "rmacieje@fmi.com",
      "jobTitle": "Spt Maintenance Conveyor Sys",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000045590.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000016916",
      "supervisorName": "TOBY DUNN"
    },
    {
      "employeeID": "0000088995",
      "firstName": "Deep",
      "lastName": "Maddu",
      "displayName": "DEEP MADDU",
      "email": "dmaddu@fmi.com",
      "jobTitle": "BI Developer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088995.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0060088658",
      "firstName": "Mahesh",
      "lastName": "Maddur",
      "displayName": "MAHESH MADDUR",
      "email": "mmaddur@fmi.com",
      "jobTitle": "ALKU TECHNOLOGIES",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088658.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0060088294",
      "firstName": "Anthony",
      "lastName": "Maes",
      "displayName": "ANTHONY MAES",
      "email": "amaes@fmi.com",
      "jobTitle": "ADVANCED TOWER SERVICES INC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088294.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000050087",
      "supervisorName": "WALTON STUCKEY"
    },
    {
      "employeeID": "0060086667",
      "firstName": "Shitalkumar",
      "lastName": "Mahajan",
      "displayName": "SHITALKUMAR MAHAJAN",
      "email": "smahajan1@fmi.com",
      "jobTitle": "SAP Business Analyst",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086667.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000050159",
      "supervisorName": "RICH SUTKOWI"
    },
    {
      "employeeID": "0000252953",
      "firstName": "Made",
      "lastName": "Mahayasa",
      "displayName": "MADE MAHAYASA",
      "email": "mmahayas@fmi.com",
      "jobTitle": "Dir Mine Planning & Closure - PTFI",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000252953.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000085369",
      "supervisorName": "RICHARD ADKERSON"
    },
    {
      "employeeID": "0000846652",
      "firstName": "Muhamad",
      "lastName": "Mahyudin",
      "displayName": "AKHYAR MAHYUDIN",
      "email": "mmahyudi@fmi.com",
      "jobTitle": "Mgr Health & Safety",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000846652.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000053106",
      "supervisorName": "RYAN DUNNE"
    },
    {
      "employeeID": "0060042356",
      "firstName": "Adam",
      "lastName": "Mains",
      "displayName": "ADAM MAINS",
      "email": "amains@fmi.com",
      "jobTitle": "IT Asset & License Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060042356.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060023718",
      "supervisorName": "MARK IOIA"
    },
    {
      "employeeID": "0060033250",
      "firstName": "Tamara",
      "lastName": "Majors",
      "displayName": "TAMMI MAJORS",
      "email": "tmajors@fmi.com",
      "jobTitle": "Inventory Controller",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060033250.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088472",
      "supervisorName": "RANDY WAWRZYNIAK-FRY"
    },
    {
      "employeeID": "0060089194",
      "firstName": "Marcus",
      "lastName": "Maldonado",
      "displayName": "MARCUS MALDONADO",
      "email": "mmaldona2@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089194.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000066017",
      "firstName": "Sohail",
      "lastName": "Malik",
      "displayName": "SOHAIL MALIK",
      "email": "smalik@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000066017.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000011706",
      "supervisorName": "SHAWN LYONS"
    },
    {
      "employeeID": "0000085345",
      "firstName": "Ruth",
      "lastName": "Mallary",
      "displayName": "RUTH MALLARY",
      "email": "rmallary@fmi.com",
      "jobTitle": "Sr Accounts Payable Clerk",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085345.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000086665",
      "supervisorName": "BRIAN PIGLIA"
    },
    {
      "employeeID": "0060086286",
      "firstName": "Adrian",
      "lastName": "Mallea",
      "displayName": "ADRIAN MALLEA",
      "email": "amallea@fmi.com",
      "jobTitle": "Chief Structural Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086286.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0000067962",
      "firstName": "Paul",
      "lastName": "Mallery",
      "displayName": "PAUL MALLERY",
      "email": "pmallery@fmi.com",
      "jobTitle": "Mgr Cash & Treasury Services",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067962.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051194",
      "supervisorName": "BOB BOYCE"
    },
    {
      "employeeID": "0060086887",
      "firstName": "Srujana",
      "lastName": "Mallu",
      "displayName": "SRUJANA MALLU",
      "email": "smallu@fmi.com",
      "jobTitle": "HAVENSIGHT CONSULTING GROUP LLC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086887.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0060073228",
      "firstName": "Richard",
      "lastName": "Malpiedi",
      "displayName": "RICHARD MALPIEDI",
      "email": "us-support@ipvis.com",
      "jobTitle": "Support Technician",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060073228.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062697",
      "supervisorName": "ANDREW GLUVNA"
    },
    {
      "employeeID": "0000088856",
      "firstName": "Arnold",
      "lastName": "Malvick",
      "displayName": "ARNOLD MALVICK",
      "email": "amalvick@fmi.com",
      "jobTitle": "Delivery Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088856.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030596",
      "supervisorName": "DAVE SOVELL"
    },
    {
      "employeeID": "0060079741",
      "firstName": "Aimee",
      "lastName": "Mammina",
      "displayName": "AIMEE MAMMINA",
      "email": "amammina@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079741.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060077988",
      "supervisorName": "GEMMA WISEMAN"
    },
    {
      "employeeID": "0060078302",
      "firstName": "Sreejith",
      "lastName": "Manalil",
      "displayName": "SREEJITH MANALIL",
      "email": "smanalil@fmi.com",
      "jobTitle": "Systems Architect III - End User Devices",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078302.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055242",
      "supervisorName": "BRIAN ETHERIDGE"
    },
    {
      "employeeID": "0000051737",
      "firstName": "Esperanza",
      "lastName": "Mandujano",
      "displayName": "ESPERANZA MANDUJANO",
      "email": "emanduja@fmi.com",
      "jobTitle": "Sales & Service Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051737.JPG",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0060032889",
      "supervisorName": "BRENDA MITCHELL"
    },
    {
      "employeeID": "0060029269",
      "firstName": "Richard",
      "lastName": "Manges",
      "displayName": "RICK MANGES",
      "email": "rmanges@fmi.com",
      "jobTitle": "Designer/Drafter UG",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060029269.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060076714",
      "supervisorName": "FANUEL BANDA"
    },
    {
      "employeeID": "0060033010",
      "firstName": "Serena",
      "lastName": "Manginelli",
      "displayName": "SERENA MANGINELLI",
      "email": "smangine@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060033010.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000011706",
      "supervisorName": "SHAWN LYONS"
    },
    {
      "employeeID": "0060080710",
      "firstName": "Melissa",
      "lastName": "Mangold",
      "displayName": "MELISSA MANGOLD",
      "email": "mmangold@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080710.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089905",
      "supervisorName": "SCOTT STATHAM"
    },
    {
      "employeeID": "0060077594",
      "firstName": "Dominic",
      "lastName": "Manola",
      "displayName": "DOMINIC MANOLA",
      "email": "dmanola@fmi.com",
      "jobTitle": "GIS Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077594.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000064031",
      "supervisorName": "CHRIS FRANKS"
    },
    {
      "employeeID": "0061000346",
      "firstName": "James",
      "lastName": "Mantay",
      "displayName": "JAMES MANTAY",
      "email": "jmantay1@fmi.com",
      "jobTitle": "HR Service Center Rep",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000346.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053282",
      "supervisorName": "SUZANNE PATTISON"
    },
    {
      "employeeID": "0000012891",
      "firstName": "Andrew",
      "lastName": "Manter",
      "displayName": "ANDREW MANTER",
      "email": "amanter@fmi.com",
      "jobTitle": "Mgr Business Process & Systems",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000012891.JPG",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0060032889",
      "supervisorName": "BRENDA MITCHELL"
    },
    {
      "employeeID": "0000091898",
      "firstName": "Paula",
      "lastName": "Manzi",
      "displayName": "PAULA MANZI",
      "email": "pmanzi@fmi.com",
      "jobTitle": "HR Compliance Spec I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091898.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053282",
      "supervisorName": "SUZANNE PATTISON"
    },
    {
      "employeeID": "0000088908",
      "firstName": "Scot",
      "lastName": "Maples",
      "displayName": "SCOT MAPLES",
      "email": "smaples@fmi.com",
      "jobTitle": "Project Engineer II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088908.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0060046186",
      "firstName": "Alex",
      "lastName": "Marchicelli",
      "displayName": "ALEX MARCHICELLI",
      "email": "amarchic@fmi.com",
      "jobTitle": "Connected Mine Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060046186.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062216",
      "supervisorName": "SCOTT BIRMINGHAM"
    },
    {
      "employeeID": "0060088466",
      "firstName": "Claudiu",
      "lastName": "Marculescu",
      "displayName": "CLAUDIU MARCULESCU",
      "email": "cmarcule@fmi.com",
      "jobTitle": "Site Cost Lead",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088466.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0000024543",
      "firstName": "Christopher",
      "lastName": "Marcus",
      "displayName": "CHRISTOPHER MARCUS",
      "email": "cmarcus@fmi.com",
      "jobTitle": "Spt Operational Improvement",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000024543.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000015472",
      "supervisorName": "CURTIS MARSHALL"
    },
    {
      "employeeID": "0060050094",
      "firstName": "Arun",
      "lastName": "Marimuthu",
      "displayName": "ARUN MARIMUTHU",
      "email": "amarimut@fmi.com",
      "jobTitle": "Solutions Architect - Snowflake",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060050094.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0060069003",
      "firstName": "Neil",
      "lastName": "Marinello",
      "displayName": "NEIL MARINELLO",
      "email": "nmarinel@fmi.com",
      "jobTitle": "Chief Civil Structural Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060069003.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000011812",
      "supervisorName": "LOUIS KIEFFER"
    },
    {
      "employeeID": "0000095346",
      "firstName": "Jon",
      "lastName": "Marion",
      "displayName": "JON MARION",
      "email": "jmarion@fmi.com",
      "jobTitle": "Accountant II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000095346.jpg",
      "companyDescription": "Climax Moly Co Admin",
      "supervisorID": "0000051043",
      "supervisorName": "JESSICA PHILLIPO"
    },
    {
      "employeeID": "0060065723",
      "firstName": "April",
      "lastName": "Marquez",
      "displayName": "APRIL MARQUEZ",
      "email": "amarquez3@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065723.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0061000900",
      "firstName": "Diego",
      "lastName": "Marquez",
      "displayName": "DIEGO MARQUEZ",
      "email": "dmarquez1@fmi.com",
      "jobTitle": "Sr Investigator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061000900.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060050032",
      "supervisorName": "LORI HIGUERA"
    },
    {
      "employeeID": "0000090856",
      "firstName": "Nanette",
      "lastName": "Marrah",
      "displayName": "NANETTE MARRAH",
      "email": "nmarrah@fmi.com",
      "jobTitle": "Sr Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090856.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060077988",
      "supervisorName": "GEMMA WISEMAN"
    },
    {
      "employeeID": "0060081112",
      "firstName": "Allan",
      "lastName": "Marsh",
      "displayName": "ALLAN MARSH",
      "email": "amarsh@fmi.com",
      "jobTitle": "Senior Mining Consultant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081112.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060046186",
      "supervisorName": "ALEX MARCHICELLI"
    },
    {
      "employeeID": "0000015472",
      "firstName": "Curtis",
      "lastName": "Marshall",
      "displayName": "CURTIS MARSHALL",
      "email": "cmarshal@fmi.com",
      "jobTitle": "TE, SUPPLY CHAIN PROJECTS & PROCESSES",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000015472.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000015804",
      "supervisorName": "MARK GURTLER"
    },
    {
      "employeeID": "0000018321",
      "firstName": "Diana",
      "lastName": "Marshall",
      "displayName": "KAY MARSHALL",
      "email": "kmarshal@fmi.com",
      "jobTitle": "Recruiter I - College",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000018321.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090027",
      "supervisorName": "BETSY JOHNSON"
    },
    {
      "employeeID": "0000061085",
      "firstName": "Nancy",
      "lastName": "Marshall",
      "displayName": "NANCY MARSHALL",
      "email": "nmarshal@fmi.com",
      "jobTitle": "Spv Payroll",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000061085.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056399",
      "supervisorName": "LAUREN FRANK"
    },
    {
      "employeeID": "0060088609",
      "firstName": "Kurnia",
      "lastName": "Marshandy",
      "displayName": "KURNIA MARSHANDY",
      "email": "kmarshan@fmi.com",
      "jobTitle": "Junior Cost Control",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088609.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060061702",
      "firstName": "Christopher",
      "lastName": "Marston",
      "displayName": "CHRISTOPHER MARSTON",
      "email": "cmarston1@fmi.com",
      "jobTitle": "Sr GIS Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060061702.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000060741",
      "supervisorName": "MICHELE ANTHONY"
    },
    {
      "employeeID": "0000094769",
      "firstName": "Betsy",
      "lastName": "Martin",
      "displayName": "BETSY MARTIN",
      "email": "bmartin2@fmi.com",
      "jobTitle": "Sr Document Controls Spec",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000094769.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000091133",
      "supervisorName": "DAN SHAPIRO"
    },
    {
      "employeeID": "0061000561",
      "firstName": "Betsy",
      "lastName": "Martin",
      "displayName": "BETSY MARTIN",
      "email": "bmartin3@fmi.com",
      "jobTitle": "Sr Document Controls Spec",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061000561.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000091133",
      "supervisorName": "DAN SHAPIRO"
    },
    {
      "employeeID": "0000085580",
      "firstName": "Judy",
      "lastName": "Martin",
      "displayName": "JUDY MARTIN",
      "email": "jmartin@fmi.com",
      "jobTitle": "Payroll Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085580.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085326",
      "supervisorName": "STACY SCHEXNAYDRE"
    },
    {
      "employeeID": "0000093695",
      "firstName": "Kalilah",
      "lastName": "Martin",
      "displayName": "KALILAH MARTIN",
      "email": "kmartin@fmi.com",
      "jobTitle": "Sr Accounting Clerk",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000093695.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000086665",
      "supervisorName": "BRIAN PIGLIA"
    },
    {
      "employeeID": "0060080499",
      "firstName": "Saralyn",
      "lastName": "Martin",
      "displayName": "SARALYN MARTIN",
      "email": "smartin@fmi.com",
      "jobTitle": "",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060080499.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "",
      "supervisorName": ""
    },
    {
      "employeeID": "0000018775",
      "firstName": "Michelle",
      "lastName": "Martinez",
      "displayName": "MICHELLE MARTINEZ",
      "email": "mmartine@fmi.com",
      "jobTitle": "Legal Information Systems Spec",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000018775.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000986346",
      "supervisorName": "DOUGLAS CURRAULT"
    },
    {
      "employeeID": "0060032385",
      "firstName": "Zurisaddai",
      "lastName": "Martinez",
      "displayName": "ZURISADDAI MARTINEZ",
      "email": "zmartine@fmi.com",
      "jobTitle": "Sr Accountant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060032385.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000064681",
      "supervisorName": "JILL LAYTON"
    },
    {
      "employeeID": "0000053293",
      "firstName": "Gregory",
      "lastName": "Martonick",
      "displayName": "GREG MARTONICK",
      "email": "gmartoni@fmi.com",
      "jobTitle": "Sr Dir of Tax",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000053293.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052232",
      "supervisorName": "HUGH DONAHUE"
    },
    {
      "employeeID": "0000054298",
      "firstName": "Pamela",
      "lastName": "Masson",
      "displayName": "PAM MASSON",
      "email": "pmasson@fmi.com",
      "jobTitle": "VP - Corporate Services",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054298.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051953",
      "supervisorName": "KATHLEEN QUIRK"
    },
    {
      "employeeID": "0060076807",
      "firstName": "Jordan",
      "lastName": "Mathews",
      "displayName": "JORDAN MATHEWS",
      "email": "jmathews@fmi.com",
      "jobTitle": "IT Risk Managment Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076807.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060065452",
      "supervisorName": "JEFF PICK"
    },
    {
      "employeeID": "0000062133",
      "firstName": "Irene",
      "lastName": "Mathieu",
      "displayName": "IRENE MATHIEU",
      "email": "imathieu@fmi.com",
      "jobTitle": "Sr OD Training Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000062133.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000091826",
      "supervisorName": "SCOTT KNUTSON"
    },
    {
      "employeeID": "0060086940",
      "firstName": "Michelle",
      "lastName": "Mathis",
      "displayName": "MICHELLE MATHIS",
      "email": "mmathis2@fmi.com",
      "jobTitle": "Business Analyst Contractor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086940.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000058288",
      "supervisorName": "GREGORY FOX-FITZGERALD"
    },
    {
      "employeeID": "0000067386",
      "firstName": "Felicity",
      "lastName": "Mauger",
      "displayName": "FELICITY MAUGER",
      "email": "fmauger@fmi.com",
      "jobTitle": "Financial Mgr Australasia",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067386.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000017473",
      "supervisorName": "GREG COFFIN"
    },
    {
      "employeeID": "0060077533",
      "firstName": "Andrew",
      "lastName": "Maxwell",
      "displayName": "ANDREW MAXWELL",
      "email": "amaxwell@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077533.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000065004",
      "firstName": "John",
      "lastName": "May",
      "displayName": "JOHN MAY",
      "email": "jmay@fmi.com",
      "jobTitle": "SAP Carve-Out",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000065004.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065010",
      "supervisorName": "JAMES PATTERSON"
    },
    {
      "employeeID": "0000054071",
      "firstName": "Kenneth",
      "lastName": "Mayfield",
      "displayName": "KEN MAYFIELD",
      "email": "kmayfiel@fmi.com",
      "jobTitle": "Lodge Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054071.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000023289",
      "supervisorName": "DEBBY CHAUPPETTA"
    },
    {
      "employeeID": "0000051339",
      "firstName": "Michael",
      "lastName": "McAdam",
      "displayName": "MIKE MCADAM",
      "email": "mmcadam@fmi.com",
      "jobTitle": "Dir Procurement",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051339.JPG",
      "companyDescription": "International Administrat",
      "supervisorID": "0000086555",
      "supervisorName": "ROB SCHROEDER"
    },
    {
      "employeeID": "0000089445",
      "firstName": "Francis",
      "lastName": "McAllister",
      "displayName": "FRANCIS MCALLISTER",
      "email": "fmcallis@fmi.com",
      "jobTitle": "VP Land & Water",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000089445.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017690",
      "supervisorName": "RED CONGER"
    },
    {
      "employeeID": "0000055640",
      "firstName": "Steven",
      "lastName": "McBride",
      "displayName": "STEVEN MCBRIDE",
      "email": "smcbride@fmi.com",
      "jobTitle": "Mgr Category Management",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000055640.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054547",
      "supervisorName": "CYNTHIA BARBER"
    },
    {
      "employeeID": "0000067392",
      "firstName": "Allison",
      "lastName": "McCall",
      "displayName": "ALLISON MCCALL",
      "email": "amccall@fmi.com",
      "jobTitle": "Office Mgr",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067392.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000067485",
      "supervisorName": "JOSE RAMON TANINGCO"
    },
    {
      "employeeID": "0000028257",
      "firstName": "Karen",
      "lastName": "McConaghy",
      "displayName": "KAREN MCCONAGHY",
      "email": "kmcconag@fmi.com",
      "jobTitle": "Spv Tax",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000028257.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051658",
      "supervisorName": "BILL VON KOLEN"
    },
    {
      "employeeID": "0000062363",
      "firstName": "Christopher",
      "lastName": "McCoy",
      "displayName": "CHRISTOPHER MCCOY",
      "email": "cmccoy@fmi.com",
      "jobTitle": "Project Mgr Engineering II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000062363.jpg",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0000088162",
      "firstName": "Dianna",
      "lastName": "McCoy",
      "displayName": "DIANNA MCCOY",
      "email": "dmccoy@fmi.com",
      "jobTitle": "Project Admin Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088162.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060088248",
      "firstName": "Nathan",
      "lastName": "Mccoy",
      "displayName": "NATHAN MCCOY",
      "email": "nmccoy1@fmi.com",
      "jobTitle": "TERRA NOVA TECHNOLOGIES INC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088248.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0060075186",
      "firstName": "Michael",
      "lastName": "McDaniel",
      "displayName": "MICHAEL MCDANIEL",
      "email": "mmcdanie@fmi.com",
      "jobTitle": "Accenture Executive Sponsor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060075186.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030596",
      "supervisorName": "DAVE SOVELL"
    },
    {
      "employeeID": "0061003693",
      "firstName": "Chelsie",
      "lastName": "McDonald",
      "displayName": "CHELSIE MCDONALD",
      "email": "cmcdonal2@fmi.com",
      "jobTitle": "Social Media Specialist",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003693.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0061002265",
      "supervisorName": "DAMON GROSS"
    },
    {
      "employeeID": "0000025917",
      "firstName": "Michael",
      "lastName": "McElrath",
      "displayName": "MIKE MCELRATH",
      "email": "mmcelrat@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000025917.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088202",
      "supervisorName": "TOM STUFFCO"
    },
    {
      "employeeID": "0060058119",
      "firstName": "Amanda",
      "lastName": "McGehee",
      "displayName": "AMANDA MCGEHEE",
      "email": "amcgehee@fmi.com",
      "jobTitle": "Sr Scientist Biodiversity",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060058119.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000086950",
      "supervisorName": "ERIC JOVANOVICH"
    },
    {
      "employeeID": "0061000137",
      "firstName": "Amanda",
      "lastName": "McGehee",
      "displayName": "AMANDA MCGEHEE",
      "email": "amcgehee1@fmi.com",
      "jobTitle": "Sr Scientist Biodiversity",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061000137.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0061000132",
      "supervisorName": "ERIC JOVANOVICH"
    },
    {
      "employeeID": "0060068755",
      "firstName": "Kristin",
      "lastName": "McKee",
      "displayName": "KRISTIN MCKEE",
      "email": "kmckee2@fmi.com",
      "jobTitle": "Sr PMO Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060068755.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000061223",
      "supervisorName": "KEVIN JACOBS"
    },
    {
      "employeeID": "0000010344",
      "firstName": "Piper",
      "lastName": "McKenna",
      "displayName": "PIPER MCKENNA",
      "email": "pmckenna@fmi.com",
      "jobTitle": "SAP Com Functional Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000010344.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068782",
      "supervisorName": "REMI BRANDEBOURG"
    },
    {
      "employeeID": "0060089376",
      "firstName": "Jason",
      "lastName": "McKnight",
      "displayName": "JASON MCKNIGHT",
      "email": "jmcknigh@fmi.com",
      "jobTitle": "Contract Recruiter",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089376.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053133",
      "supervisorName": "VALERIE BEACH"
    },
    {
      "employeeID": "0000057092",
      "firstName": "Robert",
      "lastName": "McLain",
      "displayName": "ROBERT MCLAIN",
      "email": "rmclain@fmi.com",
      "jobTitle": "Mgr Corp Health & Safety Systems",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000057092.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000014079",
      "supervisorName": "STACY KRAMER"
    },
    {
      "employeeID": "0060086997",
      "firstName": "Doug",
      "lastName": "McLaughlin",
      "displayName": "DOUG MCLAUGHLIN",
      "email": "dmclaugh@fmi.com",
      "jobTitle": "Business Solutions Architect",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086997.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062945",
      "supervisorName": "TARA GIESINGER"
    },
    {
      "employeeID": "0060089371",
      "firstName": "Sandra",
      "lastName": "McLaughlin",
      "displayName": "SANDRA MCLAUGHLIN",
      "email": "smclaugh@fmi.com",
      "jobTitle": "",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089371.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000060444",
      "supervisorName": "CHRIS JORDAN"
    },
    {
      "employeeID": "0060075542",
      "firstName": "Sean",
      "lastName": "McLaughlin",
      "displayName": "SEAN MCLAUGHLIN",
      "email": "smclaugh1@fmi.com",
      "jobTitle": "Sr GIS Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060075542.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000064031",
      "supervisorName": "CHRIS FRANKS"
    },
    {
      "employeeID": "0060076907",
      "firstName": "Madeline",
      "lastName": "McLean",
      "displayName": "MADELINE MCLEAN",
      "email": "mmclean@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076907.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000028483",
      "firstName": "Robert",
      "lastName": "McMillan",
      "displayName": "KENT MCMILLAN",
      "email": "kmcmilla@fmi.com",
      "jobTitle": "Sr Mgr Financial Analysis",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000028483.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054113",
      "supervisorName": "ROGER STACK"
    },
    {
      "employeeID": "0060055793",
      "firstName": "Anna",
      "lastName": "McMullen",
      "displayName": "ANNA MCMULLEN",
      "email": "amcmulle@fmi.com",
      "jobTitle": "Mgr EMS & Audit Programs",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060055793.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000029889",
      "supervisorName": "CRISTIAN STRICKLER HITSCHFELD"
    },
    {
      "employeeID": "0061003460",
      "firstName": "Demetra",
      "lastName": "Mcneal",
      "displayName": "DEMETRA MCNEAL",
      "email": "dmcneal1@fmi.com",
      "jobTitle": "Payroll & Tax Specialist",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003460.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0061003538",
      "supervisorName": "JEN BROOKS"
    },
    {
      "employeeID": "0060089377",
      "firstName": "Heather",
      "lastName": "McNeely",
      "displayName": "HEATHER MCNEELY",
      "email": "hmcneely@fmi.com",
      "jobTitle": "Contract Interviewer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089377.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053133",
      "supervisorName": "VALERIE BEACH"
    },
    {
      "employeeID": "0060058439",
      "firstName": "Patrick",
      "lastName": "McNeil",
      "displayName": "PAT MCNEIL",
      "email": "pmcneil@fmi.com",
      "jobTitle": "Training Specialist II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060058439.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000091826",
      "supervisorName": "SCOTT KNUTSON"
    },
    {
      "employeeID": "0060087953",
      "firstName": "Mark",
      "lastName": "McNeill",
      "displayName": "MARK MCNEILL",
      "email": "mmcneill@fmi.com",
      "jobTitle": "Expeditor II",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087953.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000013819",
      "supervisorName": "RENE REYES"
    },
    {
      "employeeID": "0060087515",
      "firstName": "Cody",
      "lastName": "McNutt",
      "displayName": "CODY MCNUTT",
      "email": "cmcnutt1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087515.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000091262",
      "firstName": "Keven",
      "lastName": "McSherry",
      "displayName": "KEVEN MCSHERRY",
      "email": "kmcsherr@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091262.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000023463",
      "supervisorName": "BRANDON SEXTON"
    },
    {
      "employeeID": "0060063022",
      "firstName": "Sean",
      "lastName": "McWhorter",
      "displayName": "SEAN MCWHORTER",
      "email": "smcwhort1@fmi.com",
      "jobTitle": "Enterprise Security Architect III",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060063022.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060072604",
      "supervisorName": "VAUDA JORDAN"
    },
    {
      "employeeID": "0000895797",
      "firstName": "Fernandy",
      "lastName": "Meiriyanto",
      "displayName": "IVAN MEIRIYANTO",
      "email": "fmeiriya@fmi.com",
      "jobTitle": "Sr Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000895797.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000009108",
      "supervisorName": "SUGENG WIDODO"
    },
    {
      "employeeID": "0000011691",
      "firstName": "Valerie",
      "lastName": "Melancon",
      "displayName": "VALERIE MELANCON",
      "email": "vmelanco@fmi.com",
      "jobTitle": "Sales Administration Coordinator, Sr",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011691.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085492",
      "supervisorName": "TOMMY ALLEN"
    },
    {
      "employeeID": "0060090206",
      "firstName": "Gerardo",
      "lastName": "Melendrez",
      "displayName": "GERARDO MELENDREZ",
      "email": "gmelendr@fmi.com",
      "jobTitle": "UX Tech",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060090206.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0060063118",
      "supervisorName": "TONY PETERSON"
    },
    {
      "employeeID": "0060055361",
      "firstName": "Mark",
      "lastName": "Mellen",
      "displayName": "MARK MELLEN",
      "email": "mmellen@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060055361.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060088417",
      "firstName": "Brandon",
      "lastName": "Melnychuk",
      "displayName": "BRANDON MELNYCHUK",
      "email": "bmelnych1@fmi.com",
      "jobTitle": "Contracts Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088417.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000092167",
      "supervisorName": "DANIEL GONZALEZ OLAYA"
    },
    {
      "employeeID": "0000062464",
      "firstName": "Joseph",
      "lastName": "Melvin",
      "displayName": "TAYLOR MELVIN",
      "email": "tmelvin@fmi.com",
      "jobTitle": "Vice President - Corporate Development",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000062464.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051953",
      "supervisorName": "KATHLEEN QUIRK"
    },
    {
      "employeeID": "0060079895",
      "firstName": "Tilman",
      "lastName": "Melzer",
      "displayName": "TILMAN MELZER",
      "email": "tmelzer@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079895.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060055894",
      "firstName": "Angelica",
      "lastName": "Mendoza Siller",
      "displayName": "ANGELICA MENDOZA SILLER",
      "email": "amendoza5@fmi.com",
      "jobTitle": "Ld Bus Analyst/SA Payroll",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060055894.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060058379",
      "supervisorName": "NIRMOD KUMAR"
    },
    {
      "employeeID": "0000085655",
      "firstName": "Mina",
      "lastName": "Meric",
      "displayName": "MINA MERIC",
      "email": "mmeric@fmi.com",
      "jobTitle": "Paralegal",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085655.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051215",
      "supervisorName": "DEAN FALGOUST"
    },
    {
      "employeeID": "0000019708",
      "firstName": "Audrey",
      "lastName": "Mertes",
      "displayName": "AUDREY MERTES",
      "email": "amertes@fmi.com",
      "jobTitle": "Mgr GSC Sustainability",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000019708.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000024467",
      "supervisorName": "DAVE PREST"
    },
    {
      "employeeID": "0000264055",
      "firstName": "Donna",
      "lastName": "Messa",
      "displayName": "DONNA MESSA",
      "email": "dmessa@fmi.com",
      "jobTitle": "Sr Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000264055.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051339",
      "supervisorName": "MIKE MCADAM"
    },
    {
      "employeeID": "0060071969",
      "firstName": "David",
      "lastName": "Messersmith",
      "displayName": "DAVID MESSERSMITH",
      "email": "dmessers@fmi.com",
      "jobTitle": "Mgr Aviation Program",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060071969.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0060052006",
      "supervisorName": "MORGAN LAMB"
    },
    {
      "employeeID": "0060071519",
      "firstName": "Sai Praveen Reddy",
      "lastName": "Metla",
      "displayName": "SAI PRAVEEN REDDY METLA",
      "email": "smetla@fmi.com",
      "jobTitle": "MSO Incident Response Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060071519.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060072316",
      "supervisorName": "DAVID RIZA"
    },
    {
      "employeeID": "0060083253",
      "firstName": "Jack",
      "lastName": "Meyer",
      "displayName": "JACK MEYER",
      "email": "jmeyer4@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083253.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060041367",
      "firstName": "Jennifer",
      "lastName": "Meyers",
      "displayName": "JENNIFER MEYERS",
      "email": "jmeyers@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060041367.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0061002071",
      "firstName": "Brandon",
      "lastName": "Michelena",
      "displayName": "BRANDON MICHELENA",
      "email": "bmichele@fmi.com",
      "jobTitle": "Contract Administrator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002071.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0061000316",
      "supervisorName": "JENNIFER HOBBS"
    },
    {
      "employeeID": "0061000522",
      "firstName": "Joshua",
      "lastName": "Midgley",
      "displayName": "JOSH MIDGLEY",
      "email": "jmidgley@fmi.com",
      "jobTitle": "Sr Treasury Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000522.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051194",
      "supervisorName": "BOB BOYCE"
    },
    {
      "employeeID": "0000052730",
      "firstName": "Karl",
      "lastName": "Miehe",
      "displayName": "KARL MIEHE",
      "email": "kmiehe@fmi.com",
      "jobTitle": "Sr Process Ldr Supply Chain",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000052730.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0060059995",
      "firstName": "Nikolay",
      "lastName": "Mihaylov",
      "displayName": "NIKOLAY MIHAYLOV",
      "email": "nmihaylo@fmi.com",
      "jobTitle": "Project Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060059995.JPG",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0060064090",
      "supervisorName": "VLAD BUCHYNSKYY"
    },
    {
      "employeeID": "0000030525",
      "firstName": "Ellie",
      "lastName": "Mikes",
      "displayName": "ELLIE MIKES",
      "email": "emikes@fmi.com",
      "jobTitle": "Assistant Treasurer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030525.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051194",
      "supervisorName": "BOB BOYCE"
    },
    {
      "employeeID": "0000013757",
      "firstName": "Randolph",
      "lastName": "Miller",
      "displayName": "RANDY MILLER",
      "email": "rmiller6@fmi.com",
      "jobTitle": "Sr Process Ldr Supply Chain",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000013757.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0000014391",
      "firstName": "Todd",
      "lastName": "Milovich",
      "displayName": "TODD MILOVICH",
      "email": "tmilovic@fmi.com",
      "jobTitle": "Project Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000014391.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051252",
      "supervisorName": "GRANT WELKER"
    },
    {
      "employeeID": "0060038791",
      "firstName": "Kyle",
      "lastName": "Mineo",
      "displayName": "KYLE MINEO",
      "email": "kmineo@fmi.com",
      "jobTitle": "Risk Consultant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060038791.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000067686",
      "supervisorName": "CARRIE ROBINSON"
    },
    {
      "employeeID": "0060076284",
      "firstName": "Danelle",
      "lastName": "Miner",
      "displayName": "DANELLE MINER",
      "email": "dminer1@fmi.com",
      "jobTitle": "Sr Recruiter",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076284.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000093345",
      "supervisorName": "MELANIE PEIRE"
    },
    {
      "employeeID": "0060031202",
      "firstName": "Fang",
      "lastName": "Ming Zhou",
      "displayName": "FANG MING ZHOU",
      "email": "fmingzho@fmi.com",
      "jobTitle": "Customer Service Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060031202.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0060031201",
      "supervisorName": "MICHAEL LACIS"
    },
    {
      "employeeID": "0061003622",
      "firstName": "Logan",
      "lastName": "Mingo",
      "displayName": "LOGAN MINGO",
      "email": "lmingo@fmi.com",
      "jobTitle": "Contract Administrator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003622.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0061000316",
      "supervisorName": "JENNIFER HOBBS"
    },
    {
      "employeeID": "0000091548",
      "firstName": "Ajitesh",
      "lastName": "Mishra",
      "displayName": "AJITESH MISHRA",
      "email": "AMishra@fmi.com",
      "jobTitle": "Systems Team Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091548.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060043585",
      "supervisorName": "BENITO RALPH"
    },
    {
      "employeeID": "0060032889",
      "firstName": "Brenda",
      "lastName": "Mitchell",
      "displayName": "BRENDA MITCHELL",
      "email": "bmitchel@fmi.com",
      "jobTitle": "Mgr Global Contract Admin",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060032889.JPG",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0000052931",
      "supervisorName": "BARBARA BUCK"
    },
    {
      "employeeID": "0000874000",
      "firstName": "Steven",
      "lastName": "Mitchell",
      "displayName": "STEVEN MITCHELL",
      "email": "smitchel@fmi.com",
      "jobTitle": "Proj Mgr Engineering II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000874000.jpg",
      "companyDescription": "International Administrat",
      "supervisorID": "0000011812",
      "supervisorName": "LOUIS KIEFFER"
    },
    {
      "employeeID": "0060080061",
      "firstName": "Mitch",
      "lastName": "Mitchler",
      "displayName": "MITCH MITCHLER",
      "email": "mmitchle@fmi.com",
      "jobTitle": "Desktop Support",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080061.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060056603",
      "supervisorName": "PAUL SMIGEL"
    },
    {
      "employeeID": "0060079111",
      "firstName": "Facundo",
      "lastName": "Mitre",
      "displayName": "FACUNDO MITRE",
      "email": "fmitre@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079111.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000023523",
      "firstName": "Vicky",
      "lastName": "Mix",
      "displayName": "VICKY MIX",
      "email": "vmix@fmi.com",
      "jobTitle": "Executive Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000023523.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051215",
      "supervisorName": "DEAN FALGOUST"
    },
    {
      "employeeID": "0061003753",
      "firstName": "Satoshi",
      "lastName": "Miyata",
      "displayName": "SATOSHI MIYATA",
      "email": "smiyata@fmi.com",
      "jobTitle": "Mgr Administration",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003753.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0060054830",
      "supervisorName": "MAKOTO KUMAZOE"
    },
    {
      "employeeID": "0060086155",
      "firstName": "Ganesh",
      "lastName": "MK",
      "displayName": "GANESH MK",
      "email": "gmk@fmi.com",
      "jobTitle": "MSO Azure Security Operations",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086155.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094981",
      "supervisorName": "TINA SLANKAS"
    },
    {
      "employeeID": "0060087488",
      "firstName": "Nicole",
      "lastName": "Mohair",
      "displayName": "NICOLE MOHAIR",
      "email": "nmohair@fmi.com",
      "jobTitle": "Contract Staffing Coordinator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087488.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053133",
      "supervisorName": "VALERIE BEACH"
    },
    {
      "employeeID": "0060033132",
      "firstName": "Kristi",
      "lastName": "Molnar",
      "displayName": "KRISTI MOLNAR",
      "email": "kmolnar@fmi.com",
      "jobTitle": "Executive Secretary",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060033132.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000014079",
      "supervisorName": "STACY KRAMER"
    },
    {
      "employeeID": "0000067503",
      "firstName": "Abner",
      "lastName": "Montilla",
      "displayName": "ABNER MONTILLA",
      "email": null,
      "jobTitle": "Field Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067503.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000067485",
      "supervisorName": "JOSE RAMON TANINGCO"
    },
    {
      "employeeID": "0060029356",
      "firstName": "Teresa",
      "lastName": "Montjar",
      "displayName": "TERESA MONTJAR",
      "email": "tmontjar@fmi.com",
      "jobTitle": "Ld HRMS Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060029356.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000019403",
      "supervisorName": "NATACHA PAGE"
    },
    {
      "employeeID": "0000067943",
      "firstName": "Amanda",
      "lastName": "Montoya",
      "displayName": "AMANDA MONTOYA",
      "email": "amontoya1@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067943.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060077988",
      "supervisorName": "GEMMA WISEMAN"
    },
    {
      "employeeID": "0000026560",
      "firstName": "Elizabeth",
      "lastName": "Moore",
      "displayName": "LIZA MOORE",
      "email": "lmoore@fmi.com",
      "jobTitle": "Mgr FCA Sales Administration",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000026560.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000053300",
      "supervisorName": "MICHELLE QUINTANILLA"
    },
    {
      "employeeID": "0060082315",
      "firstName": "Morgan",
      "lastName": "Moore",
      "displayName": "MORGAN MOORE",
      "email": "mmoore3@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060082315.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000061631",
      "firstName": "Sandra",
      "lastName": "Moore",
      "displayName": "SANDRA MOORE",
      "email": "smoore1@fmi.com",
      "jobTitle": "Executive Secretary",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000061631.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000029859",
      "supervisorName": "LINDA SCOTT"
    },
    {
      "employeeID": "0061001976",
      "firstName": "Antonio",
      "lastName": "Morales",
      "displayName": "ANTONIO MORALES",
      "email": "amorales15@fmi.com",
      "jobTitle": "IT Security Analyst I",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001976.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0061001422",
      "supervisorName": "TREVOR COBB"
    },
    {
      "employeeID": "0000089406",
      "firstName": "Maria",
      "lastName": "Morales",
      "displayName": "MARIA MORALES",
      "email": "mmorales4@fmi.com",
      "jobTitle": "Sr HR Systems Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000089406.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030627",
      "supervisorName": "KAREN EICHHORST"
    },
    {
      "employeeID": "0060079345",
      "firstName": "Michael",
      "lastName": "Morales",
      "displayName": "MICHAEL MORALES",
      "email": "mmorales18@fmi.com",
      "jobTitle": "Spv Staffing",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079345.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053133",
      "supervisorName": "VALERIE BEACH"
    },
    {
      "employeeID": "0000028221",
      "firstName": "Zonia",
      "lastName": "Morales",
      "displayName": "ZONIA MORALES",
      "email": "zmorales@fmi.com",
      "jobTitle": "Sr Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000028221.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000085055",
      "supervisorName": "TIM CASTEN"
    },
    {
      "employeeID": "0000012065",
      "firstName": "Jimmy",
      "lastName": "Moran",
      "displayName": "JIMMY LEE MORAN",
      "email": "jmoran@fmi.com",
      "jobTitle": "Mgr Kitchen Staff",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000012065.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000016865",
      "supervisorName": "JANICE SINGLETON"
    },
    {
      "employeeID": "0000094542",
      "firstName": "Scott",
      "lastName": "Morey",
      "displayName": "SCOTT MOREY",
      "email": "smorey@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000094542.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000029826",
      "supervisorName": "AMY RAMSBACHER"
    },
    {
      "employeeID": "0060086995",
      "firstName": "Holly",
      "lastName": "Morgan",
      "displayName": "HOLLY MORGAN",
      "email": "hmorgan@fmi.com",
      "jobTitle": "Logistics Services Specialist",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086995.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060073853",
      "supervisorName": "GRETCHEN DONAHUE"
    },
    {
      "employeeID": "0002104090",
      "firstName": "Maria Esperanza",
      "lastName": "Morillo",
      "displayName": "MARIA ESPERANZA MORILLO",
      "email": "mmorillo@fmi.com",
      "jobTitle": "Mgr Corp Comm Initiatives & Projects",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0002104090.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000015409",
      "supervisorName": "LINDA HAYES"
    },
    {
      "employeeID": "0060033141",
      "firstName": "Dawn",
      "lastName": "Morris",
      "displayName": "DAWN MORRIS",
      "email": "dmorris1@fmi.com",
      "jobTitle": "Compliance Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060033141.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094868",
      "supervisorName": "STEPHEN NEHRING"
    },
    {
      "employeeID": "0000015036",
      "firstName": "Gary",
      "lastName": "Morris",
      "displayName": "GARY MORRIS",
      "email": "gmorris@fmi.com",
      "jobTitle": "Sr Mgr Consolidation & Analysis",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000015036.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024216",
      "supervisorName": "KENT ALME"
    },
    {
      "employeeID": "0000091581",
      "firstName": "Kevin",
      "lastName": "Morris",
      "displayName": "KEVIN MORRIS",
      "email": "kmorris@fmi.com",
      "jobTitle": "SAP Carve-Out",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091581.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065010",
      "supervisorName": "JAMES PATTERSON"
    },
    {
      "employeeID": "0060055910",
      "firstName": "Michael",
      "lastName": "Morris",
      "displayName": "MICHAEL MORRIS",
      "email": "mmorris2@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060055910.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060043564",
      "firstName": "Stephanie",
      "lastName": "Morris",
      "displayName": "STEPHANIE MORRIS",
      "email": "smorris@fmi.com",
      "jobTitle": "Sales & Service Admin Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060043564.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000026557",
      "supervisorName": "KRISTA COLEMAN"
    },
    {
      "employeeID": "0000085509",
      "firstName": "John",
      "lastName": "Mosher",
      "displayName": "JOHN MOSHER",
      "email": "jmosher@fmi.com",
      "jobTitle": "VP Global Security",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085509.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000068017",
      "supervisorName": "BILL HARRIS"
    },
    {
      "employeeID": "0000094210",
      "firstName": "Kenneth",
      "lastName": "Moss",
      "displayName": "KENNETH MOSS",
      "email": "kmoss@fmi.com",
      "jobTitle": "Chief Res Estimation Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000094210.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000086445",
      "supervisorName": "ANDREW ISSEL"
    },
    {
      "employeeID": "0060079056",
      "firstName": "Nadim",
      "lastName": "Moummar Rodriguez",
      "displayName": "NADIM MOUMMAR RODRIGUEZ",
      "email": "nmoummar@fmi.com",
      "jobTitle": "Contract Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079056.JPG",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000017473",
      "supervisorName": "GREG COFFIN"
    },
    {
      "employeeID": "0060079783",
      "firstName": "Ahmad",
      "lastName": "Muhammad",
      "displayName": "AHMAD MUHAMMAD",
      "email": "amuhamma5@fmi.com",
      "jobTitle": "Construction Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079783.JPG",
      "companyDescription": "Morenci Mining JV",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0000067840",
      "firstName": "Michael",
      "lastName": "Mular",
      "displayName": "MIKE MULAR",
      "email": "mmular@fmi.com",
      "jobTitle": "Dir Metallurgy & Strat Plng",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067840.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000088202",
      "supervisorName": "TOM STUFFCO"
    },
    {
      "employeeID": "0060085773",
      "firstName": "Harish",
      "lastName": "Mulay",
      "displayName": "HARISH MULAY",
      "email": "hmulay@fmi.com",
      "jobTitle": "MEM Support Contractor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085773.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051441",
      "supervisorName": "PAUL WHITEAKER"
    },
    {
      "employeeID": "0000830073",
      "firstName": "INTAN",
      "lastName": "MULIASARI",
      "displayName": "INTAN MULIASARI",
      "email": "imuliasa@fmi.com",
      "jobTitle": "Sr Systems Integrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000830073.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0060088557",
      "firstName": "Reuben",
      "lastName": "Mulkey",
      "displayName": "REUBEN MULKEY",
      "email": "rmulkey@fmi.com",
      "jobTitle": "ADVANCED TOWER SERVICES INC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088557.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000050087",
      "supervisorName": "WALTON STUCKEY"
    },
    {
      "employeeID": "0060087175",
      "firstName": "Aashi",
      "lastName": "Mundra",
      "displayName": "AASHI MUNDRA",
      "email": "amundra1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087175.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060080576",
      "firstName": "Perumal",
      "lastName": "Munisamy",
      "displayName": "PERUMAL MUNISAMY",
      "email": "pmunisam@fmi.com",
      "jobTitle": "BI Developer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080576.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0060078851",
      "firstName": "Hardy",
      "lastName": "Muñoz",
      "displayName": "HARDY MUÑOZ",
      "email": "hmunoz4@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078851.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060023412",
      "firstName": "Elizabeth",
      "lastName": "Muravnick",
      "displayName": "LIZ MURAVNICK",
      "email": "lmuravni@fmi.com",
      "jobTitle": "Sr Recruiter",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060023412.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060079345",
      "supervisorName": "MICHAEL MORALES"
    },
    {
      "employeeID": "0060064468",
      "firstName": "Iulia",
      "lastName": "Muresan",
      "displayName": "IULIA MURESAN",
      "email": "imuresan@fmi.com",
      "jobTitle": "Trvl & Entertainment Acct Asst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060064468.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030467",
      "supervisorName": "KIM BURLEY"
    },
    {
      "employeeID": "0000028255",
      "firstName": "Afini",
      "lastName": "Murray",
      "displayName": "AFINI MURRAY",
      "email": "amurray@fmi.com",
      "jobTitle": "Trvl & Entertainment Acct Asst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000028255.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030467",
      "supervisorName": "KIM BURLEY"
    },
    {
      "employeeID": "0060079166",
      "firstName": "Joel",
      "lastName": "Murray",
      "displayName": "JOEL MURRAY",
      "email": "jmurray1@fmi.com",
      "jobTitle": "Azure Firewall Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079166.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094981",
      "supervisorName": "TINA SLANKAS"
    },
    {
      "employeeID": "0060081439",
      "firstName": "Sureshkumar",
      "lastName": "Murugesan",
      "displayName": "SURESHKUMAR MURUGESAN",
      "email": "smuruges@fmi.com",
      "jobTitle": "BI Developer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081439.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0000018848",
      "firstName": "Laura",
      "lastName": "Musgrove",
      "displayName": "LAURA MUSGROVE",
      "email": "lmusgrov@fmi.com",
      "jobTitle": "SR. MANAGER BUSINESS CONTINUITY, ASSET CONTROL & T",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000018848.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065010",
      "supervisorName": "JAMES PATTERSON"
    },
    {
      "employeeID": "0060057173",
      "firstName": "Stephanie",
      "lastName": "Music",
      "displayName": "STEPHANIE MUSIC",
      "email": "smusic@fmi.com",
      "jobTitle": "Sr Accounting Clerk",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060057173.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015474",
      "supervisorName": "STACY COSTELLO"
    },
    {
      "employeeID": "0000017600",
      "firstName": "Brian",
      "lastName": "Musser",
      "displayName": "BRIAN MUSSER",
      "email": "bmusser@fmi.com",
      "jobTitle": "Mgr Permitting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000017600.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000029889",
      "supervisorName": "CRISTIAN STRICKLER HITSCHFELD"
    },
    {
      "employeeID": "0060029739",
      "firstName": "Emily",
      "lastName": "Muteb",
      "displayName": "EMILY MUTEB",
      "email": "emuteb@fmi.com",
      "jobTitle": "Mgr Strategic Community Development",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060029739.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068625",
      "supervisorName": "LEROY HOLLENBECK"
    },
    {
      "employeeID": "0060084511",
      "firstName": "Dinkar",
      "lastName": "Mylaraswamy",
      "displayName": "DINKAR MYLARASWAMY",
      "email": "dmylaras@fmi.com",
      "jobTitle": "Data Scientist III",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060084511.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057353",
      "supervisorName": "ROBERT CATRON"
    },
    {
      "employeeID": "0000050051",
      "firstName": "Leon",
      "lastName": "Naftali",
      "displayName": "LEO NAFTALI",
      "email": "lnaftali@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000050051.jpg",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000010948",
      "supervisorName": "MAC CANBY"
    },
    {
      "employeeID": "0000093642",
      "firstName": "Rajesh",
      "lastName": "Nagaboina",
      "displayName": "RAJESH NAGABOINA",
      "email": "rnagaboi@fmi.com",
      "jobTitle": "SharePoint Tech Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000093642.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068782",
      "supervisorName": "REMI BRANDEBOURG"
    },
    {
      "employeeID": "0060082776",
      "firstName": "Jay",
      "lastName": "Nahata",
      "displayName": "JAY NAHATA",
      "email": "jnahata@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060082776.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060080040",
      "firstName": "Arun",
      "lastName": "Nair",
      "displayName": "ARUN NAIR",
      "email": "anair@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080040.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060085865",
      "firstName": "Nitasha",
      "lastName": "Nair",
      "displayName": "NITASHA NAIR",
      "email": "nnair@fmi.com",
      "jobTitle": "Consultant - Data Science",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085865.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057353",
      "supervisorName": "ROBERT CATRON"
    },
    {
      "employeeID": "0060031208",
      "firstName": "Keiko",
      "lastName": "Nakano",
      "displayName": "KEIKO NAKANO",
      "email": "knakano@fmi.com",
      "jobTitle": "Mgr Administration",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060031208.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000056295",
      "supervisorName": "DAVID ELLIOTT"
    },
    {
      "employeeID": "0060080573",
      "firstName": "Raja Deepak",
      "lastName": "Natarajan Kandasamy",
      "displayName": "RAJA DEEPAK NATARAJAN KANDASAMY",
      "email": "rnataraj@fmi.com",
      "jobTitle": "BI Developer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080573.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0000057638",
      "firstName": "Eloisa",
      "lastName": "Naven",
      "displayName": "ELOISA NAVEN",
      "email": "enaven@fmi.com",
      "jobTitle": "Accounting Technical Spec",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000057638.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055631",
      "supervisorName": "JOHN STEBBINS"
    },
    {
      "employeeID": "0000051976",
      "firstName": "Vijayalakshmi",
      "lastName": "Neelakantan",
      "displayName": "VIJI NEELAKANTAN",
      "email": "vneelaka@fmi.com",
      "jobTitle": "Ld Systems Integrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051976.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0060079420",
      "firstName": "Charlsie",
      "lastName": "Neer",
      "displayName": "CHARLSIE NEER",
      "email": "cneer@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079420.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0000094868",
      "firstName": "Stephen",
      "lastName": "Nehring",
      "displayName": "STEPHEN NEHRING",
      "email": "snehring@fmi.com",
      "jobTitle": "Mgr Compliance",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000094868.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060050032",
      "supervisorName": "LORI HIGUERA"
    },
    {
      "employeeID": "0060085765",
      "firstName": "Maria",
      "lastName": "Netherlin",
      "displayName": "MARIA NETHERLIN",
      "email": "mnetherl@fmi.com",
      "jobTitle": "Payroll Clerk",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085765.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000060444",
      "supervisorName": "CHRIS JORDAN"
    },
    {
      "employeeID": "0000011676",
      "firstName": "Charles",
      "lastName": "Newell",
      "displayName": "CHARLIE NEWELL",
      "email": "cnewell@fmi.com",
      "jobTitle": "Dir Tax Compliance",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011676.jpg",
      "companyDescription": "International Administrat",
      "supervisorID": "0000051215",
      "supervisorName": "DEAN FALGOUST"
    },
    {
      "employeeID": "0000019817",
      "firstName": "Cathy",
      "lastName": "Newman",
      "displayName": "CATHY NEWMAN",
      "email": "cnewman@fmi.com",
      "jobTitle": "PTFI Materials Coordinator, Sr",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000019817.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051339",
      "supervisorName": "MIKE MCADAM"
    },
    {
      "employeeID": "0060079419",
      "firstName": "Christopher",
      "lastName": "Newton",
      "displayName": "CHRISTOPHER NEWTON",
      "email": "cnewton1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079419.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060070739",
      "firstName": "Dennis",
      "lastName": "Nguyen",
      "displayName": "DENNIS NGUYEN",
      "email": "dnguyen@fmi.com",
      "jobTitle": "Sr Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060070739.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057338",
      "supervisorName": "KEVIN TRASENTE"
    },
    {
      "employeeID": "0060072868",
      "firstName": "Jacques",
      "lastName": "Nguz Tshisens",
      "displayName": "JACQUES NGUZ TSHISENS",
      "email": "jnguztsh@fmi.com",
      "jobTitle": "Chief Geomechanical Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060072868.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000085055",
      "supervisorName": "TIM CASTEN"
    },
    {
      "employeeID": "0060086693",
      "firstName": "Tianfang",
      "lastName": "Ni",
      "displayName": "TIANFANG NI",
      "email": "tni@fmi.com",
      "jobTitle": "Data Scientist",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086693.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060047531",
      "supervisorName": "TRAVIS GADDIE"
    },
    {
      "employeeID": "0060075139",
      "firstName": "Greg",
      "lastName": "Nicholson",
      "displayName": "GREG NICHOLSON",
      "email": "gnichols@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060075139.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060053656",
      "firstName": "Bruce",
      "lastName": "Nickle",
      "displayName": "BRUCE NICKLE",
      "email": "bnickle@fmi.com",
      "jobTitle": "Dir GSC Logistics & Transportation",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060053656.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000011629",
      "supervisorName": "DANNY HUGHES"
    },
    {
      "employeeID": "0000068000",
      "firstName": "Randal",
      "lastName": "Nickle",
      "displayName": "RANDY NICKLE",
      "email": "rnickle@fmi.com",
      "jobTitle": "Sr VP Sales & Marketing",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000068000.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000056295",
      "supervisorName": "DAVID ELLIOTT"
    },
    {
      "employeeID": "0000052608",
      "firstName": "Barbara",
      "lastName": "Nielsen",
      "displayName": "BARBARA NIELSEN",
      "email": "bnielsen@fmi.com",
      "jobTitle": "Mgr Remediation Projects",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000052608.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000026712",
      "supervisorName": "BRYCE ROMIG"
    },
    {
      "employeeID": "0000053075",
      "firstName": "Ryan",
      "lastName": "Niesz",
      "displayName": "RYAN NIESZ",
      "email": "rniesz@fmi.com",
      "jobTitle": "Dir Compensation & Recruiting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000053075.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000029859",
      "supervisorName": "LINDA SCOTT"
    },
    {
      "employeeID": "0060071384",
      "firstName": "Tsvetanka",
      "lastName": "Nikolova",
      "displayName": "TSVETANKA NIKOLOVA",
      "email": "tnikolov@fmi.com",
      "jobTitle": "Hygienist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060071384.JPG",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0060064090",
      "supervisorName": "VLAD BUCHYNSKYY"
    },
    {
      "employeeID": "0000089933",
      "firstName": "Yuichiro",
      "lastName": "Nishino",
      "displayName": "YUICHIRO NISHINO",
      "email": "ynishino@fmi.com",
      "jobTitle": "Gen Mgr Cu Concentrate Sales",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000089933.jpg",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0060017216",
      "supervisorName": "ALVARO GONZALO DIAZ"
    },
    {
      "employeeID": "0000085584",
      "firstName": "Dena",
      "lastName": "Niskoch",
      "displayName": "DENA NISKOCH",
      "email": "dniskoch@fmi.com",
      "jobTitle": "HR Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085584.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085658",
      "supervisorName": "MEGAN PATRON"
    },
    {
      "employeeID": "0060038916",
      "firstName": "Brian",
      "lastName": "Njenga",
      "displayName": "BRIAN NJENGA",
      "email": "bnjenga@fmi.com",
      "jobTitle": "Sr Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060038916.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000085592",
      "supervisorName": "JAMES YOUNG"
    },
    {
      "employeeID": "0060076721",
      "firstName": "Evan",
      "lastName": "Nolan",
      "displayName": "EVAN NOLAN",
      "email": "enolan@fmi.com",
      "jobTitle": "PIONEER EQUIPMENT INC",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076721.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017064",
      "supervisorName": "LISA MEDINA"
    },
    {
      "employeeID": "0000054104",
      "firstName": "David",
      "lastName": "Norriss",
      "displayName": "DAVID NORRISS",
      "email": "dnorriss@fmi.com",
      "jobTitle": "Dir Environmental Affairs",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054104.JPG",
      "companyDescription": "International Administrat",
      "supervisorID": "0000050843",
      "supervisorName": "BILL COBB"
    },
    {
      "employeeID": "0000253124",
      "firstName": "Setia",
      "lastName": "Nugroho",
      "displayName": "SETIA NUGROHO",
      "email": "snugroho@fmi.com",
      "jobTitle": "Proj Mgr Engineering II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000253124.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0000088960",
      "firstName": "Thomas",
      "lastName": "Nuttli",
      "displayName": "TOM NUTTLI",
      "email": "tnuttli@fmi.com",
      "jobTitle": "Sr Financial Analyst – Operations",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088960.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000054113",
      "supervisorName": "ROGER STACK"
    },
    {
      "employeeID": "0060088243",
      "firstName": "Christina",
      "lastName": "O Keefe",
      "displayName": "CHRISTINA O KEEFE",
      "email": "cokeefe1@fmi.com",
      "jobTitle": "TERRA NOVA TECHNOLOGIES INC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088243.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0060088242",
      "firstName": "Sean",
      "lastName": "O Keefe",
      "displayName": "SEAN O KEEFE",
      "email": "sokeefe1@fmi.com",
      "jobTitle": "TERRA NOVA TECHNOLOGIES INC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088242.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0060088740",
      "firstName": "Karen",
      "lastName": "O'Bryan",
      "displayName": "KAREN O'BRYAN",
      "email": "kobryan@fmi.com",
      "jobTitle": "Executive Services Ld",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088740.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000086485",
      "supervisorName": "MICHELE GANNON"
    },
    {
      "employeeID": "0060028902",
      "firstName": "Steven",
      "lastName": "O'Conner",
      "displayName": "STEVEN O'CONNER",
      "email": "soconner@fmi.com",
      "jobTitle": "Contractor Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060028902.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000096009",
      "supervisorName": "SUSAN BACHLER"
    },
    {
      "employeeID": "0060078540",
      "firstName": "Jacquelyn",
      "lastName": "O'Connor",
      "displayName": "JACQUELYN O'CONNOR",
      "email": "joconnor@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078540.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060021108",
      "firstName": "HECTOR",
      "lastName": "OCHOA",
      "displayName": "HECTOR OCHOA",
      "email": "hochoapr@fmi.com",
      "jobTitle": "Sr Process Automation Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060021108.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0060028905",
      "supervisorName": "ARI SUPOMO"
    },
    {
      "employeeID": "0060031212",
      "firstName": "Tomoe",
      "lastName": "Odamura",
      "displayName": "TOMOE ODAMURA",
      "email": "todamura@fmi.com",
      "jobTitle": "Mgr Accounting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060031212.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0060031208",
      "supervisorName": "KEIKO NAKANO"
    },
    {
      "employeeID": "0060064689",
      "firstName": "Charles",
      "lastName": "Oddo",
      "displayName": "CHARLES ODDO",
      "email": "coddo@fmi.com",
      "jobTitle": "Mgr Transportation",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060064689.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060057313",
      "supervisorName": "AARON FRIEDMAN"
    },
    {
      "employeeID": "0060088709",
      "firstName": "Colin",
      "lastName": "Oddoye",
      "displayName": "COLIN ODDOYE",
      "email": "coddoye@fmi.com",
      "jobTitle": "GSC Lead",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088709.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055242",
      "supervisorName": "BRIAN ETHERIDGE"
    },
    {
      "employeeID": "0000081075",
      "firstName": "Bertrand",
      "lastName": "Odinet",
      "displayName": "BERT ODINET",
      "email": "bodinet@fmi.com",
      "jobTitle": "VP, CIO & Chief Innovation Officer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000081075.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051953",
      "supervisorName": "KATHLEEN QUIRK"
    },
    {
      "employeeID": "0000049664",
      "firstName": "Monica",
      "lastName": "Ogas",
      "displayName": "MONICA OGAS",
      "email": "mogas@fmi.com",
      "jobTitle": "Mgr Strategic Commodity",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000049664.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054547",
      "supervisorName": "CYNTHIA BARBER"
    },
    {
      "employeeID": "0000018134",
      "firstName": "Stephen",
      "lastName": "Ogas",
      "displayName": "STEPHEN OGAS",
      "email": "sogas@fmi.com",
      "jobTitle": "Mgr Project Materials",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000018134.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030738",
      "supervisorName": "MIKE BREWER"
    },
    {
      "employeeID": "0000018521",
      "firstName": "Doreen",
      "lastName": "Olea",
      "displayName": "DOREEN OLEA",
      "email": "dolea@fmi.com",
      "jobTitle": "Inventory Controller",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000018521.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060038782",
      "supervisorName": "RAY HERNANDEZ"
    },
    {
      "employeeID": "0060078475",
      "firstName": "Cesar",
      "lastName": "Olivares",
      "displayName": "CESAR OLIVARES",
      "email": "colivare3@fmi.com",
      "jobTitle": "BI Developer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078475.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0000014184",
      "firstName": "Joshua",
      "lastName": "Olmsted",
      "displayName": "JOSH OLMSTED",
      "email": "jolmsted@fmi.com",
      "jobTitle": "SVP Copper Operations",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000014184.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017690",
      "supervisorName": "RED CONGER"
    },
    {
      "employeeID": "0061002695",
      "firstName": "Emily",
      "lastName": "Olson",
      "displayName": "EMILY OLSON",
      "email": "eolson@fmi.com",
      "jobTitle": "VP Global Strategic Relations",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002695.jpg",
      "companyDescription": "International Administrat",
      "supervisorID": "0000051953",
      "supervisorName": "KATHLEEN QUIRK"
    },
    {
      "employeeID": "0000016296",
      "firstName": "Timothy",
      "lastName": "Olson",
      "displayName": "TIM OLSON",
      "email": "tolson@fmi.com",
      "jobTitle": "Controller Division",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000016296.jpg",
      "companyDescription": "Climax Moly Co Admin",
      "supervisorID": "0000014260",
      "supervisorName": "MIKE KENDRICK"
    },
    {
      "employeeID": "0000089233",
      "firstName": "Andrew",
      "lastName": "Omer",
      "displayName": "ANDREW OMER",
      "email": "aomer@fmi.com",
      "jobTitle": "Sr Mgr Financial Reporting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000089233.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054218",
      "supervisorName": "PAT PREJEAN"
    },
    {
      "employeeID": "0060064728",
      "firstName": "Lexiann",
      "lastName": "Ordish",
      "displayName": "LEXIANN ORDISH",
      "email": "lordish@fmi.com",
      "jobTitle": "Staffing Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060064728.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000093345",
      "supervisorName": "MELANIE PEIRE"
    },
    {
      "employeeID": "0060079985",
      "firstName": "Josh",
      "lastName": "Ornelas",
      "displayName": "JOSH ORNELAS",
      "email": "jornelas1@fmi.com",
      "jobTitle": "SOUTHWEST IRRIGATION LLC",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079985.JPG",
      "companyDescription": "Morenci Mining JV",
      "supervisorID": "0000056761",
      "supervisorName": "WILLIAM WEARNE"
    },
    {
      "employeeID": "0060030495",
      "firstName": "Ashley",
      "lastName": "Ortega",
      "displayName": "ASHLEY ORTEGA",
      "email": "aortega1@fmi.com",
      "jobTitle": "Sr Financial Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060030495.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051814",
      "supervisorName": "JEFF JOHNSON"
    },
    {
      "employeeID": "0008051458",
      "firstName": "Collett",
      "lastName": "Ortiz",
      "displayName": "COLLETT ORTIZ",
      "email": "cortiz1@fmi.com",
      "jobTitle": "Leave Management Representative",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0008051458.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060029856",
      "supervisorName": "LORIE FORBIS"
    },
    {
      "employeeID": "0060087585",
      "firstName": "Divine",
      "lastName": "Oshideko",
      "displayName": "DIVINE OSHIDEKO",
      "email": "doshidek@fmi.com",
      "jobTitle": "Agile Coach Contractor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087585.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060030270",
      "supervisorName": "KRISTA GOYARTS"
    },
    {
      "employeeID": "0061002459",
      "firstName": "Ronald",
      "lastName": "Ostrom",
      "displayName": "RON OSTROM",
      "email": "rostrom@fmi.com",
      "jobTitle": "Sr Immigration Specialist",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002459.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056973",
      "supervisorName": "TONY CARROLL"
    },
    {
      "employeeID": "0060086700",
      "firstName": "Michael",
      "lastName": "Otto",
      "displayName": "MICHAEL OTTO",
      "email": "motto@fmi.com",
      "jobTitle": "SAP SEG SME",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086700.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068782",
      "supervisorName": "REMI BRANDEBOURG"
    },
    {
      "employeeID": "0000090003",
      "firstName": "Jacob",
      "lastName": "Oubre",
      "displayName": "JACOB OUBRE",
      "email": "joubre@fmi.com",
      "jobTitle": "Security Guard",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090003.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000012035",
      "supervisorName": "RONNIE LODRIGUSS"
    },
    {
      "employeeID": "0000095201",
      "firstName": "Christine",
      "lastName": "Oxford",
      "displayName": "CHRISTINE OXFORD",
      "email": "coxford@fmi.com",
      "jobTitle": "Mgr Accounting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000095201.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051252",
      "supervisorName": "GRANT WELKER"
    },
    {
      "employeeID": "0060081240",
      "firstName": "Lucienne",
      "lastName": "Oyer",
      "displayName": "LUCIENNE OYER",
      "email": "loyer@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081240.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060077912",
      "firstName": "Sean",
      "lastName": "Pabbruwee",
      "displayName": "SEAN PABBRUWEE",
      "email": "spabbruw@fmi.com",
      "jobTitle": "GIS Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077912.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000064031",
      "supervisorName": "CHRIS FRANKS"
    },
    {
      "employeeID": "0000019403",
      "firstName": "Natacha",
      "lastName": "Page",
      "displayName": "NATACHA PAGE",
      "email": "npage@fmi.com",
      "jobTitle": "Mgr HR Systems",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000019403.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000016919",
      "supervisorName": "SCOTT KIEL"
    },
    {
      "employeeID": "0060029285",
      "firstName": "Darija",
      "lastName": "Pajic",
      "displayName": "DARIJA PAJIC",
      "email": "dpajic@fmi.com",
      "jobTitle": "Mgr Project Development",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060029285.JPG",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000010948",
      "supervisorName": "MAC CANBY"
    },
    {
      "employeeID": "0001102194",
      "firstName": "Miguel",
      "lastName": "Palacios",
      "displayName": "MIGUEL PALACIOS",
      "email": "mpalacio@fmi.com",
      "jobTitle": "VP North America Smelting and Refining",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0001102194.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000014184",
      "supervisorName": "JOSH OLMSTED"
    },
    {
      "employeeID": "0060081682",
      "firstName": "Mythri",
      "lastName": "Palagani",
      "displayName": "MYTHRI PALAGANI",
      "email": "mpalagan@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081682.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000880808",
      "firstName": "Mauly",
      "lastName": "Palembo",
      "displayName": "MAULY PALEMBO",
      "email": "mpalembo@fmi.com",
      "jobTitle": "Sr Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000880808.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000252953",
      "supervisorName": "MADE MAHAYASA"
    },
    {
      "employeeID": "0060035483",
      "firstName": "Daniel",
      "lastName": "Paling",
      "displayName": "DANIEL PALING",
      "email": "dpaling@fmi.com",
      "jobTitle": "Dir GSC Purchasing",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060035483.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000011629",
      "supervisorName": "DANNY HUGHES"
    },
    {
      "employeeID": "0000017728",
      "firstName": "Steve",
      "lastName": "Palmer",
      "displayName": "STEVE PALMER",
      "email": "spalmer@fmi.com",
      "jobTitle": "General Mgr Administration - Exploration",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000017728.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000010948",
      "supervisorName": "MAC CANBY"
    },
    {
      "employeeID": "0060077585",
      "firstName": "Ahadya",
      "lastName": "Pancasakti",
      "displayName": "AHADYA PANCASAKTI",
      "email": "apancasa@fmi.com",
      "jobTitle": "Metallurgical Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077585.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0060088795",
      "firstName": "Hirendra",
      "lastName": "Pandey",
      "displayName": "HIRENDRA PANDEY",
      "email": "hpandey@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088795.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060074243",
      "firstName": "Ryan",
      "lastName": "Panyard",
      "displayName": "RYAN PANYARD",
      "email": "rpanyard@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060074243.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060088246",
      "firstName": "Thanasis",
      "lastName": "Papakiriakos",
      "displayName": "THANASIS PAPAKIRIAKOS",
      "email": "tpapakir@fmi.com",
      "jobTitle": "TERRA NOVA TECHNOLOGIES INC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088246.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0060033410",
      "firstName": "Brent",
      "lastName": "Papek",
      "displayName": "BRENT PAPEK",
      "email": "bpapek@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060033410.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000020106",
      "firstName": "Debbie",
      "lastName": "Pappas",
      "displayName": "DEBBIE PAPPAS",
      "email": "dpappas@fmi.com",
      "jobTitle": "Sr International HR Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000020106.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000056973",
      "supervisorName": "TONY CARROLL"
    },
    {
      "employeeID": "0060087844",
      "firstName": "Ronald",
      "lastName": "Parent",
      "displayName": "RONALD PARENT",
      "email": "rparent@fmi.com",
      "jobTitle": "QA/QC Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087844.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0060077703",
      "firstName": "Nirav",
      "lastName": "Parikh",
      "displayName": "NIRAV PARIKH",
      "email": "nparikh@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077703.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089905",
      "supervisorName": "SCOTT STATHAM"
    },
    {
      "employeeID": "0060026099",
      "firstName": "Parjianto",
      "lastName": "Parjianto",
      "displayName": "PARJIANTO",
      "email": "pparjian@fmi.com",
      "jobTitle": "Scheduler/Planner",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060026099.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060081232",
      "firstName": "Angela",
      "lastName": "Park",
      "displayName": "ANGELA PARK",
      "email": "apark@fmi.com",
      "jobTitle": " Data Migration Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081232.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065010",
      "supervisorName": "JAMES PATTERSON"
    },
    {
      "employeeID": "0000091848",
      "firstName": "Chase",
      "lastName": "Parker",
      "displayName": "CHASE PARKER",
      "email": "cparker@fmi.com",
      "jobTitle": "Mgr Inventory",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091848.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056982",
      "supervisorName": "BRIAN BUTTRAM"
    },
    {
      "employeeID": "0060069612",
      "firstName": "Brian",
      "lastName": "Parkey",
      "displayName": "BRIAN PARKEY",
      "email": "bparkey@fmi.com",
      "jobTitle": "Mgr Air Quailty",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060069612.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000016264",
      "supervisorName": "JERRY ROOSE"
    },
    {
      "employeeID": "0060031022",
      "firstName": "Sourabh",
      "lastName": "Parmar",
      "displayName": "SOURABH PARMAR",
      "email": "sparmar@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060031022.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000023093",
      "firstName": "Nancy",
      "lastName": "Parmelee",
      "displayName": "NANCY PARMELEE",
      "email": "nparmele@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000023093.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000054298",
      "supervisorName": "PAM MASSON"
    },
    {
      "employeeID": "0060040009",
      "firstName": "Luisa",
      "lastName": "Parravicini",
      "displayName": "LUISA PARRAVICINI",
      "email": "lparravi@fmi.com",
      "jobTitle": "Project Controls Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060040009.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060081697",
      "firstName": "Christopher",
      "lastName": "Parrett",
      "displayName": "CHRISTOPHER PARRETT",
      "email": "cparrett@fmi.com",
      "jobTitle": "Data Scientist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081697.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060050437",
      "supervisorName": "MICHAEL BISCHOF"
    },
    {
      "employeeID": "0000060822",
      "firstName": "Ari",
      "lastName": "Partanen",
      "displayName": "ARI PARTANEN",
      "email": "apartane@fmi.com",
      "jobTitle": "Dir Metallurgy & Strategic Planning",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000060822.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000088202",
      "supervisorName": "TOM STUFFCO"
    },
    {
      "employeeID": "0060088203",
      "firstName": "Jaleh",
      "lastName": "Partovi",
      "displayName": "JALEH PARTOVI",
      "email": "jpartovi@fmi.com",
      "jobTitle": "APMO Lead",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088203.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060085886",
      "supervisorName": "LAURA DOTSETH"
    },
    {
      "employeeID": "0000092452",
      "firstName": "Michael",
      "lastName": "Pass",
      "displayName": "MICHAEL PASS",
      "email": "mpass@fmi.com",
      "jobTitle": "Deputy Chief Compl Officer & Sr Coun II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092452.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000986346",
      "supervisorName": "DOUGLAS CURRAULT"
    },
    {
      "employeeID": "0000030258",
      "firstName": "Ketan",
      "lastName": "Patel",
      "displayName": "KETAN PATEL",
      "email": "kpatel@fmi.com",
      "jobTitle": "Sr Dir Operational Systems & Site Infr",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030258.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030596",
      "supervisorName": "DAVE SOVELL"
    },
    {
      "employeeID": "0000092419",
      "firstName": "Versha",
      "lastName": "Patel",
      "displayName": "VERSHA PATEL",
      "email": "vpatel@fmi.com",
      "jobTitle": "Staffing Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092419.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060062314",
      "supervisorName": "DREW RENBERG"
    },
    {
      "employeeID": "0060071894",
      "firstName": "Dhananjay",
      "lastName": "Pathak",
      "displayName": "DHANANJAY PATHAK",
      "email": "dpathak@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060071894.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060087971",
      "firstName": "Mirza Nur",
      "lastName": "Patria",
      "displayName": "MIRZA NUR PATRIA",
      "email": "mpatria@fmi.com",
      "jobTitle": "Scheduler",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087971.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0000085658",
      "firstName": "Megan",
      "lastName": "Patron",
      "displayName": "MEGAN PATRON",
      "email": "mpatron@fmi.com",
      "jobTitle": "Dir HR Business Partner",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085658.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000054069",
      "supervisorName": "TODD GRAVER"
    },
    {
      "employeeID": "0000065010",
      "firstName": "James",
      "lastName": "Patterson",
      "displayName": "JAMES PATTERSON",
      "email": "jpatters@fmi.com",
      "jobTitle": "Dir G&A Systems & Business Arch",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000065010.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030596",
      "supervisorName": "DAVE SOVELL"
    },
    {
      "employeeID": "0000053282",
      "firstName": "Suzanne",
      "lastName": "Pattison",
      "displayName": "SUZANNE PATTISON",
      "email": "spattiso@fmi.com",
      "jobTitle": "Spv Tier I Service Center",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000053282.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028334",
      "supervisorName": "RACHAEL LAUFENBERG"
    },
    {
      "employeeID": "0000067785",
      "firstName": "Ryan",
      "lastName": "Paul",
      "displayName": "RYAN PAUL",
      "email": "rpaul@fmi.com",
      "jobTitle": "Records Inventory Technician",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067785.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030672",
      "supervisorName": "SHARON AHMED"
    },
    {
      "employeeID": "0060065001",
      "firstName": "Katie",
      "lastName": "Pavlovsky",
      "displayName": "KATIE PAVLOVSKY",
      "email": "kpavlovs@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065001.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000025855",
      "firstName": "Sheila",
      "lastName": "Pawlowski",
      "displayName": "SHEILA PAWLOWSKI",
      "email": "spawlows@fmi.com",
      "jobTitle": "Sr Process Ldr Supply Chain",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000025855.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000019570",
      "supervisorName": "KIM JOHNSON"
    },
    {
      "employeeID": "0060062483",
      "firstName": "Darla",
      "lastName": "Payne",
      "displayName": "DARLA PAYNE",
      "email": "dpayne@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060062483.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060073853",
      "supervisorName": "GRETCHEN DONAHUE"
    },
    {
      "employeeID": "0060062482",
      "firstName": "Michelle",
      "lastName": "Payne",
      "displayName": "MICHELLE PAYNE",
      "email": "mpayne@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060062482.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060073853",
      "supervisorName": "GRETCHEN DONAHUE"
    },
    {
      "employeeID": "0000025763",
      "firstName": "George",
      "lastName": "Pearson",
      "displayName": "GEORGE PEARSON",
      "email": "gpearson@fmi.com",
      "jobTitle": "Mgr Sales II Molybdenum",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000025763.jpg",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000052931",
      "supervisorName": "BARBARA BUCK"
    },
    {
      "employeeID": "0060077114",
      "firstName": "Ravikiran",
      "lastName": "Peddakotla",
      "displayName": "RAVIKIRAN PEDDAKOTLA",
      "email": "rpeddako@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077114.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0061000536",
      "firstName": "Brandon",
      "lastName": "Pedersen",
      "displayName": "BRANDON PEDERSEN",
      "email": "bpederse@fmi.com",
      "jobTitle": "IT Security Analyst I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000536.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060073485",
      "supervisorName": "NEREO LORESTO"
    },
    {
      "employeeID": "0000060753",
      "firstName": "Leo",
      "lastName": "Pedersen",
      "displayName": "LEO PEDERSEN",
      "email": "lpederse@fmi.com",
      "jobTitle": "Sr Construction Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000060753.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060071169",
      "firstName": "Sandra",
      "lastName": "Pedroza",
      "displayName": "SANDRA PEDROZA",
      "email": "spedroza@fmi.com",
      "jobTitle": "Invoice & F/R Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060071169.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000018775",
      "supervisorName": "MICHELLE MARTINEZ"
    },
    {
      "employeeID": "0000093345",
      "firstName": "Melanie",
      "lastName": "Peire",
      "displayName": "MELANIE PEIRE",
      "email": "mpeire@fmi.com",
      "jobTitle": "Spv Staffing",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000093345.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053133",
      "supervisorName": "VALERIE BEACH"
    },
    {
      "employeeID": "0061000167",
      "firstName": "Sebastien",
      "lastName": "Peire",
      "displayName": "SEBASTIEN PEIRE",
      "email": "speire@fmi.com",
      "jobTitle": "Cutomer Service Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000167.JPG",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0060032889",
      "supervisorName": "BRENDA MITCHELL"
    },
    {
      "employeeID": "0060023145",
      "firstName": "Peter",
      "lastName": "Pellegrino",
      "displayName": "PETER PELLEGRINO",
      "email": "ppellegr@fmi.com",
      "jobTitle": "Sr Sales Analyst Cathode",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060023145.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000026557",
      "supervisorName": "KRISTA COLEMAN"
    },
    {
      "employeeID": "0000066303",
      "firstName": "John",
      "lastName": "Percival",
      "displayName": "JOHN PERCIVAL",
      "email": "jperciva@fmi.com",
      "jobTitle": "Temporary AP Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000066303.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015474",
      "supervisorName": "STACY COSTELLO"
    },
    {
      "employeeID": "0000811112",
      "firstName": "Anton",
      "lastName": "Perdana",
      "displayName": "ANTON PERDANA",
      "email": "aperdana@fmi.com",
      "jobTitle": "MGR GDS, Res Estimation & GOI Reporting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000811112.jpg",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000086445",
      "supervisorName": "ANDREW ISSEL"
    },
    {
      "employeeID": "0060083640",
      "firstName": "Garrett",
      "lastName": "Perez",
      "displayName": "GARRETT PEREZ",
      "email": "gperez1@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083640.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060075000",
      "firstName": "Katherine",
      "lastName": "Perez",
      "displayName": "KATHERINE PEREZ",
      "email": "kperez@fmi.com",
      "jobTitle": "Recruiter I - College",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060075000.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090027",
      "supervisorName": "BETSY JOHNSON"
    },
    {
      "employeeID": "0060077124",
      "firstName": "Yvette",
      "lastName": "Perez",
      "displayName": "YVETTE PEREZ",
      "email": "yperez1@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077124.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060089098",
      "firstName": "Chandler",
      "lastName": "Perry",
      "displayName": "CHANDLER PERRY",
      "email": "cperry2@fmi.com",
      "jobTitle": "Data Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089098.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060047531",
      "supervisorName": "TRAVIS GADDIE"
    },
    {
      "employeeID": "0060068803",
      "firstName": "Danielle",
      "lastName": "Perry",
      "displayName": "DANIELLE PERRY",
      "email": "dperry1@fmi.com",
      "jobTitle": "Ricoh Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060068803.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057338",
      "supervisorName": "KEVIN TRASENTE"
    },
    {
      "employeeID": "0060088241",
      "firstName": "Tim",
      "lastName": "Perry",
      "displayName": "TIM PERRY",
      "email": "tperry3@fmi.com",
      "jobTitle": "TERRA NOVA TECHNOLOGIES INC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088241.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0060087894",
      "firstName": "Elyana",
      "lastName": "Peru",
      "displayName": "ELYANA PERU",
      "email": "eperu4@fmi.com",
      "jobTitle": "Contract Staffing Coordinator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087894.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053133",
      "supervisorName": "VALERIE BEACH"
    },
    {
      "employeeID": "0060025341",
      "firstName": "Douglas",
      "lastName": "Peterman",
      "displayName": "DOUG PETERMAN",
      "email": "dpeterma@fmi.com",
      "jobTitle": "Systems Architect II SharePoint",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060025341.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055242",
      "supervisorName": "BRIAN ETHERIDGE"
    },
    {
      "employeeID": "0000014263",
      "firstName": "Karen",
      "lastName": "Peters",
      "displayName": "KAREN PETERS",
      "email": "kpeters@fmi.com",
      "jobTitle": "Executive Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000014263.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051953",
      "supervisorName": "KATHLEEN QUIRK"
    },
    {
      "employeeID": "0060063118",
      "firstName": "Tony",
      "lastName": "Peterson",
      "displayName": "TONY PETERSON",
      "email": "tpeterso4@fmi.com",
      "jobTitle": "Design Thinking Architect",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060063118.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000011491",
      "supervisorName": "JEFF CHAMP"
    },
    {
      "employeeID": "0060033021",
      "firstName": "Iva",
      "lastName": "Petkova",
      "displayName": "IVA PETKOVA",
      "email": "ipetkova@fmi.com",
      "jobTitle": "Mgr Admin and Liaison",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060033021.JPG",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0060064090",
      "supervisorName": "VLAD BUCHYNSKYY"
    },
    {
      "employeeID": "0060088478",
      "firstName": "Haley",
      "lastName": "Pettingill",
      "displayName": "HALEY PETTINGILL",
      "email": "hpetting@fmi.com",
      "jobTitle": "Procurement Admin",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088478.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000013819",
      "supervisorName": "RENE REYES"
    },
    {
      "employeeID": "0060083035",
      "firstName": "Michelle",
      "lastName": "Pettingill",
      "displayName": "MICHELLE PETTINGILL",
      "email": "mpetting@fmi.com",
      "jobTitle": "Procurement Lead",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083035.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000013819",
      "supervisorName": "RENE REYES"
    },
    {
      "employeeID": "0060059344",
      "firstName": "Craig",
      "lastName": "Pezak",
      "displayName": "CRAIG PEZAK",
      "email": "cpezak@fmi.com",
      "jobTitle": "Engineering Specialist I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060059344.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060029045",
      "supervisorName": "BRANT WHITING"
    },
    {
      "employeeID": "0060088244",
      "firstName": "Nicolas",
      "lastName": "Pfenninger",
      "displayName": "NICOLAS PFENNINGER",
      "email": "npfennin@fmi.com",
      "jobTitle": "TERRA NOVA TECHNOLOGIES INC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088244.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0000051043",
      "firstName": "Jessica",
      "lastName": "Phillipo",
      "displayName": "JESSICA PHILLIPO",
      "email": "jphillip@fmi.com",
      "jobTitle": "Mgr Accounting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051043.jpg",
      "companyDescription": "Climax Moly Co Admin",
      "supervisorID": "0000016296",
      "supervisorName": "TIM OLSON"
    },
    {
      "employeeID": "0060071964",
      "firstName": "Joshua",
      "lastName": "Phillips",
      "displayName": "JOSHUA PHILLIPS",
      "email": "jphillip9@fmi.com",
      "jobTitle": "Contract Sr Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060071964.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000017473",
      "supervisorName": "GREG COFFIN"
    },
    {
      "employeeID": "0060065586",
      "firstName": "Giuseppe Gabriel",
      "lastName": "Piacentini Izquierdo",
      "displayName": "GIUSEPPE GABRIEL PIACENTINI IZQUIERDO",
      "email": "gpiacent@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065586.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060065452",
      "firstName": "Jeffery",
      "lastName": "Pick",
      "displayName": "JEFF PICK",
      "email": "jpick@fmi.com",
      "jobTitle": "Mgr Technology Security Governance/Comm",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065452.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056399",
      "supervisorName": "LAUREN FRANK"
    },
    {
      "employeeID": "0061003756",
      "firstName": "William",
      "lastName": "Pickren",
      "displayName": "WILLIAM PICKREN",
      "email": "wpickren@fmi.com",
      "jobTitle": "Temporary Non-Summer Intern",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003756.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000096525",
      "supervisorName": "SUBBA VENKATESWARAN"
    },
    {
      "employeeID": "0061003752",
      "firstName": "David",
      "lastName": "Pierson",
      "displayName": "DAVID PIERSON",
      "email": "dpierson@fmi.com",
      "jobTitle": "Sr Network Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003752.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056186",
      "supervisorName": "KRAIG FORBREGD"
    },
    {
      "employeeID": "0000086665",
      "firstName": "Brian",
      "lastName": "Piglia",
      "displayName": "BRIAN PIGLIA",
      "email": "bpiglia@fmi.com",
      "jobTitle": "Accounts Payable Spv",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086665.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051549",
      "supervisorName": "MELISSA WALTER"
    },
    {
      "employeeID": "0060059032",
      "firstName": "Robert",
      "lastName": "Pilling-Riefkohl",
      "displayName": "ROBERT PILLING-RIEFKOHL",
      "email": "rpilling@fmi.com",
      "jobTitle": "Recruiter II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060059032.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060062314",
      "supervisorName": "DREW RENBERG"
    },
    {
      "employeeID": "0060034628",
      "firstName": "Gabrielle",
      "lastName": "Pina",
      "displayName": "GABRIELLE PINA",
      "email": "gpina1@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060034628.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060076535",
      "firstName": "Satria",
      "lastName": "Pinandita",
      "displayName": "SATRIA PINANDITA",
      "email": "spinandi@fmi.com",
      "jobTitle": "Safety Rep",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076535.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060040629",
      "firstName": "Kevin",
      "lastName": "Pinney",
      "displayName": "KEVIN PINNEY",
      "email": "kpinney@fmi.com",
      "jobTitle": "Designer/Drafter UG",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060040629.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060076714",
      "supervisorName": "FANUEL BANDA"
    },
    {
      "employeeID": "0000095252",
      "firstName": "Elisha",
      "lastName": "Pipps",
      "displayName": "ELISHA PIPPS",
      "email": "epipps@fmi.com",
      "jobTitle": "IT Project Mgr I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000095252.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062697",
      "supervisorName": "ANDREW GLUVNA"
    },
    {
      "employeeID": "0060042742",
      "firstName": "Lona",
      "lastName": "Pirtle-Oliver",
      "displayName": "LONA PIRTLE-OLIVER",
      "email": "lpirtleo@fmi.com",
      "jobTitle": "Executive Secretary",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060042742.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000011657",
      "supervisorName": "DON WHITMIRE"
    },
    {
      "employeeID": "0060028840",
      "firstName": "Timothy",
      "lastName": "Plona",
      "displayName": "TIMOTHY PLONA",
      "email": "tplona@fmi.com",
      "jobTitle": "Bus Solution Architect III Cyber Sec Gov",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060028840.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060065452",
      "supervisorName": "JEFF PICK"
    },
    {
      "employeeID": "0060086431",
      "firstName": "Ina",
      "lastName": "Poecher",
      "displayName": "INA POECHER",
      "email": "ipoecher@fmi.com",
      "jobTitle": "Data Scientist",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086431.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057353",
      "supervisorName": "ROBERT CATRON"
    },
    {
      "employeeID": "0060062606",
      "firstName": "David",
      "lastName": "Polete",
      "displayName": "DAVID POLETE",
      "email": "dpolete@fmi.com",
      "jobTitle": "Sr Contract Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060062606.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0061000316",
      "supervisorName": "JENNIFER HOBBS"
    },
    {
      "employeeID": "0060060334",
      "firstName": "Clarice",
      "lastName": "Pollard",
      "displayName": "CLARICE POLLARD",
      "email": "cpollard@fmi.com",
      "jobTitle": "Sales Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060060334.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000026557",
      "supervisorName": "KRISTA COLEMAN"
    },
    {
      "employeeID": "0000066177",
      "firstName": "Lawrence",
      "lastName": "Pontiff",
      "displayName": "LARRY PONTIFF",
      "email": "lpontiff@fmi.com",
      "jobTitle": "Spv Security Guard",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000066177.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085369",
      "supervisorName": "RICHARD ADKERSON"
    },
    {
      "employeeID": "0060072859",
      "firstName": "Matthew",
      "lastName": "Ponzi",
      "displayName": "MATTHEW PONZI",
      "email": "mponzi@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060072859.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060080977",
      "firstName": "Derek",
      "lastName": "Poon",
      "displayName": "DEREK POON",
      "email": "dpoon@fmi.com",
      "jobTitle": "SF Clone & Test Business Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080977.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068782",
      "supervisorName": "REMI BRANDEBOURG"
    },
    {
      "employeeID": "0000067391",
      "firstName": "Nelly",
      "lastName": "Popova",
      "displayName": "NELLY POPOVA",
      "email": "npopova@fmi.com",
      "jobTitle": "GIS Mgr",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067391.JPG",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0060064090",
      "supervisorName": "VLAD BUCHYNSKYY"
    },
    {
      "employeeID": "0000030234",
      "firstName": "Allison",
      "lastName": "Porter",
      "displayName": "ALLISON PORTER",
      "email": "aporter@fmi.com",
      "jobTitle": "Executive Secretary",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030234.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088202",
      "supervisorName": "TOM STUFFCO"
    },
    {
      "employeeID": "0000060991",
      "firstName": "Jason",
      "lastName": "Posey",
      "displayName": "JASON POSEY",
      "email": "jposey@fmi.com",
      "jobTitle": "Benefits Specialist I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000060991.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000013956",
      "supervisorName": "LISA JENSEN"
    },
    {
      "employeeID": "0061002187",
      "firstName": "James",
      "lastName": "Posser",
      "displayName": "JIM POSSER",
      "email": "jposser1@fmi.com",
      "jobTitle": "Ld Health & Safety Analyst",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002187.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057092",
      "supervisorName": "ROBERT MCLAIN"
    },
    {
      "employeeID": "0000055825",
      "firstName": "James",
      "lastName": "Post",
      "displayName": "JAMES POST",
      "email": "jpost@fmi.com",
      "jobTitle": "Sr Commercial Business Systems Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000055825.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000050159",
      "supervisorName": "RICH SUTKOWI"
    },
    {
      "employeeID": "0060063905",
      "firstName": "Srinivas",
      "lastName": "Pothagani",
      "displayName": "SRINIVAS POTHAGANI",
      "email": "spothaga@fmi.com",
      "jobTitle": "Hadoop Developer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060063905.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0061001927",
      "firstName": "Bakhtiar",
      "lastName": "Pour Ahmad",
      "displayName": "SHERKO POUR AHMAD",
      "email": "spourahm@fmi.com",
      "jobTitle": "Sr Process Automation Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001927.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0061000231",
      "supervisorName": "ROB ZWICK"
    },
    {
      "employeeID": "0061002592",
      "firstName": "Brynly",
      "lastName": "Powell",
      "displayName": "BRYNLY POWELL",
      "email": "bpowell2@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002592.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0000030543",
      "firstName": "Maria",
      "lastName": "Pozdol",
      "displayName": "MARIA POZDOL",
      "email": "mpozdol@fmi.com",
      "jobTitle": "Executive Secretary",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030543.jpg",
      "companyDescription": "Climax Moly Co Admin",
      "supervisorID": "0000014260",
      "supervisorName": "MIKE KENDRICK"
    },
    {
      "employeeID": "0060081016",
      "firstName": "Aishwarya",
      "lastName": "Pradhan",
      "displayName": "AISHWARYA PRADHAN",
      "email": "apradhan2@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081016.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000085640",
      "firstName": "Kenneth",
      "lastName": "Prados",
      "displayName": "KENNETH PRADOS",
      "email": "kprados@fmi.com",
      "jobTitle": "Sr Contracts Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085640.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000087007",
      "supervisorName": "JUSTIN TRICK"
    },
    {
      "employeeID": "0061000173",
      "firstName": "Kenneth",
      "lastName": "Prados",
      "displayName": "KENNETH PRADOS",
      "email": "kprados1@fmi.com",
      "jobTitle": "Sr Contracts Administrator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061000173.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0061000174",
      "supervisorName": "JUSTIN TRICK"
    },
    {
      "employeeID": "0060087338",
      "firstName": "Victoria",
      "lastName": "Prather",
      "displayName": "VICTORIA PRATHER",
      "email": "vprather@fmi.com",
      "jobTitle": "CNT - Transformation Communications",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087338.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000050020",
      "supervisorName": "RUTHANNE VAN DYKE"
    },
    {
      "employeeID": "0000085330",
      "firstName": "Aimee",
      "lastName": "Praytor",
      "displayName": "AIMEE PRAYTOR",
      "email": "apraytor@fmi.com",
      "jobTitle": "Mgr Payroll",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085330.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000056399",
      "supervisorName": "LAUREN FRANK"
    },
    {
      "employeeID": "0000054218",
      "firstName": "Patrick",
      "lastName": "Prejean",
      "displayName": "PAT PREJEAN",
      "email": "pprejean@fmi.com",
      "jobTitle": "Asst Controller Financial Reporting FCX",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054218.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000011657",
      "supervisorName": "DON WHITMIRE"
    },
    {
      "employeeID": "0060082453",
      "firstName": "Veronica",
      "lastName": "Prentice",
      "displayName": "VERONICA PRENTICE",
      "email": "vprentic@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060082453.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060023431",
      "firstName": "LaMaunt",
      "lastName": "Prescott",
      "displayName": "LAMAUNT PRESCOTT",
      "email": "lprescot@fmi.com",
      "jobTitle": "Sr Accounting Clerk",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060023431.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015474",
      "supervisorName": "STACY COSTELLO"
    },
    {
      "employeeID": "0060078036",
      "firstName": "Cecilia",
      "lastName": "Prest",
      "displayName": "CECILIA PREST",
      "email": "cprest@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078036.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056982",
      "supervisorName": "BRIAN BUTTRAM"
    },
    {
      "employeeID": "0000024467",
      "firstName": "John",
      "lastName": "Prest",
      "displayName": "DAVE PREST",
      "email": "dprest@fmi.com",
      "jobTitle": "Dir GSC Business Process",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000024467.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000011629",
      "supervisorName": "DANNY HUGHES"
    },
    {
      "employeeID": "0000090943",
      "firstName": "Steven",
      "lastName": "Pretlove",
      "displayName": "STEVEN PRETLOVE",
      "email": "spretlov@fmi.com",
      "jobTitle": "Document Control Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090943.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000011812",
      "supervisorName": "LOUIS KIEFFER"
    },
    {
      "employeeID": "0000066180",
      "firstName": "Terri",
      "lastName": "Pretlove",
      "displayName": "TERRI PRETLOVE",
      "email": "tpretlov@fmi.com",
      "jobTitle": "Executive Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000066180.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085369",
      "supervisorName": "RICHARD ADKERSON"
    },
    {
      "employeeID": "0060079730",
      "firstName": "Siswanto",
      "lastName": "Pribadi",
      "displayName": "SISWANTO PRIBADI",
      "email": "spribadi@fmi.com",
      "jobTitle": "Quamtity Surveyor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079730.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060062853",
      "firstName": "Maria",
      "lastName": "Priester",
      "displayName": "MARIA PRIESTER",
      "email": "mprieste@fmi.com",
      "jobTitle": "Contract Admin & Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060062853.jpg",
      "companyDescription": "Climax Moly Co Admin",
      "supervisorID": "0000052931",
      "supervisorName": "BARBARA BUCK"
    },
    {
      "employeeID": "0060088245",
      "firstName": "Kylie",
      "lastName": "Privett",
      "displayName": "KYLIE PRIVETT",
      "email": "kprivett@fmi.com",
      "jobTitle": "TERRA NOVA TECHNOLOGIES INC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088245.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0000054062",
      "firstName": "Gregory",
      "lastName": "Probst",
      "displayName": "GREG PROBST",
      "email": "gprobst@fmi.com",
      "jobTitle": "Dir Public Affairs",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054062.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000015409",
      "supervisorName": "LINDA HAYES"
    },
    {
      "employeeID": "0060083528",
      "firstName": "Anyssa",
      "lastName": "Provencio",
      "displayName": "ANYSSA PROVENCIO",
      "email": "aprovenc5@fmi.com",
      "jobTitle": "HR Service Center Rep",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083528.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053282",
      "supervisorName": "SUZANNE PATTISON"
    },
    {
      "employeeID": "0060067322",
      "firstName": "Mary Ann",
      "lastName": "Provencio",
      "displayName": "MARY ANN PROVENCIO",
      "email": "mprovenc@fmi.com",
      "jobTitle": "Sr HR Generalist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067322.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000058072",
      "supervisorName": "CHERYL SHIMKO"
    },
    {
      "employeeID": "0000060923",
      "firstName": "Eric",
      "lastName": "Pulliam",
      "displayName": "ERIC PULLIAM",
      "email": "epulliam@fmi.com",
      "jobTitle": "Security Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000060923.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055243",
      "supervisorName": "JOCHEN GLISS"
    },
    {
      "employeeID": "0060086280",
      "firstName": "Eka",
      "lastName": "Putra",
      "displayName": "EKA PUTRA",
      "email": "eputra4@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086280.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060088548",
      "firstName": "Fajar Rizwandha",
      "lastName": "Putra",
      "displayName": "FAJAR RIZWANDHA PUTRA",
      "email": "fputra10@fmi.com",
      "jobTitle": "Construction Assistant",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088548.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060086690",
      "firstName": "Joleen",
      "lastName": "Pyeatt",
      "displayName": "JOLEEN PYEATT",
      "email": "jpyeatt@fmi.com",
      "jobTitle": "Recruiter I",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086690.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060062219",
      "supervisorName": "LORRAINE MIDDLEBROOK"
    },
    {
      "employeeID": "0060076485",
      "firstName": "Shenglan",
      "lastName": "Qiao",
      "displayName": "SHENGLAN QIAO",
      "email": "sqiao@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076485.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0000053300",
      "firstName": "Michelle",
      "lastName": "Quintanilla",
      "displayName": "MICHELLE QUINTANILLA",
      "email": "mquintan@fmi.com",
      "jobTitle": "VP Sales",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000053300.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000056295",
      "supervisorName": "DAVID ELLIOTT"
    },
    {
      "employeeID": "0060074728",
      "firstName": "Michelle",
      "lastName": "Quintero",
      "displayName": "MICHELLE QUINTERO",
      "email": "mquinter2@fmi.com",
      "jobTitle": "Metallurgist I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060074728.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000028530",
      "supervisorName": "DEVON WHALEN"
    },
    {
      "employeeID": "0000051953",
      "firstName": "Kathleen",
      "lastName": "Quirk",
      "displayName": "KATHLEEN QUIRK",
      "email": "kquirk@fmi.com",
      "jobTitle": "Exec VP and Chief Financial Officer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051953.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085369",
      "supervisorName": "RICHARD ADKERSON"
    },
    {
      "employeeID": "0060088785",
      "firstName": "Gulfam",
      "lastName": "Qureshi",
      "displayName": "GULFAM QURESHI",
      "email": "gqureshi@fmi.com",
      "jobTitle": "Project Director",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088785.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0060086988",
      "firstName": "Ahmed",
      "lastName": "Rafey",
      "displayName": "AHMED RAFEY",
      "email": "arafey@fmi.com",
      "jobTitle": "",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060086988.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060079599",
      "firstName": "Munshi",
      "lastName": "Rahman",
      "displayName": "MUNSHI RAHMAN",
      "email": "mrahman6@fmi.com",
      "jobTitle": "CyberArk Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079599.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060072604",
      "supervisorName": "VAUDA JORDAN"
    },
    {
      "employeeID": "0060087336",
      "firstName": "Arun",
      "lastName": "Rajagopal",
      "displayName": "ARUN RAJAGOPAL",
      "email": "arajagop@fmi.com",
      "jobTitle": "Cisco Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087336.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056186",
      "supervisorName": "KRAIG FORBREGD"
    },
    {
      "employeeID": "0060024190",
      "firstName": "Supriya",
      "lastName": "Rajagopalan",
      "displayName": "SUPRIYA RAJAGOPALAN",
      "email": "srajagop@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060024190.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000090516",
      "firstName": "Arun",
      "lastName": "Rajan",
      "displayName": "ARUN RAJAN",
      "email": "arajan@fmi.com",
      "jobTitle": "BI Developer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090516.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0060084457",
      "firstName": "Sharon",
      "lastName": "Rajan",
      "displayName": "SHARON RAJAN",
      "email": "srajan1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060084457.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060077502",
      "firstName": "Deepak",
      "lastName": "Rajendran",
      "displayName": "DEEPAK RAJENDRAN",
      "email": "drajendr@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077502.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000019708",
      "supervisorName": "AUDREY MERTES"
    },
    {
      "employeeID": "0060078583",
      "firstName": "Sunil",
      "lastName": "Rajendran",
      "displayName": "SUNIL RAJENDRAN",
      "email": "srajendr1@fmi.com",
      "jobTitle": "Master Data Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078583.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056982",
      "supervisorName": "BRIAN BUTTRAM"
    },
    {
      "employeeID": "0060029142",
      "firstName": "Charles",
      "lastName": "Rajuai",
      "displayName": "CHARLES RAJUAI",
      "email": "crajuai@fmi.com",
      "jobTitle": "Contracts Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060029142.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000092167",
      "supervisorName": "DANIEL GONZALEZ OLAYA"
    },
    {
      "employeeID": "0060043585",
      "firstName": "Benito",
      "lastName": "Ralph",
      "displayName": "BENITO RALPH",
      "email": "bralph@fmi.com",
      "jobTitle": "Global Database & Cloud Ops Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060043585.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060054327",
      "supervisorName": "ROBERT KIMBERLIN"
    },
    {
      "employeeID": "0000013980",
      "firstName": "Anand",
      "lastName": "Raman",
      "displayName": "ANAND RAMAN",
      "email": "araman@fmi.com",
      "jobTitle": "VP Technology",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000013980.jpg",
      "companyDescription": "Climax Moly Co Admin",
      "supervisorID": "0000014260",
      "supervisorName": "MIKE KENDRICK"
    },
    {
      "employeeID": "0060077073",
      "firstName": "Vijay",
      "lastName": "Ramasamy",
      "displayName": "VIJAY RAMASAMY",
      "email": "vramasam1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077073.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060087198",
      "firstName": "Aleyda",
      "lastName": "Ramirez",
      "displayName": "ALEYDA RAMIREZ",
      "email": "aramirez2@fmi.com",
      "jobTitle": "Accountant",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087198.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056616",
      "supervisorName": "RENE ABREU"
    },
    {
      "employeeID": "0060077516",
      "firstName": "Robert",
      "lastName": "Ramirez",
      "displayName": "ROBERT RAMIREZ",
      "email": "rramirez16@fmi.com",
      "jobTitle": "Southwestern Railroad Inc",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077516.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060064689",
      "supervisorName": "CHARLES ODDO"
    },
    {
      "employeeID": "0000029826",
      "firstName": "Amy",
      "lastName": "Ramsbacher",
      "displayName": "AMY RAMSBACHER",
      "email": "aramsbac@fmi.com",
      "jobTitle": "Mgr Accounting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000029826.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051252",
      "supervisorName": "GRANT WELKER"
    },
    {
      "employeeID": "0000028983",
      "firstName": "Kathryn",
      "lastName": "Ramsey",
      "displayName": "KAY RAMSEY",
      "email": "kramsey@fmi.com",
      "jobTitle": "Executive Secretary",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000028983.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017636",
      "supervisorName": "CORY STEVENS"
    },
    {
      "employeeID": "0060083727",
      "firstName": "Kanchana",
      "lastName": "Ramu",
      "displayName": "KANCHANA RAMU",
      "email": "kramu@fmi.com",
      "jobTitle": "Cataloger Master Data",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083727.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000019708",
      "supervisorName": "AUDREY MERTES"
    },
    {
      "employeeID": "0060049744",
      "firstName": "Chitra Sabapathy",
      "lastName": "Ranganathan",
      "displayName": "CHITRA SABAPATHY RANGANATHAN",
      "email": "crangana@fmi.com",
      "jobTitle": "Hadoop Developer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060049744.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0000093562",
      "firstName": "Cherie",
      "lastName": "Rankin",
      "displayName": "CHERIE RANKIN",
      "email": "crankin1@fmi.com",
      "jobTitle": "Mgr Social Impact Eval & Reporting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000093562.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030545",
      "supervisorName": "ANGIE HARMON"
    },
    {
      "employeeID": "0060077050",
      "firstName": "Humberto",
      "lastName": "Rascon",
      "displayName": "HUMBERTO RASCON",
      "email": "hrascon@fmi.com",
      "jobTitle": "GRANITE CONST CO",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077050.JPG",
      "companyDescription": "Morenci Mining JV",
      "supervisorID": "0000056761",
      "supervisorName": "WILLIAM WEARNE"
    },
    {
      "employeeID": "0000012056",
      "firstName": "Glen",
      "lastName": "Ratchford",
      "displayName": "GLEN RATCHFORD",
      "email": "gratchfo@fmi.com",
      "jobTitle": "Lodge Spv",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000012056.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051239",
      "supervisorName": "RON HOWARD"
    },
    {
      "employeeID": "0000053307",
      "firstName": "Rosemarie",
      "lastName": "Ravilet",
      "displayName": "ROSEMARIE RAVILET",
      "email": "rravilet@fmi.com",
      "jobTitle": "Global SAP Maintenance Process Ldr",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000053307.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000015472",
      "supervisorName": "CURTIS MARSHALL"
    },
    {
      "employeeID": "0060074611",
      "firstName": "Shashank",
      "lastName": "Rawat",
      "displayName": "SHASHANK RAWAT",
      "email": "srawat1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060074611.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060076542",
      "firstName": "Dave",
      "lastName": "Rawcliff",
      "displayName": "DAVE RAWCLIFF",
      "email": "drawclif1@fmi.com",
      "jobTitle": "JOY GLOBAL SURFACE MINING INC",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076542.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017064",
      "supervisorName": "LISA MEDINA"
    },
    {
      "employeeID": "0060088364",
      "firstName": "David",
      "lastName": "Raymond",
      "displayName": "DAVID RAYMOND",
      "email": "draymond@fmi.com",
      "jobTitle": "SAP Asset Manager Resource",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088364.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051441",
      "supervisorName": "PAUL WHITEAKER"
    },
    {
      "employeeID": "0060078088",
      "firstName": "Mahesh",
      "lastName": "Reddy",
      "displayName": "MAHESH REDDY",
      "email": "mreddy@fmi.com",
      "jobTitle": "Data Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078088.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060050437",
      "supervisorName": "MICHAEL BISCHOF"
    },
    {
      "employeeID": "0060065314",
      "firstName": "Rhonda",
      "lastName": "Redies",
      "displayName": "RHONDA REDIES",
      "email": "rredies@fmi.com",
      "jobTitle": "Executive Secretary",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065314.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000029601",
      "supervisorName": "DAN KRAVETS"
    },
    {
      "employeeID": "0000028532",
      "firstName": "Derek",
      "lastName": "Reed",
      "displayName": "DEREK REED",
      "email": "dreed@fmi.com",
      "jobTitle": "Project Controls Mgr I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000028532.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028343",
      "supervisorName": "ANDREA GEORGOPOULOS"
    },
    {
      "employeeID": "0000094361",
      "firstName": "Ross",
      "lastName": "Reed",
      "displayName": "ROSS REED",
      "email": "rreed@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000094361.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000011687",
      "supervisorName": "BILLY BOUDREAUX"
    },
    {
      "employeeID": "0060059550",
      "firstName": "Maria Isabel",
      "lastName": "Refulio Mancha",
      "displayName": "MARIA ISABEL REFULIO MANCHA",
      "email": "mrefulio@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060059550.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060077768",
      "firstName": "Elizabeth",
      "lastName": "Reichardt",
      "displayName": "ELIZABETH REICHARDT",
      "email": "ereichar@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077768.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060065305",
      "supervisorName": "BRENT HANSEN"
    },
    {
      "employeeID": "0000095595",
      "firstName": "Trenisha",
      "lastName": "Reid",
      "displayName": "TRENISHA REID",
      "email": "treid@fmi.com",
      "jobTitle": "Accounting Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000095595.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000018777",
      "supervisorName": "SHARON CHANEZ"
    },
    {
      "employeeID": "0060085955",
      "firstName": "Michael",
      "lastName": "Reif",
      "displayName": "MICHAEL REIF",
      "email": "mreif@fmi.com",
      "jobTitle": "Cataloger Master Data",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085955.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015989",
      "supervisorName": "KELLY BAKER"
    },
    {
      "employeeID": "0060079438",
      "firstName": "Zeno",
      "lastName": "Reinhardt",
      "displayName": "ZENO REINHARDT",
      "email": "zreinhar@fmi.com",
      "jobTitle": "Data Scientist I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079438.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060050437",
      "supervisorName": "MICHAEL BISCHOF"
    },
    {
      "employeeID": "0060062314",
      "firstName": "Drew",
      "lastName": "Renberg",
      "displayName": "DREW RENBERG",
      "email": "drenberg1@fmi.com",
      "jobTitle": "Spv Staffing",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060062314.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053133",
      "supervisorName": "VALERIE BEACH"
    },
    {
      "employeeID": "0060082197",
      "firstName": "Kelvin",
      "lastName": "Renido",
      "displayName": "KELVIN RENIDO",
      "email": "krenido@fmi.com",
      "jobTitle": "M365 Admin",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060082197.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000093642",
      "supervisorName": "RAJESH NAGABOINA"
    },
    {
      "employeeID": "0060058733",
      "firstName": "Stephanie",
      "lastName": "Reninger",
      "displayName": "STEPHANIE RENINGER",
      "email": "sreninge@fmi.com",
      "jobTitle": "Admin Assistant - Legal",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060058733.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055764",
      "supervisorName": "MICHELE HUGHES"
    },
    {
      "employeeID": "0000087068",
      "firstName": "Charlene",
      "lastName": "Reuther",
      "displayName": "CHARLENE REUTHER",
      "email": "creuther@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000087068.jpg",
      "companyDescription": "McMoRan Oil & Gas LLC",
      "supervisorID": "0000086419",
      "supervisorName": "JAQUIE ALCANTAR"
    },
    {
      "employeeID": "0060047127",
      "firstName": "Edward",
      "lastName": "Reyes",
      "displayName": "EDWARD REYES",
      "email": "ereyes@fmi.com",
      "jobTitle": "Safety Advisor - Natural Gas and Propane",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060047127.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000092101",
      "supervisorName": "JOHNNY KEY"
    },
    {
      "employeeID": "0000013819",
      "firstName": "Rene",
      "lastName": "Reyes",
      "displayName": "RENE REYES",
      "email": "rreyes5@fmi.com",
      "jobTitle": "Mgr Project Procurement Corp",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000013819.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030738",
      "supervisorName": "MIKE BREWER"
    },
    {
      "employeeID": "0060085542",
      "firstName": "Aparajitha",
      "lastName": "RF",
      "displayName": "APARAJITHA RF",
      "email": "arf@fmi.com",
      "jobTitle": "ESG Engagement Lead",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085542.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055242",
      "supervisorName": "BRIAN ETHERIDGE"
    },
    {
      "employeeID": "0000061201",
      "firstName": "Brian",
      "lastName": "Rhinehart",
      "displayName": "BRIAN RHINEHART",
      "email": "brhineha@fmi.com",
      "jobTitle": "Mgr-Expansion Projects & Systems Process",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000061201.jpg",
      "companyDescription": "International Administrat",
      "supervisorID": "0000051339",
      "supervisorName": "MIKE MCADAM"
    },
    {
      "employeeID": "0060080042",
      "firstName": "Chris",
      "lastName": "Rhodes",
      "displayName": "CHRIS RHODES",
      "email": "crhodes1@fmi.com",
      "jobTitle": "Systems Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080042.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028343",
      "supervisorName": "ANDREA GEORGOPOULOS"
    },
    {
      "employeeID": "0000052574",
      "firstName": "Jeffrey",
      "lastName": "Rice",
      "displayName": "JEFFREY RICE",
      "email": "jrice@fmi.com",
      "jobTitle": "Chief Innovation Engineering Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000052574.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000012805",
      "supervisorName": "LIA WALKER"
    },
    {
      "employeeID": "0000054994",
      "firstName": "Steven",
      "lastName": "Richardson",
      "displayName": "STEVEN RICHARDSON",
      "email": "srichard@fmi.com",
      "jobTitle": "Proj Mgr Engineering II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054994.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0000093180",
      "firstName": "Donald",
      "lastName": "Richey",
      "displayName": "DONALD RICHEY",
      "email": "drichey@fmi.com",
      "jobTitle": "Mgr Environmental Regional",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000093180.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000016264",
      "supervisorName": "JERRY ROOSE"
    },
    {
      "employeeID": "0060067033",
      "firstName": "Jeff",
      "lastName": "Rico",
      "displayName": "JEFF RICO",
      "email": "jrico@fmi.com",
      "jobTitle": "Inventory Controller",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067033.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060038782",
      "supervisorName": "RAY HERNANDEZ"
    },
    {
      "employeeID": "0060067205",
      "firstName": "Riley",
      "lastName": "Ries",
      "displayName": "RILEY RIES",
      "email": "rries@fmi.com",
      "jobTitle": "Project Controls Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067205.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028343",
      "supervisorName": "ANDREA GEORGOPOULOS"
    },
    {
      "employeeID": "0000096262",
      "firstName": "Dwanna",
      "lastName": "Riley",
      "displayName": "DWANNA RILEY",
      "email": "driley@fmi.com",
      "jobTitle": "Payroll Specialist - International",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000096262.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085326",
      "supervisorName": "STACY SCHEXNAYDRE"
    },
    {
      "employeeID": "0060078476",
      "firstName": "Julio",
      "lastName": "Rios",
      "displayName": "JULIO RIOS",
      "email": "jrios2@fmi.com",
      "jobTitle": "BI Developer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078476.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0000030186",
      "firstName": "Rob",
      "lastName": "Risley",
      "displayName": "ROB RISLEY",
      "email": "rrisley@fmi.com",
      "jobTitle": "Sr Counsel l",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030186.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000986346",
      "supervisorName": "DOUGLAS CURRAULT"
    },
    {
      "employeeID": "0060072316",
      "firstName": "David",
      "lastName": "Riza",
      "displayName": "DAVID RIZA",
      "email": "driza@fmi.com",
      "jobTitle": "MSO SOC Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060072316.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094981",
      "supervisorName": "TINA SLANKAS"
    },
    {
      "employeeID": "0060080976",
      "firstName": "Courtney",
      "lastName": "Robbins",
      "displayName": "COURTNEY ROBBINS",
      "email": "crobbins@fmi.com",
      "jobTitle": "SF Clone & Test Business Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080976.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068782",
      "supervisorName": "REMI BRANDEBOURG"
    },
    {
      "employeeID": "0060089375",
      "firstName": "Chrys",
      "lastName": "Roberts",
      "displayName": "CHRYS ROBERTS",
      "email": "croberts2@fmi.com",
      "jobTitle": "Solutions Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089375.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000019320",
      "supervisorName": "CHRIS HUGHES"
    },
    {
      "employeeID": "0000092165",
      "firstName": "Teresa",
      "lastName": "Roberts",
      "displayName": "TERESA ROBERTS",
      "email": "troberts1@fmi.com",
      "jobTitle": "Associate Paralegal",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000092165.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055764",
      "supervisorName": "MICHELE HUGHES"
    },
    {
      "employeeID": "0000067686",
      "firstName": "Carrie",
      "lastName": "Robinson",
      "displayName": "CARRIE ROBINSON",
      "email": "crobinso@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067686.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000054298",
      "supervisorName": "PAM MASSON"
    },
    {
      "employeeID": "0061000573",
      "firstName": "Michelle",
      "lastName": "Robinson",
      "displayName": "MICHELLE ROBINSON",
      "email": "mrobinso6@fmi.com",
      "jobTitle": "Sr Accountant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000573.JPG",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000067386",
      "supervisorName": "FELICITY MAUGER"
    },
    {
      "employeeID": "0000016872",
      "firstName": "Christina",
      "lastName": "Robles",
      "displayName": "CHRISTINA ROBLES",
      "email": "crobles@fmi.com",
      "jobTitle": "HRMS Analyst II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000016872.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000019403",
      "supervisorName": "NATACHA PAGE"
    },
    {
      "employeeID": "0060015942",
      "firstName": "Joana",
      "lastName": "Robles",
      "displayName": "JOANA ROBLES",
      "email": "jrobles1@fmi.com",
      "jobTitle": "Payroll Specialist - International Tax",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060015942.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085326",
      "supervisorName": "STACY SCHEXNAYDRE"
    },
    {
      "employeeID": "0060081288",
      "firstName": "John",
      "lastName": "Rodgers",
      "displayName": "JOHN RODGERS",
      "email": "jrodgers@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081288.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060088436",
      "firstName": "Alvaro",
      "lastName": "Rodriguez",
      "displayName": "ALVARO RODRIGUEZ",
      "email": "arodrigu52@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088436.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060082643",
      "firstName": "Angel",
      "lastName": "Rodriguez",
      "displayName": "ANGEL RODRIGUEZ",
      "email": null,
      "jobTitle": "ECM/SharePoint Project Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060082643.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060069816",
      "supervisorName": "PETER RYAN"
    },
    {
      "employeeID": "0060067526",
      "firstName": "Francisco",
      "lastName": "Rodriguez",
      "displayName": "FRANCISCO RODRIGUEZ",
      "email": "frodrigu12@fmi.com",
      "jobTitle": "Project Controls Engineer I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067526.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060087937",
      "firstName": "Frank",
      "lastName": "Rodriguez",
      "displayName": "FRANK RODRIGUEZ",
      "email": "frodrigu3@fmi.com",
      "jobTitle": "Material Coordinator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087937.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000013819",
      "supervisorName": "RENE REYES"
    },
    {
      "employeeID": "0060072943",
      "firstName": "Jonathan",
      "lastName": "Rodriguez",
      "displayName": "JON RODRIGUEZ",
      "email": "jrodrigu69@fmi.com",
      "jobTitle": "Cloud Security Practitioner",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060072943.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094981",
      "supervisorName": "TINA SLANKAS"
    },
    {
      "employeeID": "0061000013",
      "firstName": "Juan",
      "lastName": "Rodriguez",
      "displayName": "JUAN RODRIGUEZ",
      "email": "jrodrigu32@fmi.com",
      "jobTitle": "Inventory Controller",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000013.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060038782",
      "supervisorName": "RAY HERNANDEZ"
    },
    {
      "employeeID": "0000090725",
      "firstName": "Veronica",
      "lastName": "Rodriguez",
      "displayName": "VERONICA RODRIGUEZ",
      "email": "vrodrigu@fmi.com",
      "jobTitle": "Document Control Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090725.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060064201",
      "supervisorName": "DENNIS DRURY"
    },
    {
      "employeeID": "0060057000",
      "firstName": "Carlos Enrique",
      "lastName": "Rodriguez Sanchez",
      "displayName": "CARLOS ENRIQUE RODRIGUEZ SANCHEZ",
      "email": "crodrigu17@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060057000.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000018879",
      "firstName": "Gary",
      "lastName": "Rogers",
      "displayName": "GARY ROGERS",
      "email": "grogers@fmi.com",
      "jobTitle": "Mgr Strategic Category Managment",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000018879.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054547",
      "supervisorName": "CYNTHIA BARBER"
    },
    {
      "employeeID": "0060086232",
      "firstName": "Leland",
      "lastName": "Rogers",
      "displayName": "LELAND ROGERS",
      "email": "lrogers@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086232.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060088195",
      "firstName": "Pam",
      "lastName": "Rogers",
      "displayName": "PAM ROGERS",
      "email": "progers@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088195.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060054114",
      "firstName": "Bronwyn",
      "lastName": "Romano",
      "displayName": "BRONWYN ROMANO",
      "email": "bromano@fmi.com",
      "jobTitle": "Sr Benefits Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060054114.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000014944",
      "supervisorName": "CECE LEWIN"
    },
    {
      "employeeID": "0060022182",
      "firstName": "Alex",
      "lastName": "Romero",
      "displayName": "ALEX ROMERO",
      "email": "aromero1@fmi.com",
      "jobTitle": "Audio/Video Technician",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060022182.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060056603",
      "supervisorName": "PAUL SMIGEL"
    },
    {
      "employeeID": "0000028013",
      "firstName": "Alexander",
      "lastName": "Romero",
      "displayName": "ALEXANDER ROMERO",
      "email": "aromero2@fmi.com",
      "jobTitle": "Sr Mobility Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000028013.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060023718",
      "supervisorName": "MARK IOIA"
    },
    {
      "employeeID": "0000050915",
      "firstName": "Felicitas",
      "lastName": "Romero",
      "displayName": "FELICITAS ROMERO",
      "email": "fromero3@fmi.com",
      "jobTitle": "Inventory Controller",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000050915.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060038782",
      "supervisorName": "RAY HERNANDEZ"
    },
    {
      "employeeID": "0000026712",
      "firstName": "Bryce",
      "lastName": "Romig",
      "displayName": "BRYCE ROMIG",
      "email": "bromig@fmi.com",
      "jobTitle": "Dir Remediation Projects",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000026712.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000050843",
      "supervisorName": "BILL COBB"
    },
    {
      "employeeID": "0060043803",
      "firstName": "Brent",
      "lastName": "Ronquillo",
      "displayName": "BRENT RONQUILLO",
      "email": "bronquil@fmi.com",
      "jobTitle": "Sr Accountant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060043803.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000011687",
      "supervisorName": "BILLY BOUDREAUX"
    },
    {
      "employeeID": "0000016264",
      "firstName": "Gerald",
      "lastName": "Roose",
      "displayName": "JERRY ROOSE",
      "email": "jroose@fmi.com",
      "jobTitle": "Dir NA Environmental Ops",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000016264.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000050843",
      "supervisorName": "BILL COBB"
    },
    {
      "employeeID": "0000062617",
      "firstName": "Samuel",
      "lastName": "Root",
      "displayName": "SAMUEL ROOT",
      "email": "sroot@fmi.com",
      "jobTitle": "Sr Mgr Tax",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000062617.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000063894",
      "supervisorName": "KURT CASPER"
    },
    {
      "employeeID": "0060086703",
      "firstName": "Sylvain",
      "lastName": "Roquigny",
      "displayName": "SYLVAIN ROQUIGNY",
      "email": "sroquign@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086703.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060065567",
      "firstName": "Alberto",
      "lastName": "Rosales Duran",
      "displayName": "ALBERTO ROSALES DURAN",
      "email": "arosales1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065567.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000014086",
      "firstName": "Charles",
      "lastName": "Rose",
      "displayName": "CHUCK ROSE",
      "email": "crose1@fmi.com",
      "jobTitle": "Dir H&S FMMC & Exploration",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000014086.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000014079",
      "supervisorName": "STACY KRAMER"
    },
    {
      "employeeID": "0000030140",
      "firstName": "Christopher",
      "lastName": "Rose",
      "displayName": "CHRIS ROSE",
      "email": "crose@fmi.com",
      "jobTitle": "Dir of Occupational Health & PTFI",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030140.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000014079",
      "supervisorName": "STACY KRAMER"
    },
    {
      "employeeID": "0000023698",
      "firstName": "Patty",
      "lastName": "Rose",
      "displayName": "PATTY ROSE",
      "email": "prose@fmi.com",
      "jobTitle": "Global Payment Processing Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000023698.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051194",
      "supervisorName": "BOB BOYCE"
    },
    {
      "employeeID": "0060080981",
      "firstName": "Jordan",
      "lastName": "Rosen-Kaplan",
      "displayName": "JORDAN ROSEN-KAPLAN",
      "email": "jrosenka@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080981.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0000088244",
      "firstName": "Kelly",
      "lastName": "Roser",
      "displayName": "KELLY ROSER",
      "email": "kroser@fmi.com",
      "jobTitle": "Records Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088244.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000030672",
      "supervisorName": "SHARON AHMED"
    },
    {
      "employeeID": "0060089494",
      "firstName": "Piotr",
      "lastName": "Roszkowski",
      "displayName": "PIOTR ROSZKOWSKI",
      "email": null,
      "jobTitle": "Engagement Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089494.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060047531",
      "supervisorName": "TRAVIS GADDIE"
    },
    {
      "employeeID": "0060079781",
      "firstName": "Muhammad",
      "lastName": "Rozi",
      "displayName": "MUHAMMAD ROZI",
      "email": "mrozi2@fmi.com",
      "jobTitle": "Construction Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079781.JPG",
      "companyDescription": "Morenci Mining JV",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0000015238",
      "firstName": "Mark",
      "lastName": "Rubalcava",
      "displayName": "MARK RUBALCAVA",
      "email": "mrubalca@fmi.com",
      "jobTitle": "Construction Mgr II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000015238.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0060087667",
      "firstName": "Adam",
      "lastName": "Rudd",
      "displayName": "ADAM RUDD",
      "email": "arudd@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087667.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060079321",
      "firstName": "Jesus",
      "lastName": "Ruiz",
      "displayName": "JESUS RUIZ",
      "email": "jruiz@fmi.com",
      "jobTitle": "Southwestern Railroad Inc",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079321.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060064689",
      "supervisorName": "CHARLES ODDO"
    },
    {
      "employeeID": "0060034442",
      "firstName": "Nicolas",
      "lastName": "Ruiz Gonzalez",
      "displayName": "NICOLAS RUIZ GONZALEZ",
      "email": "nruizgon@fmi.com",
      "jobTitle": "Mgr Contracts II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060034442.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000092167",
      "supervisorName": "DANIEL GONZALEZ OLAYA"
    },
    {
      "employeeID": "0060080610",
      "firstName": "Jack",
      "lastName": "Ruli",
      "displayName": "JACK RULI",
      "email": "jruli@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080610.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000012011",
      "firstName": "Ellen",
      "lastName": "Rutherford",
      "displayName": "ELLEN RUTHERFORD",
      "email": "erutherf@fmi.com",
      "jobTitle": "Contractor Professional",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000012011.JPG",
      "companyDescription": "Freeport Mc Oil & Gas LLC",
      "supervisorID": "0000054023",
      "supervisorName": "TODD CANTRALL"
    },
    {
      "employeeID": "0060069816",
      "firstName": "Peter",
      "lastName": "Ryan",
      "displayName": "PETER RYAN",
      "email": "pryan1@fmi.com",
      "jobTitle": "Bus Info/Sys Proc Ld",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060069816.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089987",
      "supervisorName": "JIM SCHIFFER"
    },
    {
      "employeeID": "0060089120",
      "firstName": "Wayne",
      "lastName": "Ryan",
      "displayName": "WAYNE RYAN",
      "email": "wryan@fmi.com",
      "jobTitle": "HSE Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089120.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060043690",
      "firstName": "Michael",
      "lastName": "Ryback",
      "displayName": "MICHAEL RYBACK",
      "email": "mryback@fmi.com",
      "jobTitle": "Mgr Logistics & Sales Admin",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060043690.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0060017216",
      "supervisorName": "ALVARO GONZALO DIAZ"
    },
    {
      "employeeID": "0060037865",
      "firstName": "Edward",
      "lastName": "Rybinski",
      "displayName": "ED RYBINSKI",
      "email": "erybinsk@fmi.com",
      "jobTitle": "Mgr Metallurgy & Strategic Planning",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060037865.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088202",
      "supervisorName": "TOM STUFFCO"
    },
    {
      "employeeID": "0060018804",
      "firstName": "ARNALDO",
      "lastName": "SAAVEDRA",
      "displayName": "ARNALDO SAAVEDRA",
      "email": "asaavedr@fmi.com",
      "jobTitle": "Chief Geotechnical Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060018804.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000093464",
      "supervisorName": "GEORGIA LYSAY"
    },
    {
      "employeeID": "0060087954",
      "firstName": "Abhinav",
      "lastName": "Sabherwal",
      "displayName": "ABHINAV SABHERWAL",
      "email": "asabherw@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087954.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000004743",
      "firstName": "Nurhadi",
      "lastName": "Sabirin",
      "displayName": "NURHADI SABIRIN",
      "email": "nsabirin@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000004743.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000085369",
      "supervisorName": "RICHARD ADKERSON"
    },
    {
      "employeeID": "0061003123",
      "firstName": "Mandar",
      "lastName": "Sahani",
      "displayName": "MANDAR SAHANI",
      "email": "msahani@fmi.com",
      "jobTitle": "Systems Architect II - Data Modeler/Data",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003123.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0000091297",
      "firstName": "Ramesh",
      "lastName": "Saithala",
      "displayName": "RAMESH SAITHALA",
      "email": "rsaithal@fmi.com",
      "jobTitle": "Data Scientist I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091297.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060050437",
      "supervisorName": "MICHAEL BISCHOF"
    },
    {
      "employeeID": "0000091035",
      "firstName": "Sridevi",
      "lastName": "Sakthivel",
      "displayName": "SRIDEVI SAKTHIVEL",
      "email": "ssakthiv@fmi.com",
      "jobTitle": "BI Developer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091035.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0000095082",
      "firstName": "Alejandro",
      "lastName": "Salas",
      "displayName": "AL SALAS",
      "email": "asalas@fmi.com",
      "jobTitle": "HR Compliance Spec I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000095082.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053282",
      "supervisorName": "SUZANNE PATTISON"
    },
    {
      "employeeID": "0000014449",
      "firstName": "Rodrigo",
      "lastName": "Salazar",
      "displayName": "MARTIN SALAZAR",
      "email": "rsalazar1@fmi.com",
      "jobTitle": "Spt Health & Safety",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000014449.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017268",
      "supervisorName": "PATRICK BRYCE"
    },
    {
      "employeeID": "0060039347",
      "firstName": "Luis Rafael",
      "lastName": "Salgado",
      "displayName": "RAFAEL SALGADO",
      "email": "rsalgado@fmi.com",
      "jobTitle": "Sr Logistics Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060039347.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060064689",
      "supervisorName": "CHARLES ODDO"
    },
    {
      "employeeID": "0061002871",
      "firstName": "Raul",
      "lastName": "Salinas",
      "displayName": "RAUL SALINAS",
      "email": "rsalinas1@fmi.com",
      "jobTitle": "Field Operations Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002871.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000054260",
      "supervisorName": "JOHNNY HARRELL"
    },
    {
      "employeeID": "0060088247",
      "firstName": "Chester",
      "lastName": "Samuelson",
      "displayName": "CHESTER SAMUELSON",
      "email": "csamuels@fmi.com",
      "jobTitle": "TERRA NOVA TECHNOLOGIES INC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088247.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0000067481",
      "firstName": "Alberto",
      "lastName": "San Pablo",
      "displayName": "ALBERTO SAN PABLO",
      "email": "asanpabl@fmi.com",
      "jobTitle": "Financial Mgr",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067481.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000067386",
      "supervisorName": "FELICITY MAUGER"
    },
    {
      "employeeID": "0060079508",
      "firstName": "Eunice",
      "lastName": "Sanchez",
      "displayName": "EUNICE SANCHEZ",
      "email": "esanchez14@fmi.com",
      "jobTitle": "Contractor - Benefit Representative",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079508.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028334",
      "supervisorName": "RACHAEL LAUFENBERG"
    },
    {
      "employeeID": "0000055883",
      "firstName": "Melissa",
      "lastName": "Sanderson",
      "displayName": "MEL SANDERSON",
      "email": "msanders@fmi.com",
      "jobTitle": "Dir International Affairs",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000055883.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000029601",
      "supervisorName": "DAN KRAVETS"
    },
    {
      "employeeID": "0061003963",
      "firstName": "Caton",
      "lastName": "Sandoval",
      "displayName": "CATON SANDOVAL",
      "email": "csandova2@fmi.com",
      "jobTitle": "Temporary Non-Summer Intern",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003963.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000092206",
      "supervisorName": "ADAM CLARKSON"
    },
    {
      "employeeID": "0060077767",
      "firstName": "Sonia",
      "lastName": "Sandoval",
      "displayName": "SONIA SANDOVAL",
      "email": "ssandova3@fmi.com",
      "jobTitle": "Sr Contract Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077767.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088015",
      "supervisorName": "LISA TAYLOR"
    },
    {
      "employeeID": "0061002593",
      "firstName": "Gabriel",
      "lastName": "Santa Cruz",
      "displayName": "GABRIEL SANTA CRUZ",
      "email": "gsantacr1@fmi.com",
      "jobTitle": "Systems Architect I",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002593.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060078302",
      "supervisorName": "SREEJITH MANALIL"
    },
    {
      "employeeID": "0060040735",
      "firstName": "Monica",
      "lastName": "Santana",
      "displayName": "MONICA SANTANA",
      "email": "msantana@fmi.com",
      "jobTitle": "Sr HRMS Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060040735.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000028822",
      "supervisorName": "LISA HANSEN"
    },
    {
      "employeeID": "0060087288",
      "firstName": "Yaneth",
      "lastName": "Santana",
      "displayName": "YANETH SANTANA",
      "email": "ysantana@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087288.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060086670",
      "firstName": "Michael",
      "lastName": "Santarcangelo",
      "displayName": "MICHAEL SANTARCANGELO",
      "email": "msantarc@fmi.com",
      "jobTitle": "Identity Contractor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086670.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0061000916",
      "supervisorName": "JAMES COSTELLO"
    },
    {
      "employeeID": "0060050696",
      "firstName": "Senthil Kumar",
      "lastName": "Santhanam",
      "displayName": "SENTHIL KUMAR SANTHANAM",
      "email": "ssanthan@fmi.com",
      "jobTitle": "Sharepoint Admin",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060050696.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000093642",
      "supervisorName": "RAJESH NAGABOINA"
    },
    {
      "employeeID": "0060080980",
      "firstName": "Marco",
      "lastName": "Santos",
      "displayName": "MARCO SANTOS",
      "email": "msantos@fmi.com",
      "jobTitle": "SAP Bus Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080980.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0060072524",
      "firstName": "Pablo",
      "lastName": "Santos",
      "displayName": "PABLO SANTOS",
      "email": "psantos@fmi.com",
      "jobTitle": "Global SAP Development Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060072524.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068782",
      "supervisorName": "REMI BRANDEBOURG"
    },
    {
      "employeeID": "0060088435",
      "firstName": "Akaash",
      "lastName": "Sanyal",
      "displayName": "AKAASH SANYAL",
      "email": "asanyal@fmi.com",
      "jobTitle": "Data Scientist",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088435.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060047531",
      "supervisorName": "TRAVIS GADDIE"
    },
    {
      "employeeID": "0000063232",
      "firstName": "Kyle",
      "lastName": "Sargent",
      "displayName": "KYLE SARGENT",
      "email": "ksargent@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000063232.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000061262",
      "supervisorName": "MICHAEL HULSE"
    },
    {
      "employeeID": "0060087668",
      "firstName": "Avik",
      "lastName": "Sarkar",
      "displayName": "AVIK SARKAR",
      "email": "asarkar@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087668.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060055233",
      "firstName": "Brenda",
      "lastName": "Sauceda",
      "displayName": "BRENDA SAUCEDA",
      "email": "bsauceda@fmi.com",
      "jobTitle": "Recruiter II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060055233.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060062314",
      "supervisorName": "DREW RENBERG"
    },
    {
      "employeeID": "0060088698",
      "firstName": "Matt",
      "lastName": "Sauer",
      "displayName": "MATT SAUER",
      "email": "msauer@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088698.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051441",
      "supervisorName": "PAUL WHITEAKER"
    },
    {
      "employeeID": "0000085778",
      "firstName": "William",
      "lastName": "Saunders",
      "displayName": "BILL SAUNDERS",
      "email": "bsaunder@fmi.com",
      "jobTitle": "Senior IT Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085778.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0060023718",
      "supervisorName": "MARK IOIA"
    },
    {
      "employeeID": "0000012387",
      "firstName": "Barbara",
      "lastName": "Savage",
      "displayName": "BARBARA SAVAGE",
      "email": "bsavage@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000012387.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017636",
      "supervisorName": "CORY STEVENS"
    },
    {
      "employeeID": "0060085764",
      "firstName": "Aniket",
      "lastName": "Sawant",
      "displayName": "ANIKET SAWANT",
      "email": "asawant@fmi.com",
      "jobTitle": "ESG Delivery Lead",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085764.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060085542",
      "supervisorName": "APARAJITHA RF"
    },
    {
      "employeeID": "0060071195",
      "firstName": "Ekta",
      "lastName": "Saxena",
      "displayName": "EKTA SAXENA",
      "email": "esaxena@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060071195.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000067467",
      "firstName": "Sandy",
      "lastName": "Sazon",
      "displayName": "SANDY SAZON",
      "email": "ssazon@fmi.com",
      "jobTitle": "Asst Land & Cmnty Rel Ofcr",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067467.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000067485",
      "supervisorName": "JOSE RAMON TANINGCO"
    },
    {
      "employeeID": "0060079004",
      "firstName": "Mark",
      "lastName": "Schaefer",
      "displayName": "MARK SCHAEFER",
      "email": "mschaefe@fmi.com",
      "jobTitle": "Sr Network Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079004.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042677",
      "supervisorName": "STEIN ERICSSON"
    },
    {
      "employeeID": "0000086117",
      "firstName": "Stephanie",
      "lastName": "Schaff",
      "displayName": "STEPHANIE SCHAFF",
      "email": "sschaff@fmi.com",
      "jobTitle": "Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086117.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085046",
      "supervisorName": "BOB HELM"
    },
    {
      "employeeID": "0060047254",
      "firstName": "Justin",
      "lastName": "Schaffter",
      "displayName": "JUSTIN SCHAFFTER",
      "email": "jschafft@fmi.com",
      "jobTitle": "Process Ldr Supply Chain - Analytics",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060047254.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000096525",
      "supervisorName": "SUBBA VENKATESWARAN"
    },
    {
      "employeeID": "0060081242",
      "firstName": "Bill",
      "lastName": "Schaninger",
      "displayName": "BILL SCHANINGER",
      "email": "bschanin@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081242.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0000054067",
      "firstName": "Rhonda",
      "lastName": "Schexnayder",
      "displayName": "RHONDA SCHEXNAYDER",
      "email": "rschexna@fmi.com",
      "jobTitle": "Logistics Spv",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054067.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000019036",
      "supervisorName": "ERIC BOURGEOIS"
    },
    {
      "employeeID": "0000085326",
      "firstName": "Stacy",
      "lastName": "Schexnaydre",
      "displayName": "STACY SCHEXNAYDRE",
      "email": "sschexna@fmi.com",
      "jobTitle": "Spv Payroll",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085326.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085330",
      "supervisorName": "AIMEE PRAYTOR"
    },
    {
      "employeeID": "0000089987",
      "firstName": "James",
      "lastName": "Schiffer",
      "displayName": "JIM SCHIFFER",
      "email": "jschiffe@fmi.com",
      "jobTitle": "Mgr Enterprise Content",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000089987.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056399",
      "supervisorName": "LAUREN FRANK"
    },
    {
      "employeeID": "0000094452",
      "firstName": "Mark",
      "lastName": "Schmelter",
      "displayName": "MARK SCHMELTER",
      "email": "mschmelt@fmi.com",
      "jobTitle": "Dir Tailings, Crush Leach & Water",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000094452.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000093464",
      "supervisorName": "GEORGIA LYSAY"
    },
    {
      "employeeID": "0060087709",
      "firstName": "Emily",
      "lastName": "Schmid",
      "displayName": "EMILY SCHMID",
      "email": "eschmid1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087709.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060079813",
      "firstName": "Jake",
      "lastName": "Scholten",
      "displayName": "JAKE SCHOLTEN",
      "email": "jscholte@fmi.com",
      "jobTitle": "Materials/Wharehouse Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079813.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060087917",
      "firstName": "Matt",
      "lastName": "Schrader",
      "displayName": "MATT SCHRADER",
      "email": "mschrade@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087917.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000054150",
      "firstName": "Lorraine",
      "lastName": "Schriefer",
      "displayName": "LORRAINE SCHRIEFER",
      "email": "lschrief@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054150.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056399",
      "supervisorName": "LAUREN FRANK"
    },
    {
      "employeeID": "0061003660",
      "firstName": "Derrick",
      "lastName": "Schroeder",
      "displayName": "DERRICK SCHROEDER",
      "email": "dschroed@fmi.com",
      "jobTitle": "Commodity Trader",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003660.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000067891",
      "supervisorName": "DAVID SFERRA"
    },
    {
      "employeeID": "0000051743",
      "firstName": "Karl",
      "lastName": "Schroeder",
      "displayName": "KARL SCHROEDER",
      "email": "kschroed@fmi.com",
      "jobTitle": "Bus Solution Architect II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051743.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051441",
      "supervisorName": "PAUL WHITEAKER"
    },
    {
      "employeeID": "0060088254",
      "firstName": "Ali",
      "lastName": "Schuff",
      "displayName": "ALI SCHUFF",
      "email": "aschuff@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088254.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060065526",
      "firstName": "Nicholas",
      "lastName": "Schulze",
      "displayName": "NICHOLAS SCHULZE",
      "email": "nschulze@fmi.com",
      "jobTitle": "Accountant I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065526.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055671",
      "supervisorName": "STEVE DEVORE"
    },
    {
      "employeeID": "0060089299",
      "firstName": "Seth",
      "lastName": "Schumacher",
      "displayName": "SETH SCHUMACHER",
      "email": "sschumac1@fmi.com",
      "jobTitle": "Solutions Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089299.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000019320",
      "supervisorName": "CHRIS HUGHES"
    },
    {
      "employeeID": "0060074596",
      "firstName": "Jordan",
      "lastName": "Schumann",
      "displayName": "JORDAN SCHUMANN",
      "email": "jschuman@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060074596.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060086561",
      "firstName": "Justin",
      "lastName": "Schwartz",
      "displayName": "JUSTIN SCHWARTZ",
      "email": "jschwart@fmi.com",
      "jobTitle": "SAP SCM Business Analyst",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086561.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060087465",
      "supervisorName": "JULIAN PESA"
    },
    {
      "employeeID": "0060088573",
      "firstName": "Curtis",
      "lastName": "Scott",
      "displayName": "CURTIS SCOTT",
      "email": "cscott@fmi.com",
      "jobTitle": "ADVANCED TOWER SERVICES INC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088573.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000050087",
      "supervisorName": "WALTON STUCKEY"
    },
    {
      "employeeID": "0000029859",
      "firstName": "Linda",
      "lastName": "Scott",
      "displayName": "LINDA SCOTT",
      "email": "lscott@fmi.com",
      "jobTitle": "VP Corporate HR",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000029859.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000010314",
      "supervisorName": "STEVE HIGGINS"
    },
    {
      "employeeID": "0000030102",
      "firstName": "Charles",
      "lastName": "Searle",
      "displayName": "CHUCK SEARLE",
      "email": "csearle@fmi.com",
      "jobTitle": "Dir Systems & Network Architecture",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030102.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000011491",
      "supervisorName": "JEFF CHAMP"
    },
    {
      "employeeID": "0000065022",
      "firstName": "Jurgen",
      "lastName": "Segaert",
      "displayName": "JURGEN SEGAERT",
      "email": "jsegaert@fmi.com",
      "jobTitle": "Data Migration Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000065022.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065010",
      "supervisorName": "JAMES PATTERSON"
    },
    {
      "employeeID": "0060080435",
      "firstName": "Akhil",
      "lastName": "Sehgal",
      "displayName": "AKHIL SEHGAL",
      "email": "asehgal@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080435.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0000051862",
      "firstName": "John",
      "lastName": "Seip",
      "displayName": "JOHN SEIP",
      "email": "jseip@fmi.com",
      "jobTitle": "Manager Compliance & Regulatory",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051862.jpg",
      "companyDescription": "McMoRan Oil & Gas LLC",
      "supervisorID": "0000054023",
      "supervisorName": "TODD CANTRALL"
    },
    {
      "employeeID": "0060087069",
      "firstName": "Neima",
      "lastName": "Seirafipour",
      "displayName": "NEIMA SEIRAFIPOUR",
      "email": "nseirafi@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087069.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060024083",
      "firstName": "Robert",
      "lastName": "Seitz",
      "displayName": "ROBERT SEITZ",
      "email": "rseitz@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060024083.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088202",
      "supervisorName": "TOM STUFFCO"
    },
    {
      "employeeID": "0061002606",
      "firstName": "Sam",
      "lastName": "Sekaquaptewa",
      "displayName": "SAM SEKAQUAPTEWA",
      "email": "ssekaqua@fmi.com",
      "jobTitle": "Sr Voice & Collaboration Eng",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002606.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000019320",
      "supervisorName": "CHRIS HUGHES"
    },
    {
      "employeeID": "0000061089",
      "firstName": "Vickey",
      "lastName": "Sellers",
      "displayName": "VICKEY SELLERS",
      "email": "vsellers@fmi.com",
      "jobTitle": "Controller",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000061089.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051252",
      "supervisorName": "GRANT WELKER"
    },
    {
      "employeeID": "0000892457",
      "firstName": "Tondy",
      "lastName": "Semestario",
      "displayName": "TONDY SEMESTARIO",
      "email": "tsemesta@fmi.com",
      "jobTitle": "Sr Mine Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000892457.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0060076714",
      "supervisorName": "FANUEL BANDA"
    },
    {
      "employeeID": "0060067030",
      "firstName": "Keely",
      "lastName": "Senical",
      "displayName": "KEELY SENICAL",
      "email": "ksenical@fmi.com",
      "jobTitle": "Environmental Engineer I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067030.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000086950",
      "supervisorName": "ERIC JOVANOVICH"
    },
    {
      "employeeID": "0060080575",
      "firstName": "Selvaganapathy",
      "lastName": "Sennan",
      "displayName": "SELVAGANAPATHY SENNAN",
      "email": "ssennan@fmi.com",
      "jobTitle": "BI Developer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080575.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0000016587",
      "firstName": "Pamela",
      "lastName": "Senne",
      "displayName": "MICHELLE SENNE",
      "email": "msenne@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000016587.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000095485",
      "supervisorName": "PETER KRAUT"
    },
    {
      "employeeID": "0060086457",
      "firstName": "Tri",
      "lastName": "Setiyono",
      "displayName": "TRI SETIYONO",
      "email": "tsetiyon@fmi.com",
      "jobTitle": "QA/QC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086457.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060078281",
      "firstName": "Catharina",
      "lastName": "Setyadi",
      "displayName": "CATHARINA SETYADI",
      "email": "csetyadi1@fmi.com",
      "jobTitle": "SAP HCM Business Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078281.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068782",
      "supervisorName": "REMI BRANDEBOURG"
    },
    {
      "employeeID": "0060087972",
      "firstName": "James",
      "lastName": "Severson",
      "displayName": "JAMES SEVERSON",
      "email": "jseverso@fmi.com",
      "jobTitle": "Data Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087972.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060047531",
      "supervisorName": "TRAVIS GADDIE"
    },
    {
      "employeeID": "0060079628",
      "firstName": "Jessica",
      "lastName": "Sevilla-Suarez",
      "displayName": "JESSICA SEVILLA-SUAREZ",
      "email": "jsevilla@fmi.com",
      "jobTitle": "Sr Contract Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079628.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088015",
      "supervisorName": "LISA TAYLOR"
    },
    {
      "employeeID": "0000023591",
      "firstName": "Amy",
      "lastName": "Sexton",
      "displayName": "AMY SEXTON",
      "email": "asexton@fmi.com",
      "jobTitle": "Dir HR Business Partner",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000023591.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054069",
      "supervisorName": "TODD GRAVER"
    },
    {
      "employeeID": "0000023463",
      "firstName": "Brandon",
      "lastName": "Sexton",
      "displayName": "BRANDON SEXTON",
      "email": "bsexton@fmi.com",
      "jobTitle": "Sr Project Manager Engineering",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000023463.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0000086187",
      "firstName": "Erik",
      "lastName": "Seymour",
      "displayName": "DAVID SEYMOUR",
      "email": "dseymour@fmi.com",
      "jobTitle": "TE, PORSITE OPERATION",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086187.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000060822",
      "supervisorName": "ARI PARTANEN"
    },
    {
      "employeeID": "0000067891",
      "firstName": "David",
      "lastName": "Sferra",
      "displayName": "DAVID SFERRA",
      "email": "dsferra@fmi.com",
      "jobTitle": "Mgr Strategic Sulf Acid & Mkt Analysis",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067891.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000068000",
      "supervisorName": "RANDY NICKLE"
    },
    {
      "employeeID": "0060076738",
      "firstName": "Gaurav",
      "lastName": "Shah",
      "displayName": "GAURAV SHAH",
      "email": "gshah@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076738.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0000017705",
      "firstName": "Corinne",
      "lastName": "Shank",
      "displayName": "CORINNE SHANK",
      "email": "cshank@fmi.com",
      "jobTitle": "Business Mgr",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000017705.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017870",
      "supervisorName": "STEVE TANNER"
    },
    {
      "employeeID": "0000091133",
      "firstName": "Daniel",
      "lastName": "Shapiro",
      "displayName": "DAN SHAPIRO",
      "email": "dshapiro@fmi.com",
      "jobTitle": "Proj Mgr Engineering II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091133.JPG",
      "companyDescription": "International Administrat",
      "supervisorID": "0000011812",
      "supervisorName": "LOUIS KIEFFER"
    },
    {
      "employeeID": "0060080703",
      "firstName": "Chhavi",
      "lastName": "Sharma",
      "displayName": "CHHAVI SHARMA",
      "email": "csharma@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080703.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060043606",
      "firstName": "Christopher",
      "lastName": "Sheerin",
      "displayName": "CHRISTOPHER SHEERIN",
      "email": "csheerin@fmi.com",
      "jobTitle": "Mgr Crush/Convey/Concentrate Operations",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060043606.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0000094184",
      "firstName": "Shams",
      "lastName": "Sheikh",
      "displayName": "SHAMS SHEIKH",
      "email": "ssheikh@fmi.com",
      "jobTitle": "Global SAP FIN Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000094184.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094067",
      "supervisorName": "ANGEL BRAVO"
    },
    {
      "employeeID": "0060071965",
      "firstName": "Chad",
      "lastName": "Sheppard",
      "displayName": "CHAD SHEPPARD",
      "email": "csheppar@fmi.com",
      "jobTitle": "Sr International Tax Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060071965.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000063894",
      "supervisorName": "KURT CASPER"
    },
    {
      "employeeID": "0000058072",
      "firstName": "Cheryl",
      "lastName": "Shimko",
      "displayName": "CHERYL SHIMKO",
      "email": "cshimko@fmi.com",
      "jobTitle": "Mgr HR",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000058072.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054069",
      "supervisorName": "TODD GRAVER"
    },
    {
      "employeeID": "0061002572",
      "firstName": "Fabio",
      "lastName": "Shiotuqui dos Santos",
      "displayName": "FABIO SHIOTUQUI DOS SANTOS",
      "email": "fshiotuq@fmi.com",
      "jobTitle": "IT Security Analyst II",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002572.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060063022",
      "supervisorName": "SEAN MCWHORTER"
    },
    {
      "employeeID": "0000012013",
      "firstName": "Kimberly",
      "lastName": "Shipley",
      "displayName": "KIM SHIPLEY",
      "email": "kshipley@fmi.com",
      "jobTitle": "Mgr Accounting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000012013.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051549",
      "supervisorName": "MELISSA WALTER"
    },
    {
      "employeeID": "0060043928",
      "firstName": "Bijaya",
      "lastName": "Shrestha",
      "displayName": "BIJAYA SHRESTHA",
      "email": "bshresth@fmi.com",
      "jobTitle": "Designer/Drafter UG",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060043928.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060076714",
      "supervisorName": "FANUEL BANDA"
    },
    {
      "employeeID": "0060042117",
      "firstName": "Pratima",
      "lastName": "Shrestha",
      "displayName": "PRATIMA SHRESTHA",
      "email": "pshresth@fmi.com",
      "jobTitle": "Designer/Drafter UG",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060042117.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060076714",
      "supervisorName": "FANUEL BANDA"
    },
    {
      "employeeID": "0060088571",
      "firstName": "Muhammad Ali",
      "lastName": "Siddiqui",
      "displayName": "MUHAMMAD ALI SIDDIQUI",
      "email": "msiddiqu@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088571.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060065858",
      "firstName": "Derek",
      "lastName": "Sikes",
      "displayName": "DEREK SIKES",
      "email": "dsikes@fmi.com",
      "jobTitle": "Sr Comm Spec - Corp Writer/Videographer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065858.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000092597",
      "supervisorName": "CLAYTON DAVIS"
    },
    {
      "employeeID": "0060027093",
      "firstName": "George",
      "lastName": "Simanjuntak",
      "displayName": "GLENN SIMANJUNTAK",
      "email": "gsimanju@fmi.com",
      "jobTitle": "Proj Mgr Engineering II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060027093.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090195",
      "supervisorName": "NITIN GOEL"
    },
    {
      "employeeID": "0060088525",
      "firstName": "Tigor",
      "lastName": "Simanjuntak",
      "displayName": "TIGOR SIMANJUNTAK",
      "email": "tsimanju3@fmi.com",
      "jobTitle": "Support Services Coordinator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088525.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060087610",
      "firstName": "Danny",
      "lastName": "Simons",
      "displayName": "DANNY SIMONS",
      "email": "dsimons@fmi.com",
      "jobTitle": "Commissioning Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087610.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015637",
      "supervisorName": "CLINTON CROTTS"
    },
    {
      "employeeID": "0080001895",
      "firstName": "Fadlan",
      "lastName": "Sinaga",
      "displayName": "FADLAN SINAGA",
      "email": "fsinaga@fmi.com",
      "jobTitle": "Sr Geomechanical Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0080001895.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0060072868",
      "supervisorName": "JACQUES NGUZ TSHISENS"
    },
    {
      "employeeID": "0060040419",
      "firstName": "Abhinav",
      "lastName": "Singh",
      "displayName": "ABHINAV SINGH",
      "email": "asingh@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060040419.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060088422",
      "firstName": "Ashwani",
      "lastName": "Singh",
      "displayName": "ASHWANI SINGH",
      "email": "asingh11@fmi.com",
      "jobTitle": "PROMETHEUS GROUP ENTERPRISE LLC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088422.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0060039827",
      "firstName": "Shashank",
      "lastName": "Singh",
      "displayName": "SHASHANK SINGH",
      "email": "ssingh@fmi.com",
      "jobTitle": "SAP Basis Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060039827.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068782",
      "supervisorName": "REMI BRANDEBOURG"
    },
    {
      "employeeID": "0000016865",
      "firstName": "Janice",
      "lastName": "Singleton",
      "displayName": "JANICE SINGLETON",
      "email": "jsinglet@fmi.com",
      "jobTitle": "Mgr Facilities",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000016865.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000011474",
      "supervisorName": "HEIDI DALE"
    },
    {
      "employeeID": "0000016419",
      "firstName": "Craig",
      "lastName": "Sircy",
      "displayName": "CRAIG SIRCY",
      "email": "csircy@fmi.com",
      "jobTitle": "Mgr Mine",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000016419.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060081017",
      "firstName": "Chandrasekhar",
      "lastName": "Siriguppa",
      "displayName": "CHANDRASEKHAR SIRIGUPPA",
      "email": "csirigup@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081017.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060078126",
      "firstName": "Wendi",
      "lastName": "Siswanto",
      "displayName": "WENDI SISWANTO",
      "email": "wsiswant@fmi.com",
      "jobTitle": "QA/QC Representative",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078126.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0060077532",
      "firstName": "Saravanaganesh",
      "lastName": "Sivaprakasam",
      "displayName": "SARAVANAGANESH SIVAPRAKASAM",
      "email": "ssivapra@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077532.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0060078587",
      "firstName": "Eric",
      "lastName": "Skaggs",
      "displayName": "ERIC SKAGGS",
      "email": "eskaggs2@fmi.com",
      "jobTitle": "Systems Architect III - Digital Services",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078587.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055242",
      "supervisorName": "BRIAN ETHERIDGE"
    },
    {
      "employeeID": "0000028043",
      "firstName": "Sandra",
      "lastName": "Skinner",
      "displayName": "SANDRA SKINNER",
      "email": "sskinner@fmi.com",
      "jobTitle": "Executive Secretary",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000028043.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000050843",
      "supervisorName": "BILL COBB"
    },
    {
      "employeeID": "0061000169",
      "firstName": "Ammon",
      "lastName": "Slade",
      "displayName": "LOT SLADE",
      "email": "aslade@fmi.com",
      "jobTitle": "Data Scientist I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000169.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060050437",
      "supervisorName": "MICHAEL BISCHOF"
    },
    {
      "employeeID": "0000094981",
      "firstName": "Tina",
      "lastName": "Slankas",
      "displayName": "TINA SLANKAS",
      "email": "tslankas@fmi.com",
      "jobTitle": "MSO Security Lead",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000094981.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030258",
      "supervisorName": "KETAN PATEL"
    },
    {
      "employeeID": "0060087070",
      "firstName": "Scott",
      "lastName": "Slepian",
      "displayName": "SCOTT SLEPIAN",
      "email": "sslepian@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087070.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000095068",
      "firstName": "Jamie",
      "lastName": "Sloat",
      "displayName": "JAMIE SLOAT",
      "email": "jsloat@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000095068.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028334",
      "supervisorName": "RACHAEL LAUFENBERG"
    },
    {
      "employeeID": "0060054251",
      "firstName": "Ramprasad",
      "lastName": "SM",
      "displayName": "RAMPRASAD SM",
      "email": "rsm@fmi.com",
      "jobTitle": "MSO Network Security Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060054251.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060072316",
      "supervisorName": "DAVID RIZA"
    },
    {
      "employeeID": "0060050347",
      "firstName": "Justin",
      "lastName": "Smalley",
      "displayName": "JUSTIN SMALLEY",
      "email": "jsmalley@fmi.com",
      "jobTitle": "Systems Integrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060050347.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051441",
      "supervisorName": "PAUL WHITEAKER"
    },
    {
      "employeeID": "0061001454",
      "firstName": "Erin",
      "lastName": "Smethers",
      "displayName": "ERIN SMETHERS",
      "email": "esmether@fmi.com",
      "jobTitle": "Project Engineer I",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001454.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000874000",
      "supervisorName": "STEVEN MITCHELL"
    },
    {
      "employeeID": "0060056603",
      "firstName": "Paul",
      "lastName": "Smigel",
      "displayName": "PAUL SMIGEL",
      "email": "psmigel@fmi.com",
      "jobTitle": "Sr Spv IS",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060056603.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060023718",
      "supervisorName": "MARK IOIA"
    },
    {
      "employeeID": "0060088707",
      "firstName": "Ben",
      "lastName": "Smith",
      "displayName": "BEN SMITH",
      "email": "bsmith11@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088707.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051441",
      "supervisorName": "PAUL WHITEAKER"
    },
    {
      "employeeID": "0060049692",
      "firstName": "Bradley",
      "lastName": "Smith",
      "displayName": "BRADLEY SMITH",
      "email": "bsmith1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060049692.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000085790",
      "firstName": "Eric",
      "lastName": "Smith",
      "displayName": "ERIC SMITH",
      "email": "esmith@fmi.com",
      "jobTitle": "Senior Applications Developer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085790.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000011491",
      "supervisorName": "JEFF CHAMP"
    },
    {
      "employeeID": "0060028947",
      "firstName": "Joshua",
      "lastName": "Smith",
      "displayName": "JOSHUA SMITH",
      "email": "jsmith7@fmi.com",
      "jobTitle": "Sr Accountant - Payroll",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060028947.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000061085",
      "supervisorName": "NANCY MARSHALL"
    },
    {
      "employeeID": "0000015649",
      "firstName": "Mark",
      "lastName": "Smith",
      "displayName": "MARK SMITH",
      "email": "msmith@fmi.com",
      "jobTitle": "Dir Project Services",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000015649.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0060047984",
      "firstName": "Miranda",
      "lastName": "Smith",
      "displayName": "MIRANDA SMITH",
      "email": "msmith9@fmi.com",
      "jobTitle": "Chief Environmental Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060047984.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000086950",
      "supervisorName": "ERIC JOVANOVICH"
    },
    {
      "employeeID": "0061000133",
      "firstName": "Miranda",
      "lastName": "Smith",
      "displayName": "MIRANDA SMITH",
      "email": "msmith21@fmi.com",
      "jobTitle": "Chief Environmental Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061000133.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0061000132",
      "supervisorName": "ERIC JOVANOVICH"
    },
    {
      "employeeID": "0060081688",
      "firstName": "Stephen",
      "lastName": "Snider",
      "displayName": "STEPHEN SNIDER",
      "email": "ssnider@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081688.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0061002339",
      "firstName": "Michael",
      "lastName": "Snihurowych",
      "displayName": "MICHAEL SNIHUROWYCH",
      "email": "msnihuro@fmi.com",
      "jobTitle": "Mgr Metallurgy",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002339.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024233",
      "supervisorName": "LEN HILL"
    },
    {
      "employeeID": "0060077691",
      "firstName": "Eric",
      "lastName": "Snyder",
      "displayName": "ERIC SNYDER",
      "email": "esnyder@fmi.com",
      "jobTitle": "Data Scientist I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077691.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062216",
      "supervisorName": "SCOTT BIRMINGHAM"
    },
    {
      "employeeID": "0060063842",
      "firstName": "Srikanth",
      "lastName": "Sodisetti",
      "displayName": "SRIKANTH SODISETTI",
      "email": "ssodiset@fmi.com",
      "jobTitle": "UC Network Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060063842.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042677",
      "supervisorName": "STEIN ERICSSON"
    },
    {
      "employeeID": "0060086279",
      "firstName": "Matthew",
      "lastName": "Solomon",
      "displayName": "MATTHEW SOLOMON",
      "email": "msolomon@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086279.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060079515",
      "firstName": "Cyndi",
      "lastName": "Song",
      "displayName": "CYNDI SONG",
      "email": "csong@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079515.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000067667",
      "firstName": "Kiyoko",
      "lastName": "Sonoki",
      "displayName": "KIYOKO SONOKI",
      "email": "ksonoki@fmi.com",
      "jobTitle": "CM Intl Customer Service Rep",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067667.jpg",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0000025763",
      "supervisorName": "GEORGE PEARSON"
    },
    {
      "employeeID": "0060081835",
      "firstName": "Andrew",
      "lastName": "Soroka",
      "displayName": "ANDREW SOROKA",
      "email": "asoroka@fmi.com",
      "jobTitle": "Support Technician",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081835.JPG",
      "companyDescription": "PDI El Paso Rod Plant",
      "supervisorID": "0000010845",
      "supervisorName": "KEVIN SCOTT"
    },
    {
      "employeeID": "0060088486",
      "firstName": "James",
      "lastName": "Soto",
      "displayName": "JAMES SOTO",
      "email": "jsoto5@fmi.com",
      "jobTitle": "Cost Lead",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088486.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060026877",
      "firstName": "Mireya",
      "lastName": "Soto",
      "displayName": "MIREYA SOTO",
      "email": "msoto1@fmi.com",
      "jobTitle": "Mgr Glbl Metallurgical Planning/Comm Ops",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060026877.jpg",
      "companyDescription": "Climax Moly Co Admin",
      "supervisorID": "0000053411",
      "supervisorName": "CHANDRAMOULEESWARAN VAIDYANATHAN"
    },
    {
      "employeeID": "0000030596",
      "firstName": "David",
      "lastName": "Sovell",
      "displayName": "DAVE SOVELL",
      "email": "dsovell@fmi.com",
      "jobTitle": "VP Information Technology",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030596.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000081075",
      "supervisorName": "BERT ODINET"
    },
    {
      "employeeID": "0000015933",
      "firstName": "Lisa",
      "lastName": "Spivey",
      "displayName": "LISA SPIVEY",
      "email": "lspivey@fmi.com",
      "jobTitle": "Sr Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000015933.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000015804",
      "supervisorName": "MARK GURTLER"
    },
    {
      "employeeID": "0060087942",
      "firstName": "Heather",
      "lastName": "Sprowls",
      "displayName": "HEATHER SPROWLS",
      "email": "hsprowls@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087942.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000051337",
      "firstName": "Missouri",
      "lastName": "Spruit",
      "displayName": "MISSY SPRUIT",
      "email": "mspruit@fmi.com",
      "jobTitle": "Communications Representative",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051337.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015409",
      "supervisorName": "LINDA HAYES"
    },
    {
      "employeeID": "0060077091",
      "firstName": "Pratiksha",
      "lastName": "Srivastava",
      "displayName": "PRATIKSHA SRIVASTAVA",
      "email": "psrivast@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077091.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000054113",
      "firstName": "Roger",
      "lastName": "Stack",
      "displayName": "ROGER STACK",
      "email": "rstack@fmi.com",
      "jobTitle": "Vice President - Finance",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054113.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051953",
      "supervisorName": "KATHLEEN QUIRK"
    },
    {
      "employeeID": "0000063218",
      "firstName": "Brittany",
      "lastName": "Stamey",
      "displayName": "BRITTANY STAMEY",
      "email": "bstamey1@fmi.com",
      "jobTitle": "Mgr Contracts",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000063218.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056982",
      "supervisorName": "BRIAN BUTTRAM"
    },
    {
      "employeeID": "0061002424",
      "firstName": "James",
      "lastName": "Stanfield",
      "displayName": "BRENT STANFIELD",
      "email": "bstanfie@fmi.com",
      "jobTitle": "Bus Solution Architect II Sustainability",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002424.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000092905",
      "supervisorName": "JENNIFER GADZICHOWSKI"
    },
    {
      "employeeID": "0060079694",
      "firstName": "Mike",
      "lastName": "Stanioski",
      "displayName": "MIKE STANIOSKI",
      "email": "mstanios@fmi.com",
      "jobTitle": "Consultant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079694.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089905",
      "supervisorName": "SCOTT STATHAM"
    },
    {
      "employeeID": "0000089905",
      "firstName": "Kenneth",
      "lastName": "Statham",
      "displayName": "SCOTT STATHAM",
      "email": "sstatham@fmi.com",
      "jobTitle": "VP & Deputy General Counsel",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000089905.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000986346",
      "supervisorName": "DOUGLAS CURRAULT"
    },
    {
      "employeeID": "0060078227",
      "firstName": "Doug",
      "lastName": "Staton",
      "displayName": "DOUG STATON",
      "email": "dstaton@fmi.com",
      "jobTitle": "CROWN TECHNICAL SYSTEMS",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078227.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017064",
      "supervisorName": "LISA MEDINA"
    },
    {
      "employeeID": "0000055631",
      "firstName": "John",
      "lastName": "Stebbins",
      "displayName": "JOHN STEBBINS",
      "email": "jstebbin@fmi.com",
      "jobTitle": "Controller Americas",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000055631.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000018115",
      "supervisorName": "LEX ZERWAS"
    },
    {
      "employeeID": "0000052636",
      "firstName": "Anthony",
      "lastName": "Steeples",
      "displayName": "ANTHONY STEEPLES",
      "email": "asteeple@fmi.com",
      "jobTitle": "Chief Power Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000052636.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000092101",
      "supervisorName": "JOHNNY KEY"
    },
    {
      "employeeID": "0000052315",
      "firstName": "Jacklyn",
      "lastName": "Steeples",
      "displayName": "JACKLYN STEEPLES",
      "email": "jsteeple@fmi.com",
      "jobTitle": "Mgr Processing Op Improvement",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000052315.JPG",
      "companyDescription": "FMC Process Tech Center",
      "supervisorID": "0000016496",
      "supervisorName": "JODI ROBERTSON"
    },
    {
      "employeeID": "0060077268",
      "firstName": "Michael",
      "lastName": "Stephens",
      "displayName": "MICHAEL STEPHENS",
      "email": "mstephen2@fmi.com",
      "jobTitle": "Avanade Client Executive",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077268.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060068782",
      "supervisorName": "REMI BRANDEBOURG"
    },
    {
      "employeeID": "0000017636",
      "firstName": "Antonioni",
      "lastName": "Stevens",
      "displayName": "CORY STEVENS",
      "email": "cstevens@fmi.com",
      "jobTitle": "VP Operational Improvement",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000017636.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000060006",
      "supervisorName": "RICK COLEMAN"
    },
    {
      "employeeID": "0000060662",
      "firstName": "Francis",
      "lastName": "Steward",
      "displayName": "MICHAEL STEWARD",
      "email": "msteward@fmi.com",
      "jobTitle": "Mgr Remediation Projects",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000060662.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000026712",
      "supervisorName": "BRYCE ROMIG"
    },
    {
      "employeeID": "0061003263",
      "firstName": "Karen",
      "lastName": "Stewart",
      "displayName": "KAREN STEWART",
      "email": "kstewart@fmi.com",
      "jobTitle": "Safety Systems Analyst",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003263.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057092",
      "supervisorName": "ROBERT MCLAIN"
    },
    {
      "employeeID": "0060077840",
      "firstName": "Mary Lass",
      "lastName": "Stewart",
      "displayName": "MARY LASS STEWART",
      "email": "mstewart3@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077840.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0061001967",
      "firstName": "Dennis",
      "lastName": "Stiak",
      "displayName": "DENNIS STIAK",
      "email": "dstiak@fmi.com",
      "jobTitle": "IT Security Analyst I",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001967.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028840",
      "supervisorName": "TIMOTHY PLONA"
    },
    {
      "employeeID": "0060070629",
      "firstName": "Christopher",
      "lastName": "Stoddard",
      "displayName": "CHRISTOPHER STODDARD",
      "email": "cstoddar@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060070629.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054342",
      "supervisorName": "JORGE ESPINOZA"
    },
    {
      "employeeID": "0060076791",
      "firstName": "Joseph",
      "lastName": "Stoddard",
      "displayName": "JOSEPH STODDARD",
      "email": "jstoddar@fmi.com",
      "jobTitle": "HR Generalist II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076791.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000058072",
      "supervisorName": "CHERYL SHIMKO"
    },
    {
      "employeeID": "0060060281",
      "firstName": "Corey",
      "lastName": "Stoerner",
      "displayName": "COREY STOERNER",
      "email": "cstoerne@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060060281.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062686",
      "supervisorName": "CHRISTOPHER LYON"
    },
    {
      "employeeID": "0000067393",
      "firstName": "Lesley",
      "lastName": "Stokes",
      "displayName": "LESLEY STOKES",
      "email": "lstokes@fmi.com",
      "jobTitle": "Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067393.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000067485",
      "supervisorName": "JOSE RAMON TANINGCO"
    },
    {
      "employeeID": "0000086417",
      "firstName": "William",
      "lastName": "Stone",
      "displayName": "NAYLOR STONE",
      "email": "nstone@fmi.com",
      "jobTitle": "Consultant - Exploration Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086417.JPG",
      "companyDescription": "McMoRan Oil & Gas LLC",
      "supervisorID": "0000054298",
      "supervisorName": "PAM MASSON"
    },
    {
      "employeeID": "0000024126",
      "firstName": "Michelle",
      "lastName": "Stonehouse",
      "displayName": "MICHELLE STONEHOUSE",
      "email": "micstone@fmi.com",
      "jobTitle": "Dir Employee Services",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000024126.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000029859",
      "supervisorName": "LINDA SCOTT"
    },
    {
      "employeeID": "0061002456",
      "firstName": "Joanne",
      "lastName": "Storbeck",
      "displayName": "JOANNE STORBECK",
      "email": "jstorbec@fmi.com",
      "jobTitle": "Mgr Global Business Continuity Plng",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002456.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056399",
      "supervisorName": "LAUREN FRANK"
    },
    {
      "employeeID": "0000087015",
      "firstName": "Henri",
      "lastName": "Stout",
      "displayName": "HENRI STOUT",
      "email": "hstout@fmi.com",
      "jobTitle": "Spv Employment",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000087015.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085658",
      "supervisorName": "MEGAN PATRON"
    },
    {
      "employeeID": "0060031173",
      "firstName": "Amelia",
      "lastName": "Strecker",
      "displayName": "AMY STRECKER",
      "email": "astrecke@fmi.com",
      "jobTitle": "Executive Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060031173.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017690",
      "supervisorName": "RED CONGER"
    },
    {
      "employeeID": "0000029889",
      "firstName": "Cristian",
      "lastName": "Strickler Hitschfeld",
      "displayName": "CRISTIAN STRICKLER HITSCHFELD",
      "email": "cstrickl@fmi.com",
      "jobTitle": "Sr Dir Environmental Ops & New Projects",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000029889.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000050843",
      "supervisorName": "BILL COBB"
    },
    {
      "employeeID": "0060086685",
      "firstName": "Kelly",
      "lastName": "Strife",
      "displayName": "KELLY STRIFE",
      "email": "kstrife@fmi.com",
      "jobTitle": "Assistant Project Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086685.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053106",
      "supervisorName": "RYAN DUNNE"
    },
    {
      "employeeID": "0060085932",
      "firstName": "Cassidy",
      "lastName": "Strode",
      "displayName": "CASSIDY STRODE",
      "email": "cstrode@fmi.com",
      "jobTitle": "CHEMISTRY & INDUST HYGIENE INC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085932.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060033337",
      "supervisorName": "JESSICA COLE"
    },
    {
      "employeeID": "0060052942",
      "firstName": "Brian",
      "lastName": "Stronach",
      "displayName": "BRIAN STRONACH",
      "email": "bstronac@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060052942.jpg",
      "companyDescription": "International Administrat",
      "supervisorID": "0000066178",
      "supervisorName": "CHUCK BRANNON"
    },
    {
      "employeeID": "0000050087",
      "firstName": "Walton",
      "lastName": "Stuckey",
      "displayName": "WALTON STUCKEY",
      "email": "wstuckey@fmi.com",
      "jobTitle": "Network Architect II Radio & Power",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000050087.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000085449",
      "supervisorName": "BRODY DELCAMBRE"
    },
    {
      "employeeID": "0060042155",
      "firstName": "Sharayah",
      "lastName": "Stuehling",
      "displayName": "SHARAYAH STUEHLING",
      "email": "sstuehli@fmi.com",
      "jobTitle": "Sales & Service Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060042155.JPG",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0060032889",
      "supervisorName": "BRENDA MITCHELL"
    },
    {
      "employeeID": "0000088202",
      "firstName": "Thomas",
      "lastName": "Stuffco",
      "displayName": "TOM STUFFCO",
      "email": "tstuffco@fmi.com",
      "jobTitle": "VP Technical Services",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088202.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000060006",
      "supervisorName": "RICK COLEMAN"
    },
    {
      "employeeID": "0060088771",
      "firstName": "Gene",
      "lastName": "Su",
      "displayName": "GENE SU",
      "email": "gsu1@fmi.com",
      "jobTitle": "Data Scientist",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088771.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060047531",
      "supervisorName": "TRAVIS GADDIE"
    },
    {
      "employeeID": "0060089254",
      "firstName": "Roy",
      "lastName": "Su",
      "displayName": "ROY SU",
      "email": "rsu1@fmi.com",
      "jobTitle": "Planner/Scheduler",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089254.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0000009354",
      "firstName": "Inengah",
      "lastName": "Sugita",
      "displayName": "NENGAH SUGITA",
      "email": "isugita@fmi.com",
      "jobTitle": "Mgr Productions Forecast & Project Spv",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000009354.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000252953",
      "supervisorName": "MADE MAHAYASA"
    },
    {
      "employeeID": "0000912367",
      "firstName": "Yohanes",
      "lastName": "Sularso",
      "displayName": "MIKO SULARSO",
      "email": "ysularso@fmi.com",
      "jobTitle": "Communications Representative (PT)",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000912367.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000050020",
      "supervisorName": "RUTHANNE VAN DYKE"
    },
    {
      "employeeID": "0000065237",
      "firstName": "Eileen",
      "lastName": "Sullivan",
      "displayName": "EILEEN SULLIVAN",
      "email": "esulliva@fmi.com",
      "jobTitle": "Legal Secretary Litigation",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000065237.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054194",
      "supervisorName": "SHEILA DEELY"
    },
    {
      "employeeID": "0000091454",
      "firstName": "John",
      "lastName": "Sullivan",
      "displayName": "JOHN SULLIVAN",
      "email": "jsulliva@fmi.com",
      "jobTitle": "Systems Architect Exchange III",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091454.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055242",
      "supervisorName": "BRIAN ETHERIDGE"
    },
    {
      "employeeID": "0060082712",
      "firstName": "Kristen",
      "lastName": "Sullivan",
      "displayName": "KRISTEN SULLIVAN",
      "email": "ksulliva1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060082712.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060015706",
      "firstName": "Emily",
      "lastName": "Sun",
      "displayName": "EMILY SUN",
      "email": "esun@fmi.com",
      "jobTitle": "Customer Service Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060015706.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000067679",
      "supervisorName": "LEONARD HU"
    },
    {
      "employeeID": "0060065661",
      "firstName": "Neha",
      "lastName": "Sundaram",
      "displayName": "NEHA SUNDARAM",
      "email": "nsundara@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065661.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000090703",
      "firstName": "Carly",
      "lastName": "Sung",
      "displayName": "CARLY SUNG",
      "email": "csung@fmi.com",
      "jobTitle": "Records Indexer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090703.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030672",
      "supervisorName": "SHARON AHMED"
    },
    {
      "employeeID": "0000065646",
      "firstName": "Khaled",
      "lastName": "Sunna",
      "displayName": "KHALED SUNNA",
      "email": "ksunna@fmi.com",
      "jobTitle": "VP Engineering",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000065646.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000060006",
      "supervisorName": "RICK COLEMAN"
    },
    {
      "employeeID": "0060028905",
      "firstName": "Ari",
      "lastName": "Supomo",
      "displayName": "ARI SUPOMO",
      "email": "asupomo@fmi.com",
      "jobTitle": "FM Projects Mining Mgr Process Control",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060028905.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000060822",
      "supervisorName": "ARI PARTANEN"
    },
    {
      "employeeID": "9999990006",
      "firstName": "NA ARIBA",
      "lastName": "SUPPLIER",
      "displayName": "NA ARIBA SUPPLIER",
      "email": "",
      "jobTitle": "",
      "photoUrl": "",
      "companyDescription": "",
      "supervisorID": "0000061223",
      "supervisorName": "KEVIN JACOBS"
    },
    {
      "employeeID": "0060078501",
      "firstName": "Gilman",
      "lastName": "Suriya",
      "displayName": "GILMAN SURIYA",
      "email": "gsuriya@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078501.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000088468",
      "firstName": "Andrew",
      "lastName": "Sussman",
      "displayName": "ANDREW SUSSMAN",
      "email": "asussman@fmi.com",
      "jobTitle": "Sr Process Ldr Supply Chain",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088468.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054547",
      "supervisorName": "CYNTHIA BARBER"
    },
    {
      "employeeID": "0060076767",
      "firstName": "Antonio",
      "lastName": "Sutherland",
      "displayName": "ANTONIO SUTHERLAND",
      "email": "asutherl@fmi.com",
      "jobTitle": "Temporary AP Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076767.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015474",
      "supervisorName": "STACY COSTELLO"
    },
    {
      "employeeID": "0000050159",
      "firstName": "Richard",
      "lastName": "Sutkowi",
      "displayName": "RICH SUTKOWI",
      "email": "rsutkowi@fmi.com",
      "jobTitle": "Mgr Commercial Business System",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000050159.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000053300",
      "supervisorName": "MICHELLE QUINTANILLA"
    },
    {
      "employeeID": "0060065563",
      "firstName": "Leland",
      "lastName": "Sutter",
      "displayName": "LELAND SUTTER",
      "email": "lsutter@fmi.com",
      "jobTitle": "Geospatial Data Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065563.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094452",
      "supervisorName": "MARK SCHMELTER"
    },
    {
      "employeeID": "0060088301",
      "firstName": "Suyatno",
      "lastName": "Suyatno",
      "displayName": "SUYATNO",
      "email": "ssuyatno@fmi.com",
      "jobTitle": "Field Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088301.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0000094585",
      "firstName": "Christopher",
      "lastName": "Svenson",
      "displayName": "CHRISTOPHER SVENSON",
      "email": "csvenson@fmi.com",
      "jobTitle": "Mgr Health & Safety",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000094585.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000014086",
      "supervisorName": "CHUCK ROSE"
    },
    {
      "employeeID": "0061005086",
      "firstName": "Chloe",
      "lastName": "Sweatman",
      "displayName": "CHLOE SWEATMAN",
      "email": "csweatma@fmi.com",
      "jobTitle": "Temporary Summer Intern - MIS Cust Dev",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061005086.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057332",
      "supervisorName": "CHALLIS LIEURANCE"
    },
    {
      "employeeID": "0061003471",
      "firstName": "Travis",
      "lastName": "Sween",
      "displayName": "TRAVIS SWEEN",
      "email": "tsween1@fmi.com",
      "jobTitle": "MIS Portfolio Facilitator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003471.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060030270",
      "supervisorName": "KRISTA GOYARTS"
    },
    {
      "employeeID": "0061000331",
      "firstName": "Irfan",
      "lastName": "Syed",
      "displayName": "IRFAN SYED",
      "email": "isyed@fmi.com",
      "jobTitle": "Bus Solution Architect III",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000331.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065010",
      "supervisorName": "JAMES PATTERSON"
    },
    {
      "employeeID": "0060079069",
      "firstName": "William",
      "lastName": "Syll",
      "displayName": "WILLIAM SYLL",
      "email": "wsyll@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079069.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0061003907",
      "firstName": "Alyssa",
      "lastName": "Szafasz",
      "displayName": "ALYSSA SZAFASZ",
      "email": "aszafasz@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003907.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0060067277",
      "firstName": "Anna",
      "lastName": "Szurgot",
      "displayName": "ANNA SZURGOT",
      "email": "aszurgot@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060067277.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000067883",
      "firstName": "Ruperto",
      "lastName": "Taguran",
      "displayName": "RUPERTO TAGURAN",
      "email": null,
      "jobTitle": "Field Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067883.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000067485",
      "supervisorName": "JOSE RAMON TANINGCO"
    },
    {
      "employeeID": "0060083549",
      "firstName": "Steven",
      "lastName": "Talbot",
      "displayName": "STEVEN TALBOT",
      "email": "stalbot1@fmi.com",
      "jobTitle": "Project Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083549.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000066179",
      "supervisorName": "SHANE WIEGAND"
    },
    {
      "employeeID": "0000053761",
      "firstName": "Amy",
      "lastName": "Talkington",
      "displayName": "AMY TALKINGTON",
      "email": "atalking@fmi.com",
      "jobTitle": "Mgr Corporate Communications Admin Func",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000053761.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000050020",
      "supervisorName": "RUTHANNE VAN DYKE"
    },
    {
      "employeeID": "0060043276",
      "firstName": "Stanberg",
      "lastName": "Tallman",
      "displayName": "STANBERG TALLMAN",
      "email": "stallman@fmi.com",
      "jobTitle": "Sr Process Ldr Supply Chain",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060043276.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054547",
      "supervisorName": "CYNTHIA BARBER"
    },
    {
      "employeeID": "0061000818",
      "firstName": "Irene",
      "lastName": "Tan",
      "displayName": "IRENE TAN",
      "email": "itan@fmi.com",
      "jobTitle": "Sr Tax Analyst",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061000818.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090148",
      "supervisorName": "COURTNEY GIESSLER"
    },
    {
      "employeeID": "0061003130",
      "firstName": "Fanqi",
      "lastName": "Tang",
      "displayName": "FANQI TANG",
      "email": "ftang@fmi.com",
      "jobTitle": "Sr Marketing Analyst",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003130.jpg",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0000067679",
      "supervisorName": "LEONARD HU"
    },
    {
      "employeeID": "0000067485",
      "firstName": "Jose Ramon",
      "lastName": "Taningco",
      "displayName": "JOSE RAMON TANINGCO",
      "email": "jtaningc@fmi.com",
      "jobTitle": "Country Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067485.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000017473",
      "supervisorName": "GREG COFFIN"
    },
    {
      "employeeID": "0061900001",
      "firstName": "Frank",
      "lastName": "Tank",
      "displayName": "FRANK TANK",
      "email": "",
      "jobTitle": "Bus Solution Architect III FA & HR",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065701.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "62945",
      "supervisorName": ""
    },
    {
      "employeeID": "0060081255",
      "firstName": "Brett",
      "lastName": "Tanner",
      "displayName": "BRETT TANNER",
      "email": "btanner1@fmi.com",
      "jobTitle": "CTI Inc",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081255.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060023799",
      "supervisorName": "ANGELA EDGMON"
    },
    {
      "employeeID": "0000017870",
      "firstName": "Steven",
      "lastName": "Tanner",
      "displayName": "STEVE TANNER",
      "email": "stanner@fmi.com",
      "jobTitle": "VP & CFO FM Americas & Controller Ops",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000017870.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051953",
      "supervisorName": "KATHLEEN QUIRK"
    },
    {
      "employeeID": "0000059921",
      "firstName": "Kathleen",
      "lastName": "Tassoul",
      "displayName": "KATHY TASSOUL",
      "email": "ktassoul@fmi.com",
      "jobTitle": "Executive Secretary",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000059921.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000014184",
      "supervisorName": "JOSH OLMSTED"
    },
    {
      "employeeID": "0060083254",
      "firstName": "Bezhan",
      "lastName": "Tayebi",
      "displayName": "BEZHAN TAYEBI",
      "email": "btayebi@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060083254.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060077837",
      "firstName": "Emily",
      "lastName": "Taylor",
      "displayName": "EMILY TAYLOR",
      "email": "etaylor2@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077837.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0000054986",
      "firstName": "Keith",
      "lastName": "Taylor",
      "displayName": "KEITH TAYLOR",
      "email": "ktaylor1@fmi.com",
      "jobTitle": "Chief Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054986.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0060072868",
      "supervisorName": "JACQUES NGUZ TSHISENS"
    },
    {
      "employeeID": "0000088015",
      "firstName": "Lisa",
      "lastName": "Taylor",
      "displayName": "LISA TAYLOR",
      "email": "ltaylor1@fmi.com",
      "jobTitle": "Contract Ld",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088015.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000063218",
      "supervisorName": "BRITTANY STAMEY"
    },
    {
      "employeeID": "0000062817",
      "firstName": "Steve",
      "lastName": "Taylor",
      "displayName": "STEVE TAYLOR",
      "email": "staylor@fmi.com",
      "jobTitle": "PMO",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000062817.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000065010",
      "supervisorName": "JAMES PATTERSON"
    },
    {
      "employeeID": "0000067385",
      "firstName": "Kym",
      "lastName": "Taylor-Ward",
      "displayName": "KYM TAYLOR-WARD",
      "email": "ktaylorw@fmi.com",
      "jobTitle": "Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067385.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000067386",
      "supervisorName": "FELICITY MAUGER"
    },
    {
      "employeeID": "0060074876",
      "firstName": "Marcelo",
      "lastName": "Teixeira",
      "displayName": "MARCELO TEIXEIRA",
      "email": "mteixeir@fmi.com",
      "jobTitle": "Mine Engineer I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060074876.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000096424",
      "supervisorName": "RODRICK FAIRBAIRN"
    },
    {
      "employeeID": "0060088130",
      "firstName": "Raffy",
      "lastName": "Tekeyan",
      "displayName": "RAFFY TEKEYAN",
      "email": "rtekeyan@fmi.com",
      "jobTitle": "Commissioning Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088130.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015637",
      "supervisorName": "CLINTON CROTTS"
    },
    {
      "employeeID": "0060088559",
      "firstName": "Vartan",
      "lastName": "Tekeyan",
      "displayName": "VARTAN TEKEYAN",
      "email": "vtekeyan@fmi.com",
      "jobTitle": "Commissioning Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088559.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015637",
      "supervisorName": "CLINTON CROTTS"
    },
    {
      "employeeID": "0000051701",
      "firstName": "James",
      "lastName": "Telle",
      "displayName": "JAMES TELLE",
      "email": "jtelle@fmi.com",
      "jobTitle": "Mgr Communications",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051701.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015409",
      "supervisorName": "LINDA HAYES"
    },
    {
      "employeeID": "0060081746",
      "firstName": "Alexandra",
      "lastName": "Teran",
      "displayName": "ALEXANDRA TERAN",
      "email": "ateran1@fmi.com",
      "jobTitle": "Lead Assessor / Client Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081746.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000027435",
      "supervisorName": "BRANDON GILLEY"
    },
    {
      "employeeID": "0000060827",
      "firstName": "Ilya",
      "lastName": "Terentyev",
      "displayName": "ILYA TERENTYEV",
      "email": "iterenty@fmi.com",
      "jobTitle": "Sr Geologist Modeler",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000060827.jpg",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000010948",
      "supervisorName": "MAC CANBY"
    },
    {
      "employeeID": "0000053371",
      "firstName": "Gladys",
      "lastName": "Terrey",
      "displayName": "GLADYS TERREY",
      "email": "gterrey@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000053371.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062686",
      "supervisorName": "CHRISTOPHER LYON"
    },
    {
      "employeeID": "0060037615",
      "firstName": "Faylynn",
      "lastName": "Tewawina",
      "displayName": "FAYLYNN TEWAWINA",
      "email": "ftewawin@fmi.com",
      "jobTitle": "Admin Assistant-Native American Program",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060037615.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060060612",
      "supervisorName": "ONDREA BARBER"
    },
    {
      "employeeID": "0060039125",
      "firstName": "Ren",
      "lastName": "Thatcher",
      "displayName": "REN THATCHER",
      "email": "rthatche@fmi.com",
      "jobTitle": "Sr Process Ldr - Policy/Audit/Fraud",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060039125.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015989",
      "supervisorName": "KELLY BAKER"
    },
    {
      "employeeID": "0000087172",
      "firstName": "Andrea",
      "lastName": "Thibodaux",
      "displayName": "ANDREA THIBODAUX",
      "email": "athiboda@fmi.com",
      "jobTitle": "Office Services Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000087172.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000016865",
      "supervisorName": "JANICE SINGLETON"
    },
    {
      "employeeID": "0000087143",
      "firstName": "Laura",
      "lastName": "Thibodaux",
      "displayName": "LAURA THIBODAUX",
      "email": "lthiboda@fmi.com",
      "jobTitle": "Sr Admin Assistant - Facilities",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000087143.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000016865",
      "supervisorName": "JANICE SINGLETON"
    },
    {
      "employeeID": "0060053797",
      "firstName": "Andy",
      "lastName": "Thiel",
      "displayName": "ANDY THIEL",
      "email": "athiel@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060053797.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000027435",
      "supervisorName": "BRANDON GILLEY"
    },
    {
      "employeeID": "0060082252",
      "firstName": "Hanumantharaya",
      "lastName": "Thimmaraya",
      "displayName": "HANUMANTHARAYA THIMMARAYA",
      "email": "hthimmar@fmi.com",
      "jobTitle": "Master Data Administrator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060082252.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000019708",
      "supervisorName": "AUDREY MERTES"
    },
    {
      "employeeID": "0060087236",
      "firstName": "Tiffany",
      "lastName": "Thindwa",
      "displayName": "TIFFANY THINDWA",
      "email": "tthindwa@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087236.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0000067760",
      "firstName": "Anne",
      "lastName": "Thomas",
      "displayName": "ANNE THOMAS",
      "email": "athomas@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067760.jpg",
      "companyDescription": "Western Nuclear Inc",
      "supervisorID": "0000013512",
      "supervisorName": "LARRY CORTE"
    },
    {
      "employeeID": "0060059150",
      "firstName": "Cortez",
      "lastName": "Thomas",
      "displayName": "CORTEZ THOMAS",
      "email": "cthomas@fmi.com",
      "jobTitle": "Security Officer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060059150.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055243",
      "supervisorName": "JOCHEN GLISS"
    },
    {
      "employeeID": "0000085371",
      "firstName": "Dora",
      "lastName": "Thomas",
      "displayName": "DORA THOMAS",
      "email": "dthomas3@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085371.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085575",
      "supervisorName": "SCOTT DAVIDSON"
    },
    {
      "employeeID": "0060079123",
      "firstName": "Michael",
      "lastName": "Thomas",
      "displayName": "MICHAEL THOMAS",
      "email": "mthomas4@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079123.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089084",
      "supervisorName": "AMANDA HERNANDEZ"
    },
    {
      "employeeID": "0060060448",
      "firstName": "Samuel",
      "lastName": "Thomas",
      "displayName": "SAMUEL THOMAS",
      "email": "sthomas@fmi.com",
      "jobTitle": "Sr Contract Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060060448.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088015",
      "supervisorName": "LISA TAYLOR"
    },
    {
      "employeeID": "0060085202",
      "firstName": "Sneha",
      "lastName": "Thomas",
      "displayName": "SNEHA THOMAS",
      "email": "sthomas2@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085202.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060079760",
      "firstName": "Allison",
      "lastName": "Thompson",
      "displayName": "ALLISON THOMPSON",
      "email": "athompso2@fmi.com",
      "jobTitle": "Contractor - Benefit Representative",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079760.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028334",
      "supervisorName": "RACHAEL LAUFENBERG"
    },
    {
      "employeeID": "0060015823",
      "firstName": "Margaret",
      "lastName": "Thompson",
      "displayName": "MARGARET THOMPSON",
      "email": "mthompso1@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060015823.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052232",
      "supervisorName": "HUGH DONAHUE"
    },
    {
      "employeeID": "0061002587",
      "firstName": "Matthew",
      "lastName": "Thompson",
      "displayName": "MATT THOMPSON",
      "email": "mthompso8@fmi.com",
      "jobTitle": "HR Metrics & Reporting Analyst I",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002587.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056705",
      "supervisorName": "SEAN ELCOCK"
    },
    {
      "employeeID": "0060069298",
      "firstName": "Gamae",
      "lastName": "Thornton",
      "displayName": "GAMAE THORNTON",
      "email": "gthornto@fmi.com",
      "jobTitle": "Sr Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060069298.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030596",
      "supervisorName": "DAVE SOVELL"
    },
    {
      "employeeID": "0000088573",
      "firstName": "Michael",
      "lastName": "Tierney",
      "displayName": "MICHAEL TIERNEY",
      "email": "mtierney@fmi.com",
      "jobTitle": "Bus Solution Architect III FA & HR",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088573.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062945",
      "supervisorName": "TARA GIESINGER"
    },
    {
      "employeeID": "0000085350",
      "firstName": "Paula",
      "lastName": "Tierney",
      "displayName": "PAULA TIERNEY",
      "email": "ptierney@fmi.com",
      "jobTitle": "Sr Accountant Joint Interest",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085350.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000086419",
      "supervisorName": "JAQUIE ALCANTAR"
    },
    {
      "employeeID": "0000058306",
      "firstName": "Amanda",
      "lastName": "Till",
      "displayName": "AMANDA TILL",
      "email": "atill@fmi.com",
      "jobTitle": "Accountant Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000058306.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055671",
      "supervisorName": "STEVE DEVORE"
    },
    {
      "employeeID": "0000060442",
      "firstName": "Lisa",
      "lastName": "Timmons",
      "displayName": "LISA TIMMONS",
      "email": "ltimmons@fmi.com",
      "jobTitle": "Sr HR Systems Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000060442.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030627",
      "supervisorName": "KAREN EICHHORST"
    },
    {
      "employeeID": "0000016335",
      "firstName": "Terry",
      "lastName": "Tipton",
      "displayName": "TERRY TIPTON",
      "email": "ttipton@fmi.com",
      "jobTitle": "Spt Operational Improvement",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000016335.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000016916",
      "supervisorName": "TOBY DUNN"
    },
    {
      "employeeID": "0061000519",
      "firstName": "Francesco",
      "lastName": "Tirone",
      "displayName": "FRANK TIRONE",
      "email": null,
      "jobTitle": "IT Project Manager II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000519.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062697",
      "supervisorName": "ANDREW GLUVNA"
    },
    {
      "employeeID": "0000063164",
      "firstName": "Jennifer",
      "lastName": "Tittes",
      "displayName": "JENNIFER TITTES",
      "email": "jtittes@fmi.com",
      "jobTitle": "Sr Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000063164.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060065305",
      "supervisorName": "BRENT HANSEN"
    },
    {
      "employeeID": "0000062986",
      "firstName": "Chris",
      "lastName": "Todaro",
      "displayName": "CHRIS TODARO",
      "email": "ctodaro@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000062986.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060043963",
      "firstName": "Ernesto",
      "lastName": "Tom Cordova",
      "displayName": "ERNESTO TOM CORDOVA",
      "email": "etomcord@fmi.com",
      "jobTitle": "Sr Designer/Drafter",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060043963.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060076714",
      "supervisorName": "FANUEL BANDA"
    },
    {
      "employeeID": "0060043330",
      "firstName": "Jammin",
      "lastName": "Torres",
      "displayName": "JAMMIN TORRES",
      "email": "jtorres8@fmi.com",
      "jobTitle": "Draftsman",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060043330.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0060076714",
      "supervisorName": "FANUEL BANDA"
    },
    {
      "employeeID": "0061001808",
      "firstName": "Mari",
      "lastName": "Torres",
      "displayName": "MARI TORRES",
      "email": "mtorres7@fmi.com",
      "jobTitle": "Bus Solution Arch II - Exploration, Met",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001808.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051441",
      "supervisorName": "PAUL WHITEAKER"
    },
    {
      "employeeID": "0060075612",
      "firstName": "Kirill",
      "lastName": "Toun",
      "displayName": "KIRK TOUN",
      "email": "ktoun@fmi.com",
      "jobTitle": "Sr Desktop Support Technician",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060075612.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060056603",
      "supervisorName": "PAUL SMIGEL"
    },
    {
      "employeeID": "0060074275",
      "firstName": "Carlie",
      "lastName": "Tovrea",
      "displayName": "CARLIE TOVREA",
      "email": "ctovrea@fmi.com",
      "jobTitle": "Attorney",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060074275.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089905",
      "supervisorName": "SCOTT STATHAM"
    },
    {
      "employeeID": "0060033116",
      "firstName": "Kelly",
      "lastName": "Trahant",
      "displayName": "KELLY TRAHANT",
      "email": "ktrahant@fmi.com",
      "jobTitle": "HR Coordinator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060033116.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000087015",
      "supervisorName": "HENRI STOUT"
    },
    {
      "employeeID": "0060087400",
      "firstName": "Bert",
      "lastName": "Trantham",
      "displayName": "BERT TRANTHAM",
      "email": "btrantha@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087400.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000013819",
      "supervisorName": "RENE REYES"
    },
    {
      "employeeID": "0000057338",
      "firstName": "Kevin",
      "lastName": "Trasente",
      "displayName": "KEVIN TRASENTE",
      "email": "ktrasent@fmi.com",
      "jobTitle": "Facilities Ld",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000057338.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054298",
      "supervisorName": "PAM MASSON"
    },
    {
      "employeeID": "0000086277",
      "firstName": "Terri",
      "lastName": "Travirca",
      "displayName": "TERRI TRAVIRCA",
      "email": "ttravirc@fmi.com",
      "jobTitle": "Mgr Tax",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086277.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000011676",
      "supervisorName": "CHARLIE NEWELL"
    },
    {
      "employeeID": "0000017001",
      "firstName": "David",
      "lastName": "Travis",
      "displayName": "DAVE TRAVIS",
      "email": "dtravis@fmi.com",
      "jobTitle": "VP Mine Planning",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000017001.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017690",
      "supervisorName": "RED CONGER"
    },
    {
      "employeeID": "0060075103",
      "firstName": "Cory",
      "lastName": "Treloar",
      "displayName": "CORY TRELOAR",
      "email": "ctreloar@fmi.com",
      "jobTitle": "Industrial Hygienist I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060075103.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060055263",
      "supervisorName": "MACK BILLIN"
    },
    {
      "employeeID": "0060078687",
      "firstName": "Adam",
      "lastName": "Tressler",
      "displayName": "ADAM TRESSLER",
      "email": "atressle@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078687.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000058233",
      "supervisorName": "TONYA HUGHES"
    },
    {
      "employeeID": "0000087007",
      "firstName": "Justin",
      "lastName": "Trick",
      "displayName": "JUSTIN TRICK",
      "email": "jtrick@fmi.com",
      "jobTitle": "Mgr Contracts II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000087007.JPG",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085055",
      "supervisorName": "TIM CASTEN"
    },
    {
      "employeeID": "0061000174",
      "firstName": "Justin",
      "lastName": "Trick",
      "displayName": "JUSTIN TRICK",
      "email": "jtrick1@fmi.com",
      "jobTitle": "Mgr Contracts II",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061000174.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000085055",
      "supervisorName": "TIM CASTEN"
    },
    {
      "employeeID": "0060080473",
      "firstName": "Steven",
      "lastName": "Trimboli",
      "displayName": "STEVEN TRIMBOLI",
      "email": "strimbol@fmi.com",
      "jobTitle": "Desktop Support",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080473.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060056603",
      "supervisorName": "PAUL SMIGEL"
    },
    {
      "employeeID": "0060030044",
      "firstName": "Michael",
      "lastName": "Tritt",
      "displayName": "MIKE TRITT",
      "email": "mtritt@fmi.com",
      "jobTitle": "Sr Contract Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060030044.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088015",
      "supervisorName": "LISA TAYLOR"
    },
    {
      "employeeID": "0061000171",
      "firstName": "Keely",
      "lastName": "Trocquet",
      "displayName": "KEELY TROCQUET",
      "email": "ktrocque1@fmi.com",
      "jobTitle": "Environmental Engineer I",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061000171.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0061000132",
      "supervisorName": "ERIC JOVANOVICH"
    },
    {
      "employeeID": "0000030114",
      "firstName": "Mary",
      "lastName": "Trotto",
      "displayName": "MARY TROTTO",
      "email": "mtrotto@fmi.com",
      "jobTitle": "Ld HRMS Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030114.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000028822",
      "supervisorName": "LISA HANSEN"
    },
    {
      "employeeID": "0000086430",
      "firstName": "Heather",
      "lastName": "Trumble",
      "displayName": "HEATHER TRUMBLE",
      "email": "htrumble@fmi.com",
      "jobTitle": "Communications Project Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086430.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000054062",
      "supervisorName": "GREG PROBST"
    },
    {
      "employeeID": "0000091920",
      "firstName": "Delbert",
      "lastName": "Tso",
      "displayName": "DELBERT TSO",
      "email": "dtso@fmi.com",
      "jobTitle": "HR Specialist-Screening & COE",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000091920.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024126",
      "supervisorName": "MICHELLE STONEHOUSE"
    },
    {
      "employeeID": "0060088708",
      "firstName": "Steve",
      "lastName": "Tuccio",
      "displayName": "STEVE TUCCIO",
      "email": null,
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088708.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051441",
      "supervisorName": "PAUL WHITEAKER"
    },
    {
      "employeeID": "0060087700",
      "firstName": "Kim",
      "lastName": "Tucker",
      "displayName": "KIM TUCKER",
      "email": "ktucker1@fmi.com",
      "jobTitle": "Project Controls Lead",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087700.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060059583",
      "firstName": "Kathy",
      "lastName": "Turany",
      "displayName": "KATHY TURANY",
      "email": "kturany@fmi.com",
      "jobTitle": "Sr Admin Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060059583.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056399",
      "supervisorName": "LAUREN FRANK"
    },
    {
      "employeeID": "0061000183",
      "firstName": "Lisa",
      "lastName": "Turner",
      "displayName": "LISA TURNER",
      "email": "lturner1@fmi.com",
      "jobTitle": "Executive Secretary",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000183.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051194",
      "supervisorName": "BOB BOYCE"
    },
    {
      "employeeID": "0060089374",
      "firstName": "Jason",
      "lastName": "Turpin",
      "displayName": "JASON TURPIN",
      "email": "jturpin@fmi.com",
      "jobTitle": "Microsoft Consultant",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089374.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000019320",
      "supervisorName": "CHRIS HUGHES"
    },
    {
      "employeeID": "0000051980",
      "firstName": "Stephanie",
      "lastName": "Turton",
      "displayName": "STEPHANIE TURTON",
      "email": "sturton@fmi.com",
      "jobTitle": "Land & Water Resource Coord",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051980.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060034177",
      "supervisorName": "CAROLYN LODER"
    },
    {
      "employeeID": "0060081505",
      "firstName": "Maria",
      "lastName": "Tzoka",
      "displayName": "MARIA TZOKA",
      "email": "mtzoka@fmi.com",
      "jobTitle": "Data Science Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081505.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060046186",
      "supervisorName": "ALEX MARCHICELLI"
    },
    {
      "employeeID": "0060070555",
      "firstName": "Sandra",
      "lastName": "Udall Robinson",
      "displayName": "SANDRA UDALL ROBINSON",
      "email": "sudall1@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060070555.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0000095145",
      "firstName": "Chad",
      "lastName": "Udovich",
      "displayName": "CHAD UDOVICH",
      "email": "cudovich@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000095145.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055955",
      "supervisorName": "CAROLYN GAFFNEY"
    },
    {
      "employeeID": "0060081404",
      "firstName": "Viran",
      "lastName": "Uduman",
      "displayName": "VIRAN UDUMAN",
      "email": "vuduman@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081404.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088202",
      "supervisorName": "TOM STUFFCO"
    },
    {
      "employeeID": "0000090769",
      "firstName": "Koji",
      "lastName": "Ueyama",
      "displayName": "KOJI UEYAMA",
      "email": "kueyama@fmi.com",
      "jobTitle": "Account Mgr Sales",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090769.jpg",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0000025763",
      "supervisorName": "GEORGE PEARSON"
    },
    {
      "employeeID": "0000095493",
      "firstName": "Anna",
      "lastName": "Ulloa",
      "displayName": "ANNA ULLOA",
      "email": "aulloa@fmi.com",
      "jobTitle": "Compensation Representative",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000095493.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000093801",
      "supervisorName": "MELISSA ELRICK"
    },
    {
      "employeeID": "0060080459",
      "firstName": "Charlene",
      "lastName": "Ulrich",
      "displayName": "CHARLENE ULRICH",
      "email": "culrich@fmi.com",
      "jobTitle": "Data Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060080459.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060050437",
      "supervisorName": "MICHAEL BISCHOF"
    },
    {
      "employeeID": "0060086119",
      "firstName": "Matthew",
      "lastName": "Ulrich",
      "displayName": "MATTHEW ULRICH",
      "email": "mulrich@fmi.com",
      "jobTitle": "Accenture Technology Account Lead",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086119.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000081075",
      "supervisorName": "BERT ODINET"
    },
    {
      "employeeID": "0060085240",
      "firstName": "Maarit",
      "lastName": "Ulvinen",
      "displayName": "MAARIT ULVINEN",
      "email": "mulvinen@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085240.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060081745",
      "firstName": "Philip",
      "lastName": "Underhill",
      "displayName": "PHILIP UNDERHILL",
      "email": "punderhi@fmi.com",
      "jobTitle": "Lead Assessor / Client Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081745.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000027435",
      "supervisorName": "BRANDON GILLEY"
    },
    {
      "employeeID": "0060061716",
      "firstName": "Vivekananda Reddy",
      "lastName": "Uppaluri",
      "displayName": "VIVEKANANDA REDDY UPPALURI",
      "email": "vuppalur@fmi.com",
      "jobTitle": "Hadoop Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060061716.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0061001332",
      "firstName": "Albert",
      "lastName": "Urbieta",
      "displayName": "ALBERT URBIETA",
      "email": "aurbieta1@fmi.com",
      "jobTitle": "Financial Reporting Accountant I",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001332.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054218",
      "supervisorName": "PAT PREJEAN"
    },
    {
      "employeeID": "0061002410",
      "firstName": "Joseph",
      "lastName": "Utley",
      "displayName": "JOE UTLEY",
      "email": "jutley@fmi.com",
      "jobTitle": "Sr Credit Analyst",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002410.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017273",
      "supervisorName": "JON BORGE"
    },
    {
      "employeeID": "0060072259",
      "firstName": "Andrea",
      "lastName": "Vaccari",
      "displayName": "ANDREA VACCARI",
      "email": "avaccari@fmi.com",
      "jobTitle": "Director Product Stewardship",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060072259.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000050843",
      "supervisorName": "BILL COBB"
    },
    {
      "employeeID": "0060071120",
      "firstName": "Joseph",
      "lastName": "Vaccari",
      "displayName": "JOE VACCARI",
      "email": "jvaccari@fmi.com",
      "jobTitle": "Spt Operational Improvement",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060071120.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000020597",
      "supervisorName": "LEELAND BODAY"
    },
    {
      "employeeID": "0060087940",
      "firstName": "Saleem",
      "lastName": "Vadamiyan",
      "displayName": "SALEEM VADAMIYAN",
      "email": "svadamiy@fmi.com",
      "jobTitle": "Systems Integrator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087940.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000088954",
      "supervisorName": "MIKE LEMMOND"
    },
    {
      "employeeID": "0000053411",
      "firstName": "Chandramouleeswaran",
      "lastName": "Vaidyanathan",
      "displayName": "CHANDRAMOULEESWARAN VAIDYANATHAN",
      "email": "cvaidyan@fmi.com",
      "jobTitle": "Mgr Global Product Planning & Quality",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000053411.JPG",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0000056651",
      "supervisorName": "CHRIS GNANN"
    },
    {
      "employeeID": "0000030222",
      "firstName": "Antonia",
      "lastName": "Valdes",
      "displayName": "ANTONIA VALDES",
      "email": "avaldes@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030222.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055534",
      "supervisorName": "STEVEN BACASHIHUA"
    },
    {
      "employeeID": "0060089327",
      "firstName": "Hugo",
      "lastName": "Valdes",
      "displayName": "HUGO VALDES",
      "email": "hvaldes@fmi.com",
      "jobTitle": "ROD & COMPANY",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089327.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0000061174",
      "firstName": "Amy",
      "lastName": "Valdez",
      "displayName": "AMY VALDEZ",
      "email": "avaldez2@fmi.com",
      "jobTitle": "Ld Sales Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000061174.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000017824",
      "supervisorName": "CINDY BURAS"
    },
    {
      "employeeID": "0060089333",
      "firstName": "Jorge",
      "lastName": "Valencia",
      "displayName": "JORGE VALENCIA",
      "email": "jvalenci7@fmi.com",
      "jobTitle": "ROD & COMPANY",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089333.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060032688",
      "firstName": "Scott",
      "lastName": "Valentine",
      "displayName": "SCOTT VALENTINE",
      "email": "svalenti1@fmi.com",
      "jobTitle": "Process Ldr Supply Chain-Transportation",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060032688.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060057313",
      "supervisorName": "AARON FRIEDMAN"
    },
    {
      "employeeID": "0000066980",
      "firstName": "Deborah",
      "lastName": "Valle",
      "displayName": "DEBORAH VALLE",
      "email": "dvalle1@fmi.com",
      "jobTitle": "Payroll & Tax Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000066980.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000061085",
      "supervisorName": "NANCY MARSHALL"
    },
    {
      "employeeID": "0000055156",
      "firstName": "Mark",
      "lastName": "Van Arsdale",
      "displayName": "MARK VAN ARSDALE",
      "email": "mvanarsd@fmi.com",
      "jobTitle": "Spt Technical",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000055156.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0060018940",
      "supervisorName": "ENEAS EDWIN CALIZAYA"
    },
    {
      "employeeID": "0000067937",
      "firstName": "Francois",
      "lastName": "Van de Wille",
      "displayName": "FRANK VAN DE WILLE",
      "email": "fvandewi@fmi.com",
      "jobTitle": "General Mgr Resource Development",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067937.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000029601",
      "supervisorName": "DAN KRAVETS"
    },
    {
      "employeeID": "0000050020",
      "firstName": "Ruthanne",
      "lastName": "Van Dyke",
      "displayName": "RUTHANNE VAN DYKE",
      "email": "rvandyke@fmi.com",
      "jobTitle": "Dir Corp Comm & Editorial Ops",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000050020.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000015409",
      "supervisorName": "LINDA HAYES"
    },
    {
      "employeeID": "0000066812",
      "firstName": "Yanira",
      "lastName": "Van Horn",
      "displayName": "YANI VAN HORN",
      "email": "yvanhorn@fmi.com",
      "jobTitle": "Sr HR Systems Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000066812.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030627",
      "supervisorName": "KAREN EICHHORST"
    },
    {
      "employeeID": "0060057025",
      "firstName": "Jonathan",
      "lastName": "van Kempen",
      "displayName": "JONATHAN VAN KEMPEN",
      "email": "jkempen@fmi.com",
      "jobTitle": "Dir Strategic Resource Development",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060057025.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000029601",
      "supervisorName": "DAN KRAVETS"
    },
    {
      "employeeID": "0000089542",
      "firstName": "Neal",
      "lastName": "Van Norman",
      "displayName": "NEAL VAN NORMAN",
      "email": "nvannorm@fmi.com",
      "jobTitle": "Intl HR Generalist ll",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000089542.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000087015",
      "supervisorName": "HENRI STOUT"
    },
    {
      "employeeID": "0061003242",
      "firstName": "Bernice",
      "lastName": "Van Parys",
      "displayName": "BERNICE VAN PARYS",
      "email": "bvanpary@fmi.com",
      "jobTitle": "Executive Secretary",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003242.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000023361",
      "supervisorName": "STACEY KOON"
    },
    {
      "employeeID": "0060086375",
      "firstName": "John",
      "lastName": "Van Slyke",
      "displayName": "JOHN VAN SLYKE",
      "email": "jvanslyk@fmi.com",
      "jobTitle": "Project Controls",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086375.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0060060588",
      "supervisorName": "DAVID BRAECKOW"
    },
    {
      "employeeID": "0060073480",
      "firstName": "Lisa",
      "lastName": "Vandekop",
      "displayName": "LISA VANDEKOP",
      "email": "lvandeko@fmi.com",
      "jobTitle": "Senior Document Management/Doc Controls",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060073480.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0060025043",
      "supervisorName": "DAVID DEAN"
    },
    {
      "employeeID": "0060084894",
      "firstName": "Clarissa",
      "lastName": "Vardini",
      "displayName": "CLARISSA VARDINI",
      "email": "cvardini@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060084894.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000066004",
      "firstName": "Fernando",
      "lastName": "Vargas",
      "displayName": "FERNANDO VARGAS",
      "email": "fvargas@fmi.com",
      "jobTitle": "Mgr Economic Analysis",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000066004.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024792",
      "supervisorName": "JASON BOWSHER"
    },
    {
      "employeeID": "0060073508",
      "firstName": "Mariel",
      "lastName": "Vargas",
      "displayName": "MARIEL VARGAS",
      "email": "mvargas5@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060073508.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060077681",
      "firstName": "Belkis",
      "lastName": "Vasquez-McCall",
      "displayName": "BELKIS VASQUEZ-MCCALL",
      "email": "bvasquez1@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077681.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0000028231",
      "firstName": "Lucretia",
      "lastName": "Vayan",
      "displayName": "LUCRETIA VAYAN",
      "email": "lvayan@fmi.com",
      "jobTitle": "Benefits Specialist I",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000028231.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000013956",
      "supervisorName": "LISA JENSEN"
    },
    {
      "employeeID": "0000067884",
      "firstName": "Rovi",
      "lastName": "Velasquez",
      "displayName": "ROVI VELASQUEZ",
      "email": "rvelasqu@fmi.com",
      "jobTitle": "Geologist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067884.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000067485",
      "supervisorName": "JOSE RAMON TANINGCO"
    },
    {
      "employeeID": "0060088255",
      "firstName": "Jose",
      "lastName": "Velazquez",
      "displayName": "JOSE VELAZQUEZ",
      "email": "jvelazqu@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088255.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000065184",
      "firstName": "Kent",
      "lastName": "Veldhuizen",
      "displayName": "KENT VELDHUIZEN",
      "email": "kveldhui@fmi.com",
      "jobTitle": "SAP Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000065184.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000050159",
      "supervisorName": "RICH SUTKOWI"
    },
    {
      "employeeID": "0060025895",
      "firstName": "Muthusivan",
      "lastName": "Vellapandian",
      "displayName": "MUTHUSIVAN VELLAPANDIAN",
      "email": "mvellapa@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060025895.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0000088846",
      "firstName": "Kaarthi",
      "lastName": "Vellingiri",
      "displayName": "KAARTHI VELLINGIRI",
      "email": "kvelling@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088846.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0060081020",
      "firstName": "Madipadiga",
      "lastName": "Venkatesh",
      "displayName": "MADIPADIGA VENKATESH",
      "email": "mvenkate@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081020.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060088421",
      "firstName": "Sreeman",
      "lastName": "Venkatesh",
      "displayName": "SREEMAN VENKATESH",
      "email": "svenkate2@fmi.com",
      "jobTitle": "PROMETHEUS GROUP ENTERPRISE LLC",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088421.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0060076376",
      "firstName": "Srinivasan",
      "lastName": "Venkatesh",
      "displayName": "SRINIVASAN VENKATESH",
      "email": "svenkate1@fmi.com",
      "jobTitle": "BI Developer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076376.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0000096525",
      "firstName": "Subbaraman",
      "lastName": "Venkateswaran",
      "displayName": "SUBBA VENKATESWARAN",
      "email": "svenkate@fmi.com",
      "jobTitle": "Ldr Supply Chain Analytics",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000096525.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000056982",
      "supervisorName": "BRIAN BUTTRAM"
    },
    {
      "employeeID": "0000085082",
      "firstName": "Chad",
      "lastName": "Ventola",
      "displayName": "CHAD VENTOLA",
      "email": "cventola@fmi.com",
      "jobTitle": "Vice President - Finance",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085082.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051953",
      "supervisorName": "KATHLEEN QUIRK"
    },
    {
      "employeeID": "0060085586",
      "firstName": "Francisco Alberto",
      "lastName": "Vera Cruz",
      "displayName": "FRANCISCO ALBERTO VERA CRUZ",
      "email": "fveracru@fmi.com",
      "jobTitle": "M365 Business Analyst",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085586.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000093642",
      "supervisorName": "RAJESH NAGABOINA"
    },
    {
      "employeeID": "0061001439",
      "firstName": "Michelle",
      "lastName": "Verga",
      "displayName": "MICHELLE VERGA",
      "email": "mverga@fmi.com",
      "jobTitle": "Sr International Tax Analyst",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001439.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062617",
      "supervisorName": "SAMUEL ROOT"
    },
    {
      "employeeID": "0000090017",
      "firstName": "Sachin",
      "lastName": "Verma",
      "displayName": "SACHIN VERMA",
      "email": "sverma1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090017.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0061004039",
      "firstName": "Seth",
      "lastName": "Verville",
      "displayName": "SETH VERVILLE",
      "email": "svervill1@fmi.com",
      "jobTitle": "Temporary Non-Summer Intern",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061004039.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000092206",
      "supervisorName": "ADAM CLARKSON"
    },
    {
      "employeeID": "0060054515",
      "firstName": "Andre",
      "lastName": "Vien",
      "displayName": "ANDRE VIEN",
      "email": "avien@fmi.com",
      "jobTitle": "Sr Mgr Metallurgy & Process Development",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060054515.jpg",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0000067840",
      "supervisorName": "MIKE MULAR"
    },
    {
      "employeeID": "0060076747",
      "firstName": "Richard",
      "lastName": "Vinroot",
      "displayName": "RICHARD VINROOT",
      "email": "rvinroot@fmi.com",
      "jobTitle": "VP Medical Director",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060076747.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000068017",
      "supervisorName": "BILL HARRIS"
    },
    {
      "employeeID": "0061002035",
      "firstName": "Tori",
      "lastName": "Volland",
      "displayName": "TORI VOLLAND",
      "email": "tvolland@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002035.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0000051658",
      "firstName": "William",
      "lastName": "von Kolen",
      "displayName": "BILL VON KOLEN",
      "email": "bvonkole@fmi.com",
      "jobTitle": "Dir Global Tax Compliance & Technology",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051658.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052232",
      "supervisorName": "HUGH DONAHUE"
    },
    {
      "employeeID": "0060079892",
      "firstName": "Turan",
      "lastName": "Vural",
      "displayName": "TURAN VURAL",
      "email": "tvural@fmi.com",
      "jobTitle": "Security Scripting Consultant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079892.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094981",
      "supervisorName": "TINA SLANKAS"
    },
    {
      "employeeID": "0060074858",
      "firstName": "Jared",
      "lastName": "Wagoner",
      "displayName": "JARED WAGONER",
      "email": "jwagoner1@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060074858.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000061262",
      "supervisorName": "MICHAEL HULSE"
    },
    {
      "employeeID": "0060071924",
      "firstName": "Joey",
      "lastName": "Wakefield",
      "displayName": "JOEY WAKEFIELD",
      "email": "jwakefie@fmi.com",
      "jobTitle": "Sr Recruiter",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060071924.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000090027",
      "supervisorName": "BETSY JOHNSON"
    },
    {
      "employeeID": "0060030181",
      "firstName": "Bryce",
      "lastName": "Walker",
      "displayName": "BRYCE WALKER",
      "email": "bwalker@fmi.com",
      "jobTitle": "Mgr Accounting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060030181.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054218",
      "supervisorName": "PAT PREJEAN"
    },
    {
      "employeeID": "0060033227",
      "firstName": "Lorretta",
      "lastName": "Wall",
      "displayName": "LORRETTA WALL",
      "email": "lwall@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060033227.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060073853",
      "supervisorName": "GRETCHEN DONAHUE"
    },
    {
      "employeeID": "0060060192",
      "firstName": "Michael",
      "lastName": "Wallace",
      "displayName": "MICHAEL WALLACE",
      "email": "mwallace@fmi.com",
      "jobTitle": "GIS Programmer/Developer II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060060192.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000094452",
      "supervisorName": "MARK SCHMELTER"
    },
    {
      "employeeID": "0000051549",
      "firstName": "Melissa",
      "lastName": "Walter",
      "displayName": "MELISSA WALTER",
      "email": "mwalter@fmi.com",
      "jobTitle": "Assistant Controller FMS",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051549.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000054298",
      "supervisorName": "PAM MASSON"
    },
    {
      "employeeID": "0060058554",
      "firstName": "Natalie",
      "lastName": "Wang",
      "displayName": "NATALIE WANG",
      "email": "nwang@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060058554.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000067679",
      "supervisorName": "LEONARD HU"
    },
    {
      "employeeID": "0060081351",
      "firstName": "Shailesh",
      "lastName": "Wanikar",
      "displayName": "SHAILESH WANIKAR",
      "email": "swanikar@fmi.com",
      "jobTitle": "Sr Planner/Scheduler",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081351.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0000030520",
      "firstName": "Donald",
      "lastName": "Warden",
      "displayName": "DON WARDEN",
      "email": "dwarden@fmi.com",
      "jobTitle": "Mgr Business Intelligence",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030520.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062216",
      "supervisorName": "SCOTT BIRMINGHAM"
    },
    {
      "employeeID": "0060079301",
      "firstName": "Kimberly",
      "lastName": "Waskom",
      "displayName": "KIM WASKOM",
      "email": "kwaskom@fmi.com",
      "jobTitle": "Contract Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079301.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0061000316",
      "supervisorName": "JENNIFER HOBBS"
    },
    {
      "employeeID": "0060078658",
      "firstName": "Dora",
      "lastName": "Watanabe",
      "displayName": "DORA WATANABE",
      "email": "dwatanab@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078658.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060086687",
      "firstName": "Marilyn",
      "lastName": "Watkins",
      "displayName": "MARILYN WATKINS",
      "email": "mwatkins2@fmi.com",
      "jobTitle": "Lead Workshop Facilitator",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086687.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000053106",
      "supervisorName": "RYAN DUNNE"
    },
    {
      "employeeID": "0061003300",
      "firstName": "Ian",
      "lastName": "Watson",
      "displayName": "IAN WATSON",
      "email": "iwatson@fmi.com",
      "jobTitle": "Sr Desktop Support Technician",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003300.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059565",
      "supervisorName": "JOSE GRANADO"
    },
    {
      "employeeID": "0060087076",
      "firstName": "Tim",
      "lastName": "Watson",
      "displayName": "TIM WATSON",
      "email": "twatson3@fmi.com",
      "jobTitle": "Project Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060087076.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000066179",
      "supervisorName": "SHANE WIEGAND"
    },
    {
      "employeeID": "0000088472",
      "firstName": "Randall",
      "lastName": "Wawrzyniak-Fry",
      "displayName": "RANDY WAWRZYNIAK-FRY",
      "email": "rwawrzyn@fmi.com",
      "jobTitle": "Inventory Ld",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088472.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000091848",
      "supervisorName": "CHASE PARKER"
    },
    {
      "employeeID": "0000016510",
      "firstName": "Michael",
      "lastName": "Wearne",
      "displayName": "MICHAEL WEARNE",
      "email": "mwearne@fmi.com",
      "jobTitle": "Mgr Accounting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000016510.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000018115",
      "supervisorName": "LEX ZERWAS"
    },
    {
      "employeeID": "0000067741",
      "firstName": "Todd",
      "lastName": "Weaver",
      "displayName": "TODD WEAVER",
      "email": "tweaver1@fmi.com",
      "jobTitle": "Sr Counsel II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067741.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089905",
      "supervisorName": "SCOTT STATHAM"
    },
    {
      "employeeID": "0060085203",
      "firstName": "David",
      "lastName": "Wedrat",
      "displayName": "DAVID WEDRAT",
      "email": "dwedrat@fmi.com",
      "jobTitle": "Solutions Architect & IT Specialist",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085203.jpg",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0060076714",
      "supervisorName": "FANUEL BANDA"
    },
    {
      "employeeID": "0061000419",
      "firstName": "Winnie",
      "lastName": "Wei",
      "displayName": "WINNIE WEI",
      "email": "wwei@fmi.com",
      "jobTitle": "Customer Service Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000419.JPG",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000067679",
      "supervisorName": "LEONARD HU"
    },
    {
      "employeeID": "0000060309",
      "firstName": "Steven",
      "lastName": "Weigley",
      "displayName": "STEVEN WEIGLEY",
      "email": "sweigley@fmi.com",
      "jobTitle": "Ld Systems Integrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000060309.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051441",
      "supervisorName": "PAUL WHITEAKER"
    },
    {
      "employeeID": "0061000026",
      "firstName": "Hilary",
      "lastName": "Weinlein",
      "displayName": "HILARY WEINLEIN",
      "email": "hweinlei@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000026.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0060082070",
      "firstName": "Richard",
      "lastName": "Weir",
      "displayName": "RICHARD WEIR",
      "email": "rweir1@fmi.com",
      "jobTitle": "Scheduler/Planner",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060082070.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0000090226",
      "firstName": "Bradley",
      "lastName": "Weiser",
      "displayName": "BRADLEY WEISER",
      "email": "bweiser1@fmi.com",
      "jobTitle": "Project Assistant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090226.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000067020",
      "supervisorName": "CHRIS CHAMBERS"
    },
    {
      "employeeID": "0000028742",
      "firstName": "Oliver",
      "lastName": "Weishaar",
      "displayName": "OLIVER WEISHAAR",
      "email": "oweishaa@fmi.com",
      "jobTitle": "Ld Systems Integrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000028742.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0000051252",
      "firstName": "Grant",
      "lastName": "Welker",
      "displayName": "GRANT WELKER",
      "email": "gwelker@fmi.com",
      "jobTitle": "Controller FMMC",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051252.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000060006",
      "supervisorName": "RICK COLEMAN"
    },
    {
      "employeeID": "0060088741",
      "firstName": "Deky",
      "lastName": "Werdoko",
      "displayName": "DEKY WERDOKO",
      "email": "dwerdoko@fmi.com",
      "jobTitle": "Safety Supervisor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060088741.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0000096386",
      "firstName": "Christopher",
      "lastName": "Wessel",
      "displayName": "CHRIS WESSEL",
      "email": "cwessel@fmi.com",
      "jobTitle": "Mgr Inventory & Catalog",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000096386.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000011629",
      "supervisorName": "DANNY HUGHES"
    },
    {
      "employeeID": "0060047291",
      "firstName": "Timothy",
      "lastName": "Westgate",
      "displayName": "TIMOTHY WESTGATE",
      "email": "twestgat@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060047291.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028905",
      "supervisorName": "ARI SUPOMO"
    },
    {
      "employeeID": "0000028530",
      "firstName": "Devon",
      "lastName": "Whalen",
      "displayName": "DEVON WHALEN",
      "email": "dwhalen@fmi.com",
      "jobTitle": "Chief Metallurgist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000028530.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000024233",
      "supervisorName": "LEN HILL"
    },
    {
      "employeeID": "0060071799",
      "firstName": "Mike",
      "lastName": "Whalen",
      "displayName": "MIKE WHALEN",
      "email": "mwhalen@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060071799.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060081021",
      "firstName": "Heath",
      "lastName": "Whitaker",
      "displayName": "HEATH WHITAKER",
      "email": "hwhitake@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081021.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060060083",
      "firstName": "Lizabeth",
      "lastName": "White",
      "displayName": "LIZABETH WHITE",
      "email": "lwhite2@fmi.com",
      "jobTitle": "IT Project Mgr II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060060083.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000062697",
      "supervisorName": "ANDREW GLUVNA"
    },
    {
      "employeeID": "0060040447",
      "firstName": "Tanayia",
      "lastName": "White",
      "displayName": "TANAYIA WHITE",
      "email": "twhite5@fmi.com",
      "jobTitle": "Ld Native American Affairs Spec",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060040447.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000066695",
      "supervisorName": "PETER DENETCLAW"
    },
    {
      "employeeID": "0000090850",
      "firstName": "Diana",
      "lastName": "Whiteaker",
      "displayName": "DIANA WHITEAKER",
      "email": "dwhiteak@fmi.com",
      "jobTitle": "Mgr Employee Engagement",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000090850.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000010897",
      "supervisorName": "TRACY ABERNETHY"
    },
    {
      "employeeID": "0000051441",
      "firstName": "Paul",
      "lastName": "Whiteaker",
      "displayName": "PAUL WHITEAKER",
      "email": "pwhiteak@fmi.com",
      "jobTitle": "Mgr Operational Solutions",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000051441.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030258",
      "supervisorName": "KETAN PATEL"
    },
    {
      "employeeID": "0060029045",
      "firstName": "Brant",
      "lastName": "Whiting",
      "displayName": "BRANT WHITING",
      "email": "bwhiting@fmi.com",
      "jobTitle": "Chief Eng Water Management",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060029045.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000060797",
      "supervisorName": "TAMARA JOHNDROW"
    },
    {
      "employeeID": "0000017447",
      "firstName": "Mark",
      "lastName": "Whitlock",
      "displayName": "MARK WHITLOCK",
      "email": "mwhitloc@fmi.com",
      "jobTitle": "Sr Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000017447.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000010979",
      "supervisorName": "NICHOLAS HICKSON"
    },
    {
      "employeeID": "0000011657",
      "firstName": "Claude",
      "lastName": "Whitmire",
      "displayName": "DON WHITMIRE",
      "email": "dwhitmir@fmi.com",
      "jobTitle": "VP Controller & Financial Reporting",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000011657.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0000051953",
      "supervisorName": "KATHLEEN QUIRK"
    },
    {
      "employeeID": "0060081035",
      "firstName": "Agus",
      "lastName": "Wibowo",
      "displayName": "AGUS WIBOWO",
      "email": "awibowo23@fmi.com",
      "jobTitle": "Inalum Apprentice",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081035.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000253124",
      "supervisorName": "SETIA NUGROHO"
    },
    {
      "employeeID": "0000009108",
      "firstName": "Sugeng",
      "lastName": "Widodo",
      "displayName": "SUGENG WIDODO",
      "email": "swidodo3@fmi.com",
      "jobTitle": "Dir Geological Svcs - PTFI",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000009108.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000085369",
      "supervisorName": "RICHARD ADKERSON"
    },
    {
      "employeeID": "0000066179",
      "firstName": "Forrest",
      "lastName": "Wiegand",
      "displayName": "SHANE WIEGAND",
      "email": "swiegand@fmi.com",
      "jobTitle": "VP Project Development",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000066179.jpg",
      "companyDescription": "International Administrat",
      "supervisorID": "0000060006",
      "supervisorName": "RICK COLEMAN"
    },
    {
      "employeeID": "0060041370",
      "firstName": "Simon",
      "lastName": "Wiercinski",
      "displayName": "SIMON WIERCINSKI",
      "email": "swiercin@fmi.com",
      "jobTitle": "Sr Contract Administrator",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060041370.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0061000316",
      "supervisorName": "JENNIFER HOBBS"
    },
    {
      "employeeID": "0060051507",
      "firstName": "Grant",
      "lastName": "Wilhelm",
      "displayName": "GRANT WILHELM",
      "email": "gwilhelm@fmi.com",
      "jobTitle": "Accounting Technical Spec",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060051507.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000018115",
      "supervisorName": "LEX ZERWAS"
    },
    {
      "employeeID": "0000013988",
      "firstName": "Lee",
      "lastName": "Wilkening",
      "displayName": "LEE WILKENING",
      "email": "lwilkeni@fmi.com",
      "jobTitle": "Mgr Water Resources NA",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000013988.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060037502",
      "supervisorName": "SANDY FABRITZ"
    },
    {
      "employeeID": "0000086626",
      "firstName": "Buckley",
      "lastName": "Wilkinson",
      "displayName": "BUCKLEY WILKINSON",
      "email": "bwilkins@fmi.com",
      "jobTitle": "Business Intelligence Developer Senior",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000086626.JPG",
      "companyDescription": "McMoRan Oil & Gas LLC",
      "supervisorID": "0000011491",
      "supervisorName": "JEFF CHAMP"
    },
    {
      "employeeID": "0060071948",
      "firstName": "David",
      "lastName": "Williams",
      "displayName": "DAVID WILLIAMS",
      "email": "dwilliam9@fmi.com",
      "jobTitle": "Project Risk Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060071948.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030108",
      "supervisorName": "DEBBIE DUNHAM"
    },
    {
      "employeeID": "0060078155",
      "firstName": "Jim",
      "lastName": "Williams",
      "displayName": "JIM WILLIAMS",
      "email": "jwilliam21@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078155.JPG",
      "companyDescription": "FM Bagdad Inc",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0060037255",
      "firstName": "Lisa",
      "lastName": "Williams",
      "displayName": "LISA WILLIAMS",
      "email": "lwilliam@fmi.com",
      "jobTitle": "Sr Sales Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060037255.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000017824",
      "supervisorName": "CINDY BURAS"
    },
    {
      "employeeID": "0060030969",
      "firstName": "Robert",
      "lastName": "Williams",
      "displayName": "ROB WILLIAMS",
      "email": "rwilliam7@fmi.com",
      "jobTitle": "Sr Process Ldr Supply Chain",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060030969.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030738",
      "supervisorName": "MIKE BREWER"
    },
    {
      "employeeID": "0061002829",
      "firstName": "Thomas",
      "lastName": "Williams",
      "displayName": "THOMAS WILLIAMS",
      "email": "twilliam6@fmi.com",
      "jobTitle": "Bus Solutions Architect III ESG",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002829.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000055242",
      "supervisorName": "BRIAN ETHERIDGE"
    },
    {
      "employeeID": "0000030160",
      "firstName": "Todd",
      "lastName": "Williams",
      "displayName": "TODD WILLIAMS",
      "email": "twilliam@fmi.com",
      "jobTitle": "Controller Financial Analysis",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000030160.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000019587",
      "supervisorName": "BRAD FOX"
    },
    {
      "employeeID": "0000085781",
      "firstName": "Wesley",
      "lastName": "Williams",
      "displayName": "WESLEY WILLIAMS",
      "email": "wwilliam@fmi.com",
      "jobTitle": "Sr Desktop Support Technician",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085781.jpg",
      "companyDescription": "FM Services Company",
      "supervisorID": "0060023718",
      "supervisorName": "MARK IOIA"
    },
    {
      "employeeID": "0060070924",
      "firstName": "Robert",
      "lastName": "Williams III",
      "displayName": "TREY WILLIAMS III",
      "email": "rwilliam17@fmi.com",
      "jobTitle": "Sr Mine Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060070924.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0060076714",
      "supervisorName": "FANUEL BANDA"
    },
    {
      "employeeID": "0000028931",
      "firstName": "Ronda",
      "lastName": "Willis",
      "displayName": "RONDA WILLIS",
      "email": "rwillis@fmi.com",
      "jobTitle": "Executive Secretary",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000028931.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000060006",
      "supervisorName": "RICK COLEMAN"
    },
    {
      "employeeID": "0060058527",
      "firstName": "Michelle",
      "lastName": "Willmore",
      "displayName": "MICHELLE WILLMORE",
      "email": "mwillmor@fmi.com",
      "jobTitle": "Sr Benefits Analyst - Analytics",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060058527.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000014944",
      "supervisorName": "CECE LEWIN"
    },
    {
      "employeeID": "0060073788",
      "firstName": "Alan",
      "lastName": "Wilson",
      "displayName": "ALAN WILSON",
      "email": "awilson1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060073788.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0061002607",
      "firstName": "Brian",
      "lastName": "Wilson",
      "displayName": "BRIAN WILSON",
      "email": "bwilson6@fmi.com",
      "jobTitle": "Physical Security Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061002607.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000010845",
      "supervisorName": "KEVIN SCOTT"
    },
    {
      "employeeID": "0060089276",
      "firstName": "Erik",
      "lastName": "Wilson",
      "displayName": "ERIK WILSON",
      "email": "ewilson1@fmi.com",
      "jobTitle": "Kokkola O365 Migration Consultant",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089276.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000089987",
      "supervisorName": "JIM SCHIFFER"
    },
    {
      "employeeID": "0000065185",
      "firstName": "Karen",
      "lastName": "Wilson",
      "displayName": "KAREN WILSON",
      "email": "kwilson@fmi.com",
      "jobTitle": "Corporate Travel Consultant",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000065185.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000086485",
      "supervisorName": "MICHELE GANNON"
    },
    {
      "employeeID": "0060047973",
      "firstName": "Kelley",
      "lastName": "Wilson",
      "displayName": "KELLEY WILSON",
      "email": "kwilson2@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060047973.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060040018",
      "firstName": "Sean",
      "lastName": "Wilson",
      "displayName": "SEAN WILSON",
      "email": "swilson1@fmi.com",
      "jobTitle": "Sr Environmental Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060040018.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088914",
      "supervisorName": "AUSTIN JONES"
    },
    {
      "employeeID": "0060086873",
      "firstName": "Greg",
      "lastName": "Wiltsey",
      "displayName": "GREG WILTSEY",
      "email": "gwiltsey@fmi.com",
      "jobTitle": "Procurement/Materials Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086873.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000013819",
      "supervisorName": "RENE REYES"
    },
    {
      "employeeID": "0060086432",
      "firstName": "Kirk",
      "lastName": "Wiltsey",
      "displayName": "KIRK WILTSEY",
      "email": "kwiltsey@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086432.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000013819",
      "supervisorName": "RENE REYES"
    },
    {
      "employeeID": "0060085304",
      "firstName": "Logan",
      "lastName": "Wiltz",
      "displayName": "LOGAN WILTZ",
      "email": "lwiltz@fmi.com",
      "jobTitle": "Cataloger Master Data",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085304.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000019708",
      "supervisorName": "AUDREY MERTES"
    },
    {
      "employeeID": "0060073472",
      "firstName": "Jordan",
      "lastName": "Wise",
      "displayName": "JORDAN WISE",
      "email": "jwise1@fmi.com",
      "jobTitle": "Sr Process Ldr Supply Chain",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060073472.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000052761",
      "supervisorName": "SHIKHAR HASSANI"
    },
    {
      "employeeID": "0060077988",
      "firstName": "Gemma",
      "lastName": "Wiseman",
      "displayName": "GEMMA WISEMAN",
      "email": "gwiseman@fmi.com",
      "jobTitle": "Corporate Services Ld",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060077988.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000054298",
      "supervisorName": "PAM MASSON"
    },
    {
      "employeeID": "0060022999",
      "firstName": "Amanda",
      "lastName": "Wistrom",
      "displayName": "AMANDA WISTROM",
      "email": "awistrom@fmi.com",
      "jobTitle": "Sr Recruiter",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060022999.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000093345",
      "supervisorName": "MELANIE PEIRE"
    },
    {
      "employeeID": "0000066651",
      "firstName": "David",
      "lastName": "Witter",
      "displayName": "DAVID WITTER",
      "email": "dwitter@fmi.com",
      "jobTitle": "Mgr Commissioning",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000066651.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000063630",
      "supervisorName": "ROB ALBRIGHT"
    },
    {
      "employeeID": "0000052809",
      "firstName": "Matthew",
      "lastName": "Wolfgang",
      "displayName": "MATTHEW WOLFGANG",
      "email": "mwolfgan@fmi.com",
      "jobTitle": "Chief Innovation Engineering Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000052809.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000012805",
      "supervisorName": "LIA WALKER"
    },
    {
      "employeeID": "0060079755",
      "firstName": "Alex",
      "lastName": "Wolvos",
      "displayName": "ALEX WOLVOS",
      "email": "awolvos@fmi.com",
      "jobTitle": "External Auditor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060079755.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0000050163",
      "firstName": "Jeffrey",
      "lastName": "Worthen",
      "displayName": "JEFF WORTHEN",
      "email": "jworthen@fmi.com",
      "jobTitle": "Sr Accounting Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000050163.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000051252",
      "supervisorName": "GRANT WELKER"
    },
    {
      "employeeID": "0060081111",
      "firstName": "Alvin",
      "lastName": "Wright",
      "displayName": "ALVIN WRIGHT",
      "email": "awright3@fmi.com",
      "jobTitle": "Lowlands Area Project Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060081111.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015649",
      "supervisorName": "MARK SMITH"
    },
    {
      "employeeID": "0000026566",
      "firstName": "Dennis",
      "lastName": "Wright",
      "displayName": "DENNIS WRIGHT",
      "email": "dwright@fmi.com",
      "jobTitle": "VP Cathode Sales",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000026566.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000068000",
      "supervisorName": "RANDY NICKLE"
    },
    {
      "employeeID": "0000052428",
      "firstName": "Zhi Xian",
      "lastName": "Xiao",
      "displayName": "WILLIAM XIAO",
      "email": "wxiao@fmi.com",
      "jobTitle": "Chief Metallurgist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000052428.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0000067676",
      "firstName": "Kenny",
      "lastName": "Xu",
      "displayName": "KENNY XU",
      "email": "kxu@fmi.com",
      "jobTitle": "CM Intl Proj Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067676.jpg",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0000091612",
      "supervisorName": "JEFF LIANG"
    },
    {
      "employeeID": "0000088798",
      "firstName": "Venugopal",
      "lastName": "Yamuna Devi",
      "displayName": "VENUGOPAL YAMUNA DEVI",
      "email": "vyamunad@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000088798.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030520",
      "supervisorName": "DON WARDEN"
    },
    {
      "employeeID": "0060025553",
      "firstName": "Hannah",
      "lastName": "Yang",
      "displayName": "HANNAH YANG",
      "email": "hyang@fmi.com",
      "jobTitle": "MCKINSEY & COMPANY INC US",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060025553.JPG",
      "companyDescription": "FM Bagdad Inc",
      "supervisorID": "0000057172",
      "supervisorName": "PAUL GELFI"
    },
    {
      "employeeID": "0000018239",
      "firstName": "Teresa",
      "lastName": "Ybarra",
      "displayName": "TERESA YBARRA",
      "email": "tybarra@fmi.com",
      "jobTitle": "Sr Process Ldr Supply Chain",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000018239.JPG",
      "companyDescription": "International ASAZ LLC",
      "supervisorID": "0000019708",
      "supervisorName": "AUDREY MERTES"
    },
    {
      "employeeID": "0061001117",
      "firstName": "Ygnacio",
      "lastName": "Ybarra",
      "displayName": "BEN YBARRA",
      "email": "bybarra@fmi.com",
      "jobTitle": "Sr Network Engineer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001117.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000056186",
      "supervisorName": "KRAIG FORBREGD"
    },
    {
      "employeeID": "0060065669",
      "firstName": "Eric",
      "lastName": "Yee",
      "displayName": "ERIC YEE",
      "email": "eyee@fmi.com",
      "jobTitle": "IT Security Analyst II",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060065669.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060078286",
      "supervisorName": "CASEY LEE"
    },
    {
      "employeeID": "0060085956",
      "firstName": "Heidi",
      "lastName": "Yelverton",
      "displayName": "HEIDI YELVERTON",
      "email": "hyelvert@fmi.com",
      "jobTitle": "Cataloger Master Data",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060085956.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000015989",
      "supervisorName": "KELLY BAKER"
    },
    {
      "employeeID": "0060069806",
      "firstName": "Peter",
      "lastName": "Yi",
      "displayName": "PETER YI",
      "email": "pyi@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060069806.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028343",
      "supervisorName": "ANDREA GEORGOPOULOS"
    },
    {
      "employeeID": "0060055568",
      "firstName": "Destry",
      "lastName": "Yocum",
      "displayName": "DESTRY YOCUM",
      "email": "drocum@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060055568.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000061262",
      "supervisorName": "MICHAEL HULSE"
    },
    {
      "employeeID": "0000064234",
      "firstName": "Christopher",
      "lastName": "Young",
      "displayName": "CHRIS YOUNG",
      "email": "cyoung3@fmi.com",
      "jobTitle": "Sr Project Manager Engineering",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000064234.JPG",
      "companyDescription": "Copper Overseas Service C",
      "supervisorID": "0000065646",
      "supervisorName": "KHALED SUNNA"
    },
    {
      "employeeID": "0060060851",
      "firstName": "Elenae",
      "lastName": "Young",
      "displayName": "MICHELLE YOUNG",
      "email": "myoung@fmi.com",
      "jobTitle": "Business Process & Systems Analyst",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060060851.JPG",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0000012891",
      "supervisorName": "ANDREW MANTER"
    },
    {
      "employeeID": "0060069139",
      "firstName": "Henry",
      "lastName": "Young",
      "displayName": "HENRY YOUNG",
      "email": "hyoung@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060069139.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000061262",
      "supervisorName": "MICHAEL HULSE"
    },
    {
      "employeeID": "0000085592",
      "firstName": "James",
      "lastName": "Young",
      "displayName": "JAMES YOUNG",
      "email": "jyoung1@fmi.com",
      "jobTitle": "Mgr Mine Planning",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000085592.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017001",
      "supervisorName": "DAVE TRAVIS"
    },
    {
      "employeeID": "0000075012",
      "firstName": "Jackie",
      "lastName": "Yu",
      "displayName": "JACKIE YU",
      "email": "jyu@fmi.com",
      "jobTitle": "CM Intl Proj Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000075012.jpg",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0000091612",
      "supervisorName": "JEFF LIANG"
    },
    {
      "employeeID": "0060078472",
      "firstName": "Randall",
      "lastName": "Yubeta",
      "displayName": "RANDALL YUBETA",
      "email": "ryubeta@fmi.com",
      "jobTitle": "Sr Engineering Specialist",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060078472.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000010979",
      "supervisorName": "NICHOLAS HICKSON"
    },
    {
      "employeeID": "0060089330",
      "firstName": "Arturo",
      "lastName": "Zamora",
      "displayName": "ARTURO ZAMORA",
      "email": "azamora4@fmi.com",
      "jobTitle": "ROD & COMPANY",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060089330.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060059707",
      "supervisorName": "COLIN CHALMERS"
    },
    {
      "employeeID": "0060086986",
      "firstName": "Christopher",
      "lastName": "Zamora",
      "displayName": "CHRISTOPHER ZAMORA",
      "email": "czamora1@fmi.com",
      "jobTitle": "Internal Auditor",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086986.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060042742",
      "supervisorName": "LONA PIRTLE-OLIVER"
    },
    {
      "employeeID": "0060022996",
      "firstName": "Ron",
      "lastName": "Zastuary",
      "displayName": "RON ZASTUARY",
      "email": "rzastuar@fmi.com",
      "jobTitle": "Contractor",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060022996.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000010979",
      "supervisorName": "NICHOLAS HICKSON"
    },
    {
      "employeeID": "0000054549",
      "firstName": "Daniel",
      "lastName": "Zeal",
      "displayName": "DAN ZEAL",
      "email": "dzeal@fmi.com",
      "jobTitle": "Dir NA MIS Operations/Projects",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000054549.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000030258",
      "supervisorName": "KETAN PATEL"
    },
    {
      "employeeID": "0061003911",
      "firstName": "Melissa",
      "lastName": "Zeal",
      "displayName": "MELISSA ZEAL",
      "email": "mzeal@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061003911.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060065305",
      "supervisorName": "BRENT HANSEN"
    },
    {
      "employeeID": "0060073872",
      "firstName": "Ana",
      "lastName": "Zega",
      "displayName": "ANA ZEGA",
      "email": "azega@fmi.com",
      "jobTitle": "Sr Sales Rep - Moly",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060073872.JPG",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0060032889",
      "supervisorName": "BRENDA MITCHELL"
    },
    {
      "employeeID": "0000018115",
      "firstName": "Alexis",
      "lastName": "Zerwas",
      "displayName": "LEX ZERWAS",
      "email": "lzerwas@fmi.com",
      "jobTitle": "Dir Ops Strategy & Controller",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000018115.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000017870",
      "supervisorName": "STEVE TANNER"
    },
    {
      "employeeID": "0000067673",
      "firstName": "Effie",
      "lastName": "Zhao",
      "displayName": "EFFIE ZHAO",
      "email": "ezhao@fmi.com",
      "jobTitle": "Mgr Customer Service",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067673.jpg",
      "companyDescription": "FM Sales Company Inc",
      "supervisorID": "0000067679",
      "supervisorName": "LEONARD HU"
    },
    {
      "employeeID": "0060071534",
      "firstName": "Tatyana",
      "lastName": "Zhebak",
      "displayName": "TATYANA ZHEBAK",
      "email": "tzhebak@fmi.com",
      "jobTitle": "Administrative Manager",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060071534.JPG",
      "companyDescription": "FM Corporation Explor",
      "supervisorID": "0060064090",
      "supervisorName": "VLAD BUCHYNSKYY"
    },
    {
      "employeeID": "0000067670",
      "firstName": "Andrew",
      "lastName": "Zhu",
      "displayName": "ANDREW ZHU",
      "email": "azhu@fmi.com",
      "jobTitle": "CM Intl Process Ldr China",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0000067670.jpg",
      "companyDescription": "Climax Moly Mkt Corp",
      "supervisorID": "0000030738",
      "supervisorName": "MIKE BREWER"
    },
    {
      "employeeID": "0060086666",
      "firstName": "Chuck",
      "lastName": "Zillweger",
      "displayName": "CHUCK ZILLWEGER",
      "email": "czillweg@fmi.com",
      "jobTitle": "Security Project Manager",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0060086666.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060065452",
      "supervisorName": "JEFF PICK"
    },
    {
      "employeeID": "0061001968",
      "firstName": "Mersades",
      "lastName": "Zimmer",
      "displayName": "MERSADES ZIMMER",
      "email": "mzimmer1@fmi.com",
      "jobTitle": "Buyer",
      "photoUrl":
          "https://images.services.fmi.com/publishedimages/0061001968.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000088470",
      "supervisorName": "DAVE CONWAY"
    },
    {
      "employeeID": "0060070355",
      "firstName": "Linda",
      "lastName": "Zollars",
      "displayName": "LINDA ZOLLARS",
      "email": "lzollars@fmi.com",
      "jobTitle": "Sr Accounting Clerk",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0060070355.jpg",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0000018777",
      "supervisorName": "SHARON CHANEZ"
    },
    {
      "employeeID": "0061000231",
      "firstName": "Robert",
      "lastName": "Zwick",
      "displayName": "ROB ZWICK",
      "email": "rzwick@fmi.com",
      "jobTitle": "Chief Process Automation Engineer",
      "photoUrl":
          "https://images.services-dev.fmi.com/publishedimages/0061000231.JPG",
      "companyDescription": "Freeport Minerals Corp",
      "supervisorID": "0060028905",
      "supervisorName": "ARI SUPOMO"
    }
  ];
}
