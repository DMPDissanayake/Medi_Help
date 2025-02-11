import 'package:project_medihelp/Models/doctor.dart';

class DoctorServices {
  List<Doctor> allDoctorsList = [
    Doctor(
      doctorId: "1",
      docName: "Dr. Rajesh Malhotra",
      docImg: 'assets/docImg/r-men_doc.jpg',
      catagory: "Cardiologist",
      shortDescription:
          "Heart conditions such as coronary artery disease, hypertension, arrhythmias, and heart failure.",
      description:
          "Dr. Rajesh Malhotra is a highly experienced cardiologist specializing in the diagnosis and treatment of heart conditions such as coronary artery disease, hypertension, arrhythmias, and heart failure. With over 15 years of experience, he is known for his expertise in interventional cardiology, including angioplasty and pacemaker implantation. Dr. Malhotra holds an MBBS, MD (Internal Medicine), and DM (Cardiology) and is a Fellow of the American College of Cardiology (FACC). His contributions to cardiovascular research include over 20 published papers in renowned medical journals.",
      expeYesr: 15,
      workTime: "Mon-Sat / 9:00AM - 5:00PM",
      startMark: 5,
      comments: 50,
      isIn: true,
      isFavorit: true,
    ),
    Doctor(
      doctorId: "2",
      docName: "Dr. Neha Sharma",
      docImg:
          'assets/docImg/WhatsApp Image 2025-01-26 at 04.05.48_0405d8e0.jpg',
      catagory: "Neurologist",
      shortDescription:
          "Specializes in brain and nervous system disorders, including stroke, epilepsy, and Parkinson's disease.",
      description:
          "Dr. Neha Sharma is a renowned neurologist with expertise in diagnosing and managing neurological disorders such as stroke, epilepsy, Parkinson’s disease, and multiple sclerosis. With over 12 years of experience, she has contributed extensively to neurophysiology research. She holds an MBBS, MD (Neurology), and DM (Neurology) and is a member of the American Academy of Neurology. Dr. Sharma has published several research papers and actively participates in neurological conferences worldwide.",
      expeYesr: 12,
      workTime: "Mon-Fri / 10:00AM - 4:00PM",
      startMark: 4,
      comments: 60,
      isIn: true,
      isFavorit: true,
    ),
    Doctor(
      doctorId: "3",
      docName: "Dr. Rohan Mehta",
      docImg: 'assets/docImg/r-men_doc.jpg',
      catagory: "Orthopedic Surgeon",
      shortDescription:
          "Expert in joint replacement, sports injuries, and spinal disorders.",
      description:
          "Dr. Rohan Mehta is an expert in orthopedic surgery with 18 years of experience, focusing on joint replacements, sports injuries, and spinal disorders. He has performed over 2,000 successful knee and hip replacement surgeries. He holds an MBBS, MS (Orthopedics), and a Fellowship in Joint Replacement Surgery from Germany.",
      expeYesr: 18,
      workTime: "Mon-Sat / 8:30AM - 6:00PM",
      startMark: 3,
      comments: 45,
      isIn: true,
      isFavorit: false,
    ),
    Doctor(
      doctorId: "4",
      docName: "Dr. Sneha Verma",
      docImg:
          'assets/docImg/WhatsApp Image 2025-01-26 at 04.05.48_0405d8e0.jpg',
      catagory: "Gynecologist & Obstetrician",
      shortDescription:
          "Expert in high-risk pregnancy, infertility treatment, and gynecological surgeries.",
      description:
          "Dr. Sneha Verma is a renowned gynecologist specializing in high-risk pregnancies, infertility treatments, and minimally invasive gynecological surgeries. She has delivered over 1,500 babies and successfully treated numerous infertility cases. She holds an MBBS, MD (Obstetrics & Gynecology), and a Fellowship in Reproductive Medicine.",
      expeYesr: 14,
      workTime: "Mon-Sat / 9:30AM - 5:30PM",
      startMark: 2,
      comments: 55,
      isIn: true,
      isFavorit: true,
    ),
    Doctor(
      doctorId: "5",
      docName: "Dr. Arvind Kapoor",
      docImg: 'assets/docImg/r-men_doc.jpg',
      catagory: "Dermatologist",
      shortDescription:
          "Treats acne, skin allergies, hair loss, and cosmetic dermatology.",
      description:
          "Dr. Arvind Kapoor is a leading dermatologist with expertise in acne treatment, skin allergies, and cosmetic procedures like botox and laser therapy. He holds an MBBS, MD (Dermatology), and a Diploma in Aesthetic Dermatology from the UK.",
      expeYesr: 10,
      workTime: "Mon-Fri / 11:00AM - 7:00PM",
      startMark: 5,
      comments: 40,
      isIn: true,
      isFavorit: false,
    ),
    Doctor(
      doctorId: "6",
      docName: "Dr. Neha Bansal",
      docImg:
          'assets/docImg/WhatsApp Image 2025-01-26 at 04.05.48_0405d8e0.jpg',
      catagory: "Pediatrician",
      shortDescription:
          "Expert in child health, vaccinations, and pediatric emergencies.",
      description:
          "Dr. Neha Bansal is an experienced pediatrician who specializes in child health, vaccinations, and managing pediatric emergencies. She holds an MBBS, MD (Pediatrics) and has worked at top children's hospitals.",
      expeYesr: 9,
      workTime: "Mon-Sat / 9:00AM - 5:00PM",
      startMark: 5,
      comments: 35,
      isIn: true,
      isFavorit: true,
    ),
    Doctor(
      doctorId: "7",
      docName: "Dr. Kunal Sethi",
      docImg: 'assets/docImg/r-men_doc.jpg',
      catagory: "Gastroenterologist",
      shortDescription:
          "Specialist in digestive disorders, liver diseases, and endoscopy.",
      description:
          "Dr. Kunal Sethi has 16 years of experience in treating digestive disorders, liver diseases, and performing endoscopic procedures. He holds an MBBS, MD (Gastroenterology), and has contributed to research in hepatology.",
      expeYesr: 16,
      workTime: "Mon-Fri / 10:00AM - 6:00PM",
      startMark: 5,
      comments: 50,
      isIn: true,
      isFavorit: false,
    ),
    Doctor(
      doctorId: "8",
      docName: "Dr. Meera Das",
      docImg:
          'assets/docImg/WhatsApp Image 2025-01-26 at 04.05.48_0405d8e0.jpg',
      catagory: "Endocrinologist",
      shortDescription:
          "Expert in diabetes, thyroid disorders, and hormonal imbalances.",
      description:
          "Dr. Meera Das is a leading endocrinologist specializing in diabetes, thyroid disorders, and hormonal imbalances. She holds an MBBS, MD (Endocrinology), and a Fellowship in Diabetology.",
      expeYesr: 11,
      workTime: "Mon-Sat / 8:00AM - 2:00PM",
      startMark: 4,
      comments: 40,
      isIn: true,
      isFavorit: true,
    ),
    Doctor(
      doctorId: "9",
      docName: "Dr. Aditya Rao",
      docImg: 'assets/docImg/r-men_doc.jpg',
      catagory: "Pulmonologist",
      shortDescription:
          "Specialist in respiratory diseases, asthma, COPD, and lung infections.",
      description:
          "Dr. Aditya Rao is a pulmonologist with 13 years of experience, specializing in respiratory diseases, asthma, COPD, and lung infections. He holds an MBBS, MD (Pulmonology), and a Fellowship in Critical Care Medicine.",
      expeYesr: 13,
      workTime: "Mon-Sat / 10:00AM - 6:00PM",
      startMark: 5,
      comments: 48,
      isIn: true,
      isFavorit: false,
    ),
    Doctor(
      doctorId: "10",
      docName: "Dr. Priya Iyer",
      docImg:
          'assets/docImg/WhatsApp Image 2025-01-26 at 04.05.48_0405d8e0.jpg',
      catagory: "Ophthalmologist",
      shortDescription:
          "Expert in cataract surgery, LASIK, and glaucoma treatment.",
      description:
          "Dr. Priya Iyer is an ophthalmologist with 14 years of experience in treating eye disorders such as cataracts, glaucoma, and refractive errors. She holds an MBBS, MS (Ophthalmology), and a Fellowship in Cornea and Refractive Surgery.",
      expeYesr: 14,
      workTime: "Mon-Sat / 9:30AM - 5:30PM",
      startMark: 2,
      comments: 50,
      isIn: true,
      isFavorit: true,
    ),
    Doctor(
      doctorId: "11",
      docName: "Dr. Sanjay Tiwari",
      docImg: 'assets/docImg/r-men_doc.jpg',
      catagory: "Psychiatrist",
      shortDescription:
          "Specialist in mental health, depression, anxiety, and behavioral disorders.",
      description:
          "Dr. Sanjay Tiwari is a psychiatrist with 15 years of experience, focusing on mental health disorders such as depression, anxiety, schizophrenia, and PTSD. He holds an MBBS, MD (Psychiatry), and has worked extensively in cognitive behavioral therapy.",
      expeYesr: 15,
      workTime: "Mon-Fri / 10:00AM - 6:00PM",
      startMark: 5,
      comments: 60,
      isIn: true,
      isFavorit: false,
    ),
    Doctor(
      doctorId: "12",
      docName: "Dr. Vishal Patil",
      docImg: 'assets/docImg/r-men_doc.jpg',
      catagory: "Urologist",
      shortDescription:
          "Expert in kidney stones, urinary tract infections, and prostate disorders.",
      description:
          "Dr. Vishal Patil is a leading urologist with 17 years of experience in treating kidney stones, urinary tract infections, and prostate disorders. He holds an MBBS, MS (Urology), and has performed numerous successful urological surgeries.",
      expeYesr: 17,
      workTime: "Mon-Sat / 8:00AM - 4:00PM",
      startMark: 5,
      comments: 45,
      isIn: true,
      isFavorit: true,
    ),
    Doctor(
      doctorId: "13",
      docName: "Dr. Ritu Saxena",
      docImg:
          'assets/docImg/WhatsApp Image 2025-01-26 at 04.05.48_0405d8e0.jpg',
      catagory: "Oncologist",
      shortDescription:
          "Specialist in cancer treatment, chemotherapy, and radiation therapy.",
      description:
          "Dr. Ritu Saxena is an oncologist with 12 years of experience, specializing in cancer treatment, chemotherapy, and radiation therapy. She holds an MBBS, MD (Oncology), and has worked on groundbreaking cancer research.",
      expeYesr: 12,
      workTime: "Mon-Fri / 9:00AM - 5:00PM",
      startMark: 4,
      comments: 55,
      isIn: true,
      isFavorit: false,
    ),
    Doctor(
      doctorId: "14",
      docName: "Dr. Manish Bhardwaj",
      docImg: 'assets/docImg/r-men_doc.jpg',
      catagory: "Nephrologist",
      shortDescription:
          "Specialist in kidney diseases, dialysis, and kidney transplant.",
      description:
          "Dr. Manish Bhardwaj is a nephrologist with 19 years of experience, focusing on kidney diseases, dialysis, and kidney transplants. He holds an MBBS, MD (Nephrology), and has successfully managed complex renal cases.",
      expeYesr: 19,
      workTime: "Mon-Sat / 10:00AM - 6:00PM",
      startMark: 4,
      comments: 50,
      isIn: true,
      isFavorit: true,
    ),
    Doctor(
      doctorId: "15",
      docName: "Dr. Pooja Kulkarni",
      docImg:
          'assets/docImg/WhatsApp Image 2025-01-26 at 04.05.48_0405d8e0.jpg',
      catagory: "ENT Specialist",
      shortDescription:
          "Expert in ear, nose, throat disorders, and sinus surgery.",
      description:
          "Dr. Pooja Kulkarni is an ENT specialist with 10 years of experience in treating ear, nose, and throat conditions, including sinus infections and hearing loss. She holds an MBBS, MS (ENT), and specializes in minimally invasive ENT procedures.",
      expeYesr: 10,
      workTime: "Mon-Sat / 9:00AM - 5:00PM",
      startMark: 4,
      comments: 42,
      isIn: true,
      isFavorit: false,
    ),
  ];
  List<Doctor> favoDoctors = [];
}
