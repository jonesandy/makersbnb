# MakersBnB

The purpose of this app is to allow Hosts to list spaces to rent. Users are then able to browse posted listings and make bookings. The functionality is similar to AirBnB.

## User Stories

The following User Stories were generated from the specification of the project.
```
As an Host
So I can rent out my space
I want to be able to list my space.

As a Guest
So I can decide where to stay
I want to see all the listings.

As a User
So I can have a profile
I want to be able to create my account.

As a Host
So I can effectively advertise my space
I want to add the price per night and details about my space.

As a Host
So guests can book my space
I would like to be able to change my availability status.

As a Guest
So I can rent out a space
I want to be able to book available listings.

As a Host
So I can confirm a booking
I want to be able to approve a booking request.

As a Guest
So I can communicate with Hosts
I would like to be able to contact the Host.

As a Host
So I don't have conflicting bookings
I want to block dates once a booking is confirmed.

As a Guest
So I can tell my booking was successful
I would like a notification.

As a Host
So I can maximise profit
I want to be able to list multiple spaces.

As a Guest
So I know what is available
I would like all listings to show availability.

As a Host
So I can vet guests
I would like to see profiles.

As a Host
So I can arrange my spaces properly
I want to set the available dates of my property (up to 12 months from now on).
```

## Minimum viable product (MVP)

The first three user stories have been identified as essential to delivering the MVP. Acceptance criteria included: 
 - the user (guest) can see a list of postings;
 - the user (host) can input details about the listing and save the details added.

## Setup

*create database*
- Please start by forking this repo.
- In a terminal run `psql`
- Create the following databases with:
```
CREATE DATABASE makers_bnb_dev;
CREATE DATABASE makers_bnb_test;
```
<!-- - `rackup`
- Using a web browser visit the relevant localhost -->

Simplecov has been added to ensure test coverage.