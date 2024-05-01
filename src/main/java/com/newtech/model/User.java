package com.newtech.model;

import jakarta.persistence.*;


@Entity
@Table(name = "users")
public class User extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String first_name;
    private String last_name;
    @Column(unique = true)
    private String email;
    private String password;
    private String address;
    private String city;
    private String postal_code;
    private String phone;
    private String gender;
    private String email_Verified_at;
    private String Verification_code;

    private boolean active;

    @Enumerated(value = EnumType.STRING)
    @Column(name = "user_type")
    private UserType userType=UserType.USER;


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPostal_code() {
        return postal_code;
    }

    public void setPostal_code(String postal_code) {
        this.postal_code = postal_code;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail_Verified_at() {
        return email_Verified_at;
    }

    public void setEmail_Verified_at(String email_Verified_at) {
        this.email_Verified_at = email_Verified_at;
    }

    public String getVerification_code() {
        return Verification_code;
    }

    public void setVerification_code(String verification_code) {
        Verification_code = verification_code;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }
}
