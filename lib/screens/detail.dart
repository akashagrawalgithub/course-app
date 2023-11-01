import "package:course_selling/componets/coursehas.dart";
import "package:course_selling/componets/userimage.dart";
import "package:course_selling/utils/courseImage.dart";
import "package:course_selling/utils/userimagelist.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class courseDetails extends StatefulWidget {
  int index;
  courseDetails({super.key, required this.index});

  @override
  State<courseDetails> createState() => _courseDetailsState();
}

class _courseDetailsState extends State<courseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 45, 15, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 18,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "Courses details",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 200,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Image.network(
                  courseImage[widget.index],
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.group,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "5.7k",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "4.9",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Text(
                "About the course : ",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "This course aims to extend your knowledge and experience of practical data mining, following on from Data Mining with Weka. We’ll talk about “big data” and how to deal with that in Weka (you’ll process a dataset with 10 million instances). You’ll learn about mining text. You’ll look at filtering using supervised and unsupervised filters. You’ll learn about discretization and sampling. You’ll learn about attribute selection. You’ll learn about classification rules, rules vs. trees, association rules, clustering, cost-sensitive evaluation and classification.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "The Course Includes",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Coursehas(textcontent: "20 Hours Video"),
                  const SizedBox(height: 10),
                  Coursehas(textcontent: "Total 60+ Lessons"),
                  const SizedBox(height: 10),
                  Coursehas(textcontent: "67 Download Resourses"),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Student Study",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 7.0,
                runSpacing: 10.0,
                children: List.generate(
                  userimagelist.length,
                  (i) => UserImage(idex: i),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
