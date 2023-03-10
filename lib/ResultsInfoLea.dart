import 'package:flutter/material.dart';

class ResultsLeaInfoT1 {
  late String result, ResultText, Strategy;
  ResultsLeaInfoT1(this.result, this.ResultText, this.Strategy);
}

List<ResultsLeaInfoT1> resultLeaData = [
  ResultsLeaInfoT1(
      "Star",
      "High Performance - High Potential Employee: The employee is a superstar; consistently achieving his target with high-quality work. \nHe/She is a valuable member of the organization. \nTop talent, always exceeding expectations and being self-motivated.",
      "-Move them to the next managerial position, they are always ready.\n-Provide more challenging tasks and activities.\n-Sit with him/her and understand what motivates them.\n-Utilize them to give internal training or to share their knowledge with others.\n-Consider them for promotions, if there is a higher vacancy.\n-Check if their pay is matching with their skills.\n-Retain them."),
  ResultsLeaInfoT1(
      "High Potential",
      "High Potential - Medium Performance: Good performer employee who is expected to grow in the company and can be considered for higher positions. Thus, he/she is a valuable person to the organization.",
      "--Keep the employee engaged with the activities and projects you have in your department and organization. \nThe employee is almost ready to move to the next managerial role.\n-Assess the performance regularly and understand if the employee requires extra help in the tasks and activities.\n-Test his/her abilities by providing extra assignments and projects.\n-Utilize the employee's strengths. Provide exposure opportunities."),
  ResultsLeaInfoT1(
      "Potential Gem",
      "High Potential - Low Performance: The employee has the capabilities to do more than what is being delivered. He/She could have some issues that are stopping him/her from performing. The employee could be a hidden star.",
      "-Provide coaching to remove the barrier that is stopping him/her from performing.\n-Give some easy tasks and activities and celebrate the success, he/she is able to do but requires a push. \n-Check if the employee can perform well in other departments with a different team."),
  ResultsLeaInfoT1(
      "High Performer",
      "High Performance - Medium Potential: The employee's performance is very high with high quality of work. Always achieving what is required. The employee could be focusing a lot on his/her current role or department and trying to excel there. He/She plays a big role in driving the objectives of the company.",
      "-Provide motivation and appreciation for the accomplished work.\n-Have a 1-to-1 meeting to check their aspiration, and if they want to move up, provide some guidance to help them grow.\n-Check if they are entitled to promotion.\n-Be clear and honest with them, if you are unable to promote them (due to policy or whatever reason).\n-Link the department objectives with the organization objectives to expand the employee's knowledge."),
  ResultsLeaInfoT1(
      "Core Player",
      "Medium Performance - Medium Potential: The employee is average in performance but is still a good team member. The employee might be focusing more on the job he/she is handling and spending less on development. Also, the employee might lack the required experience in the field to become an expert.",
      "-Provide motivation and appreciation for their work.\n-Encourage him/her to develop through job training or self-learning. \n-Assign them to different development programs.\n-Assess them regularly on their performance and check if they can handle more tasks."),
  ResultsLeaInfoT1(
      "Incosistent Player",
      "Medium Potential - Low Performance: The employee is not performing well. He/she might have issues outside work. It is not clear if the employee can perform well in the department or not.",
      "-Have a 1-to-1 meeting to understand if the employee has issues that are stopping him/her from performing. \n-Create a clear development plan for the employee, with a clear timeline. \n-Motivate them after completing small achievements. \n-Assess them periodically. \n-Assess if the performance of the team is affected by the leadership style and act accordingly."),
  ResultsLeaInfoT1(
      "Solid Performer",
      "High Performance - Low Potential: the employee is consistent in his/her performance. He/she provides high-quality work. The employee feels comfortable in the current role and doesn't want to change. He/She is considered a valuable member of the team.",
      "-Appreciate the work delivered by the employee.\n-Keep in mind that attempting to move the employee to a higher position or assigning him/her to a different role might impact the work negatively.\n-Check first if the employee wants to grow or wants more challenging work before you do so. \n-Offer some coaching if required."),
  ResultsLeaInfoT1(
      "Average Performer",
      "Medium Performance - Low Potential: The employee is doing an average job where he/she might need some time to adjust to the environment. The employee doesn't have the capabilities to move up or to grow in the organization.",
      "-Provide a clear development plan to the employee. \n-Have periodic meetings with him/her and assess their performance. \n-Offer coaching if required. \n-Assess if the performance of the team is affected by the leadership style and act accordingly."),
  ResultsLeaInfoT1(
      "Risk",
      "Low Performance - Low Potential: the employee could be a wrong hire. \nHe/She doesn't fit in the department, and it is difficult to depend on the employee for the tasks and activities. \nBeing in a leadership role might cause harm to the team and organization.",
      "-Have a 1-to-1 meeting and understand if the employee has issues that are stopping him/her from performing. \n-Prepare an exit plan for the employee if he has a bad influence on the department and the team.\n-Provide a second chance, if you think the employee will do better in a different place.\n-Don't invest in development for the employee; it's not recommended."),
];
