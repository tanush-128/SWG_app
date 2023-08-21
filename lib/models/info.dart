class Info {
  const Info(
      {required this.id,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.path});
  final String title;
  final String description;
  final String imageUrl;
  final String path;
  final String id;
}

final List<Info> infos = [
  const Info(
      id: "info1",
      title: "Study Material",
      description: "Study Materials for fresher students",
      imageUrl: "assets/icons/school-material.png",
      path: '/study_material'),
  const Info(
      id: "info2",
      title: "Mentor - Mentee",
      description: "Know Your appointed Mentor/Mentee",
      imageUrl: "assets/icons/mentor.png",
      path: '/mentor_mentee'),
  const Info(
      id: "info3",
      title: "CDC Internships",
      description: "A to Z about prefinal year internships",
      imageUrl: "assets/icons/internship.png",
      path: '/internships'),
  const Info(
      id: "info4",
      title: "CDC Placements",
      description: "Get insights on final year placements, with TIPS",
      imageUrl: "assets/icons/inspection.png",
      path: '/placements'),
  const Info(
      id: "info5",
      title: "Know Your Department",
      description: "Series of blogs about all Departments",
      imageUrl: "assets/icons/enterprise.png",
      path: '/know_your_department'),
  const Info(
      id: "info6",
      title: "Socities of KGP",
      description: "List and Links of all socities/cells/research groups",
      imageUrl: "assets/icons/population.png",
      path: '/'),
  // const Info(
  //     id: "info7",
  //     title: "Fundae Docs",
  //     description: "Tools to crack various problems",
  //     imageUrl:
  //         "https://th.bing.com/th/id/OIP.Z8tEqxrmsOz-ZTsnbxBZwwHaGG?pid=ImgDet&rs=1",
  //     path:'/'),
  const Info(
      id: "info8",
      title: "Academic Information",
      description: "Important Info about Scholorships and more",
      imageUrl: "assets/icons/graduate-hat.png",
      path: '/'),
  const Info(
      id: "info9",
      title: "Institute Email ID",
      description: "Know the benifits of Institute Email Id",
      imageUrl: "assets/icons/email.png",
      path: '/'),
];

final List<Info> placements = [
  const Info(
      id: "p1",
      title: "Software",
      description: "Devolopment, DSA and CP",
      imageUrl: "assets/icons/software.png",
      path: '/'),
  const Info(
      id: "p2",
      title: "Data Analysis",
      description: "DL,ML,NLP",
      imageUrl: "assets/icons/data-analysis.png",
      path: '/'),
  const Info(
      id: "p3",
      title: "Quant",
      description: "Mathematics, algebra, quantitative analysis",
      imageUrl: "assets/icons/quantitative.png",
      path: '/'),
  const Info(
      id: "p4",
      title: "Finance",
      description: "Economics,funds,investments,capital",
      imageUrl: "assets/icons/budget.png",
      path: '/'),
  const Info(
      id: "p5",
      title: "Core",
      description: "Deep knowledge in your department",
      imageUrl: "assets/icons/responsibility.png",
      path: '/'),
  const Info(
      id: "p6",
      title: "Product",
      description: "Products life cycle and KPIs",
      imageUrl: "assets/icons/product-management.png",
      path: '/'),
  const Info(
      id: "p7",
      title: "FMCG",
      description: "Supply chain management",
      imageUrl: "assets/icons/diet.png",
      path: '/')
];
