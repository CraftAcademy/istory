Feature: iStory landing page
  As a user,
  In order to navigate through the site,
  I would like to see, create an account, login and some story examples on the landing page

  Background:
    Given the following story exists
      | title    | author          | intro                                                                                    |
      | Starship | Mariza & Alfred | Once upon a time, in a far away galaxy. There was a young team on the Discovery Starship |

    And the following chapters exists
      | parent_chapter        | title                 | content                                                   |
      |                       | The story begins      | There is a huge asteroid coming your way, what do you do? |
      | The story begins      | Shoot it with a laser | Now a monster emerges from inside the asteroid, wyd?      |
      | The story begins      | Hide                  | The asteroid hits the starship, wyd?                      |
      | Shoot it with a laser | Talk                  | The monster says it wants to kill you, wyd?               |
      | Shoot it with a laser | Throw a grenade       | The monster explodes, the whole room is now messy, wyd?   |
      | Shoot it with a laser | Run                   | The monster runs after you. Go right or left?             |
      | Run                   | Right                 | The monster got stuck and you got away. The end           |

  Scenario: Display content on landing page
    Given I visit the landing page
    Then I should see "iStory"
    And I should see "Welcome to an interactive journey"
    And I should see "Login" button
    And I should see "Sign up" button
    And I should see "Starship" element
    And I should see "Contact"
    And I should see "About"
