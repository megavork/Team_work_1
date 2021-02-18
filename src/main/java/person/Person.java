package person;

import java.io.Serializable;

public class Person implements Serializable {
    private String firstName;
    private String lastName;
    private String sex;
    private String region;
    private double price;

    public Person() {
    }

    public Person(String firstName, String lastName, String sex, String region, double price) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.sex = sex;
        this.region = region;
        this.price = price;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
