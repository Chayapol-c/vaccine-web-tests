# Vaccine Web Tests

E2E testing on [Vaccine haven](https://vaccine-haven.herokuapp.com/) Web service using Robot Framework. This is a part of the 219345 Software Verification and Validation Assignment.

## Installation

```
pip install -r requirements.txt
```

## Running tests

```
robot ./test_reservation.robot
```

## Test case list

| ID  | Testcase                   | Testcase Description                                              | Status |
| --- | -------------------------- | ----------------------------------------------------------------- | ------ |
| 1   | Test Navigate to Home Page | Verify 2 items on the home page                                   | pass   |
| 2   | Test Create Reservation    | Create a reservation and verify that the registration was created | pass   |
| 3   | Test Cancel Reservation    | Cancel the reservation made in the previous test                  | pass   |

## Questions

### Which do you think is a better framework for E2E testing of web applications or web services: `Robot Framework` or `Cucumber with Selenium/HTTP library and Junit`?

I think Cucumber with Selenium/HTTP library and Junit is better than Robot Framework for E2E because Cucumber supports Behaviors-Driven Development
and it uses Gherkin syntax that is user-friendly.

### What tutorial or online resource(s) did you find most helpful for learning Robot Framework?

- https://robocorp.com/docs/languages-and-frameworks/robot-framework
