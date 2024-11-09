import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:student_automation_system/theme/color.dart';
import 'package:student_automation_system/theme/fonts_style.dart';
import 'package:student_automation_system/views/student_home/student_home_vm.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => StudentHomeVM(),
      builder: (context, vModel, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: SizedBox(
              width: 1.sw,
              child: Row(
                children: [
                  Container(
                    width: 0.2.sw,
                    color: AppColors.drawerColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: SizedBox(
                            width: 0.1.sw,
                            child: Image.asset(
                              vModel.logo,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        20.verticalSpace,
                        Container(
                          margin: EdgeInsets.only(left: 0.02.sw),
                          child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.home,
                                  color: AppColors.textColor1,
                                ),
                                2.horizontalSpace,
                                Text(
                                  'Home',
                                  style: Style.regular14ptb.copyWith(
                                      fontSize: 6.sp,
                                      color: AppColors.textColor1),
                                ),
                              ],
                            ),
                          ),
                        ),
                        20.verticalSpace,
                        Container(
                          margin: EdgeInsets.only(left: 0.02.sw),
                          child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.receipt,
                                  color: AppColors.textColor1,
                                ),
                                2.horizontalSpace,
                                Text(
                                  'Account Book',
                                  style: Style.regular14ptb.copyWith(
                                      fontSize: 6.sp,
                                      color: AppColors.textColor1),
                                ),
                              ],
                            ),
                          ),
                        ),
                        20.verticalSpace,
                        Container(
                          margin: EdgeInsets.only(left: 0.02.sw),
                          child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.grade,
                                  color: AppColors.textColor1,
                                ),
                                2.horizontalSpace,
                                Text(
                                  'Grades',
                                  style: Style.regular14ptb.copyWith(
                                      fontSize: 6.sp,
                                      color: AppColors.textColor1),
                                ),
                              ],
                            ),
                          ),
                        ),
                        20.verticalSpace,
                        Container(
                          margin: EdgeInsets.only(left: 0.02.sw),
                          child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.feedback,
                                  color: AppColors.textColor1,
                                ),
                                2.horizontalSpace,
                                Text(
                                  'Feedback',
                                  style: Style.regular14ptb.copyWith(
                                      fontSize: 6.sp,
                                      color: AppColors.textColor1),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          margin: EdgeInsets.only(left: 0.02.sw),
                          child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.contact_support,
                                  color: AppColors.textColor1,
                                ),
                                2.horizontalSpace,
                                Text(
                                  'Contact Us',
                                  style: Style.regular14ptb.copyWith(
                                      fontSize: 6.sp,
                                      color: AppColors.textColor1),
                                ),
                              ],
                            ),
                          ),
                        ),
                        20.verticalSpace,
                        Container(
                          margin: EdgeInsets.only(left: 0.02.sw),
                          child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.logout,
                                  color: AppColors.textColor1,
                                ),
                                2.horizontalSpace,
                                Text(
                                  'Sign Out',
                                  style: Style.regular14ptb.copyWith(
                                      fontSize: 6.sp,
                                      color: AppColors.textColor1),
                                ),
                              ],
                            ),
                          ),
                        ),
                        10.verticalSpace
                      ],
                    ),
                  ),
                  SizedBox(
                    child: SingleChildScrollView(
                      child: Container(
                        width: 0.8.sw,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 0.04.sw),
                              child: Text(
                                'Hey Student,',
                                style: Style.medium14ptb.copyWith(
                                    fontSize: 8.sp,
                                    color: AppColors.textColor1),
                              ),
                            ),
                            10.verticalSpace,
                            Container(
                              margin: EdgeInsets.only(left: 0.04.sw),
                              child: Text(
                                'Welcome to Student Automation System',
                                style: Style.medium14ptb.copyWith(
                                    fontSize: 8.sp,
                                    color: AppColors.textColor1),
                              ),
                            ),
                            40.verticalSpace,
                            //Info Section
                            Container(
                              margin: EdgeInsets.only(left: 0.04.sw),
                              child: Column(
                                children: [
                                  Container(
                                    width: 0.7.sw,
                                    height: 0.15.sh,
                                    decoration: const BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(40),
                                        topRight: Radius.circular(40),
                                        // bottomLeft: Radius.circular(40),
                                        // bottomRight: Radius.circular(40),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'My Stats',
                                        style: Style.semiBold14ptb
                                            .copyWith(fontSize: 10.sp),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 0.7.sw,
                                    height: 0.75.sh,
                                    decoration: const BoxDecoration(
                                      color: AppColors.secondaryColor,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(40),
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        //1st Row
                                        Container(
                                          margin: EdgeInsets.only(top: 0.05.sh),
                                          width: 0.7.sw,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              SizedBox(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: 0.2.sw,
                                                      height: 0.35.sh,
                                                      color: Colors.white,
                                                      child: Image.asset(
                                                          vModel.person),
                                                    ),
                                                    10.horizontalSpace,
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Student Name',
                                                          style: Style
                                                              .regular14ptb
                                                              .copyWith(
                                                                  fontSize:
                                                                      7.sp,
                                                                  color: AppColors
                                                                      .textColor1),
                                                        ),
                                                        5.verticalSpace,
                                                        Text(
                                                          'Roll Number',
                                                          style: Style
                                                              .regular14ptb
                                                              .copyWith(
                                                                  fontSize:
                                                                      7.sp,
                                                                  color: AppColors
                                                                      .textColor1),
                                                        ),
                                                        5.verticalSpace,
                                                        Text(
                                                          'Class',
                                                          style: Style
                                                              .regular14ptb
                                                              .copyWith(
                                                                  fontSize:
                                                                      7.sp,
                                                                  color: AppColors
                                                                      .textColor1),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                child: GestureDetector(
                                                  onTap: () {},
                                                  child: Column(
                                                    children: [
                                                      Icon(
                                                        Icons.notifications,
                                                        size: 20.sp,
                                                      ),
                                                      5.verticalSpace,
                                                      Text(
                                                        'Announcment',
                                                        style: Style
                                                            .regular14ptb
                                                            .copyWith(
                                                                color: AppColors
                                                                    .textColor1,
                                                                fontSize: 7.sp),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        // 2nd Row
                                        30.verticalSpace,
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                width: 0.25.sw,
                                                height: 0.25.sh,
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text(
                                                      'Registered Course',
                                                      style: Style.medium14ptw
                                                          .copyWith(
                                                        fontSize: 6.sp,
                                                      ),
                                                    ),
                                                    Text(
                                                      '(x)',
                                                      style: Style.medium14ptb
                                                          .copyWith(
                                                              fontSize: 6.sp),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 0.25.sw,
                                                height: 0.25.sh,
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text(
                                                      'Registered Course',
                                                      style: Style.medium14ptw
                                                          .copyWith(
                                                        fontSize: 6.sp,
                                                      ),
                                                    ),
                                                    Text(
                                                      '(x)',
                                                      style: Style.medium14ptb
                                                          .copyWith(
                                                              fontSize: 6.sp),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            40.verticalSpace,
                            // Course Section
                            Container(
                              margin: EdgeInsets.only(left: 0.04.sw),
                              child: Column(
                                children: [
                                  Container(
                                    width: 0.7.sw,
                                    height: 0.15.sh,
                                    decoration: const BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(40),
                                        topRight: Radius.circular(40),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'My Course',
                                        style: Style.semiBold14ptb
                                            .copyWith(fontSize: 10.sp),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 0.7.sw,
                                    height: 0.75.sh,
                                    decoration: const BoxDecoration(
                                      color: AppColors.secondaryColor,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(40),
                                      ),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 0.04.sw, top: 0.02.sh),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          for (int i = 0; i < 7; i++)
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Course ${i + 1}',
                                                  style: Style.medium20ptb
                                                      .copyWith(
                                                          fontSize: 6.sp,
                                                          color: AppColors
                                                              .textColor1),
                                                ),
                                                15.verticalSpace,
                                                const Divider(
                                                  color: AppColors.textColor1,
                                                  height: 2,
                                                  thickness: 1,
                                                  // indent: 20,
                                                  endIndent: 20,
                                                ),
                                                15.verticalSpace,
                                              ],
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            40.verticalSpace,
                            Container(
                              width: 0.7.sw,
                              margin: EdgeInsets.only(left: 0.04.sw),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Assignment',
                                    style: Style.semiBold20ptb.copyWith(
                                        color: AppColors.textColor1,
                                        fontSize: 8.sp),
                                  ),
                                  30.verticalSpace,
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.secondaryColor,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: vModel.DropdownCourse(),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
