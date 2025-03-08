package com.entities;

public class Employee {
    private int eid;
    private String name;
    private String email;
    private String contact;

    // ✅ Default Constructor (Required by Spring)
    public Employee() {
    }

    // ✅ Constructor for inserting employee (without ID)
    public Employee(String name, String email, String contact) {
        this.name = name;
        this.email = email;
        this.contact = contact;
    }

    // ✅ Constructor for fetching employees (with ID)
    public Employee(int eid, String name, String email, String contact) {
        this.eid = eid;
        this.name = name;
        this.email = email;
        this.contact = contact;
    }

    // ✅ Getters and Setters
    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }
}
