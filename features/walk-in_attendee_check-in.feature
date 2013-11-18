Feature: Walk-in attendee check-in
  In order to allow attendees who did not previously register to participate in an event
  As an event organizer
  I want to check in a walk-in attendee

  Scenario: Check in a walk-in attendee
    Given I am signed in as an event organizer
      And the event is below capacity
    When I go to attendees page
      And I register a new attendee
    Then the attendee should be checked in
      And the event should be below or at capacity