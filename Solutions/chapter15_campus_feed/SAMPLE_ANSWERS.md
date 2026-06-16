# Chapter 15 Sample Written Answers

Sample responses for the reflection questions in the lab. Students may phrase answers differently.

## Part 1: Understand REST and HTTP

**1. What is the difference between data on the device and data from a REST API?**

On-device data is stored locally and ships with the app or is saved by the user. REST API data lives on a remote server and must be downloaded over the internet when needed.

**2. Why does this lab use HTTP GET instead of POST for loading the feed?**

GET is for reading data without changing anything on the server. We only need to fetch the announcement list, not create or update server records.

**3. What does the s in https:// tell you about the connection?**

The connection is encrypted. Data is harder for others on the same network to read or tamper with in transit.

## Part 7: Security and Testing Concepts

**1. Why is https:// safer than http:// on campus Wi‑Fi?**

HTTPS encrypts traffic between the app and the server. On public Wi‑Fi, encryption helps prevent strangers from reading or altering requests and responses.

**2. What is a man-in-the-middle attack in one plain sentence?**

A stranger on the network secretly sits between your app and the server, reading or changing messages you thought were private.

**3. Why did we put URLSession in a service instead of inside the view?**

The view should focus on layout. A service keeps networking in one testable place and matches the layered architecture from Chapter 10.

**4. What is URLProtocol used for, even if you do not implement it in this lab?**

`URLProtocol` intercepts network requests so you can return fake data during unit tests without hitting a real server.

**Optional: App Transport Security**

iOS blocks plain HTTP by default so apps do not accidentally send sensitive data over unencrypted connections.

© 2024 Bulldog Ventures Inc. All rights reserved.
