# Best Practices for Building a Well-Governed Cloud
This is the repository for the LinkedIn Learning course `course-name`. The full course is available from [LinkedIn Learning][lil-course-url].

![lil-thumbnail-url] 

## Course Description

This course examines how resource consistency, observability, and access management work together to create a successful cloud environment in Azure. Join instructor Mike Benkovich as he explores how to operationalize cloud infrastructure and the patterns of cloud application management, focusing on connected services, resource consistency, and automation in Azure. Try out your new skills along the way in practical demos that show you how to define a landing zone, integrate with cloud services, work with infrastructure-as-code tools like ARM and Bicep, and automate with continuous delivery platforms such as Azure DevOps and GitHub Actions. By the end of this course, you’ll be prepared to use Azure's native tools to define compliance and policy and create landing zones for development teams to deliver effective solutions and maintain a well-governed cloud.

_See the readme file in the main branch for updated instructions and information._
## Instructions
This repository has branches for each of the videos in the course. You can use the branch pop up menu in github to switch to a specific branch and take a look at the course at that stage, or you can add `/tree/BRANCH_NAME` to the URL to go to the branch you want to access.

## Branches
The branches are structured to correspond to the videos in the course. The naming convention is `CHAPTER#_MOVIE#`. As an example, the branch named `02_03` corresponds to the second chapter and the third video in that chapter. 
Some branches will have a beginning and an end state. These are marked with the letters `b` for "beginning" and `e` for "end". The `b` branch contains the code as it is at the beginning of the movie. The `e` branch contains the code as it is at the end of the movie. The `main` branch holds the final state of the code when in the course.

When switching from one exercise files branch to the next after making changes to the files, you may get a message like this:

    error: Your local changes to the following files would be overwritten by checkout:        [files]
    Please commit your changes or stash them before you switch branches.
    Aborting

To resolve this issue:
	
    Add changes to git using this command: git add .
	Commit changes using this command: git commit -m "some message"

## Instructor

Mike Benkovich

Former Microsoft Evangelist, Current Software Architect
                      

Check out my other courses on [LinkedIn Learning](https://www.linkedin.com/learning/instructors/mike-benkovich?u=104).


[0]: # (Replace these placeholder URLs with actual course URLs)

[lil-course-url]: https://www.linkedin.com/learning/azure-governance-and-landing-zones-best-practices-for-building-a-well-governed-cloud
[lil-thumbnail-url]: https://media.licdn.com/dms/image/v2/D4D0DAQFkef8jVq6ffg/learning-public-crop_675_1200/learning-public-crop_675_1200/0/1724869173752?e=2147483647&v=beta&t=Wgo8BY_VsiwtPfnOCL5__hwtC07FAb6WQlBer5KjyMY

