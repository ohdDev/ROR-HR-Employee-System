
# HR-EMPLYEE-SYSTEM

## Overview

In this project I'm creating an HR emplyee system using ruby on rails.

### Project features
- it contains 5 basic tables: users, employees, teams, divisions, targets.
![tables](https://i.ibb.co/jff3tpH/Screen-Shot-2022-02-28-at-4-35-57-AM.png)

- association of the project is created using the UML below:
![HR-employee-administration-system](https://i.ibb.co/YpByWMw/HR-employee-administration-system.jpg")

- [devise](https://github.com/heartcombo/devise) is added to user table to deal with authentication.

(User must be sign in to show tables)
![devise](https://i.ibb.co/SmzKK9z/Screen-Shot-2022-02-28-at-5-05-31-AM.png)

(When user sign in sign out button will appear and the sign in/sign up buttons will disappear)
![signed in](https://i.ibb.co/st2H5Hr/Screen-Shot-2022-02-28-at-5-11-14-AM.png
)

- active storage is added to user model to be able to attach profile image.
![active storage](https://i.ibb.co/fvjfVMx/Screen-Shot-2022-02-28-at-5-27-38-AM.png)

- welcome mail is sent when new user register.
![welcome mail](https://i.ibb.co/sbWcHZ9/Screen-Shot-2022-02-27-at-8-01-48-PM.png)

- show button is added in teams table to show team details.
![show teams](https://i.ibb.co/7Q4qqsK/Screen-Shot-2022-02-28-at-5-33-10-AM.png)

![show teams](https://i.ibb.co/7gSmZvh/Screen-Shot-2022-02-28-at-5-34-35-AM.png)

- use Rails Internationalization to add arabic translation

https://user-images.githubusercontent.com/71216797/156935641-9609746d-9f04-448e-86ba-feb98baeb00e.mp4

- Action Views

(Edit System views)
![action views](https://i.ibb.co/9YM6RmK/imgonline-com-ua-twotoone-dk6-Jn-Q3c-Gj-Vz-U9p.jpg)

(use accepts_nested_attributes_for with division and team models)




