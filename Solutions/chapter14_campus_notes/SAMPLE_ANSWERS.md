# Chapter 14 Sample Written Answers

Sample responses for the reflection questions in the lab. Students may phrase answers differently.

## Part 1: SwiftData vs Core Data

**1. What problem does persistence solve in a mobile app?**

Persistence lets an app remember data after it closes. Without it, everything resets every time the user launches the app.

**2. Why might a new SwiftUI project choose SwiftData over Core Data?**

SwiftData uses Swift macros like `@Model` and `@Query`, so setup is simpler and fits SwiftUI better. Core Data often needs more boilerplate and a separate model editor.

**3. What are the two main jobs of ModelContainer and ModelContext?**

`ModelContainer` owns the database file and schema. `ModelContext` performs day-to-day work like inserting, updating, and deleting records.

## Part 7: Relationships and Cascade Delete

**1. What is a one-to-many relationship in this lab? Name the parent and the children.**

`CampusFolder` is the parent. `CampusNote` objects are the children. One folder can hold many notes.

**2. What would happen if you deleted a folder but used deleteRule: .nullify instead of .cascade?**

The folder would be deleted, but the notes would stay in the database. Their `folder` link would be set to `nil` instead of deleting the notes.

**3. Why does @Query refresh the list when you insert a note?**

`@Query` watches the persistent store. When the `ModelContext` saves a change, SwiftUI re-runs the query and updates the view.

**4. When would you filter with #Predicate instead of loading every record?**

Use a predicate when you only need a subset, such as pinned notes or notes in one folder. That avoids loading hundreds of records the screen does not need.

© 2024 Bulldog Ventures Inc. All rights reserved.
