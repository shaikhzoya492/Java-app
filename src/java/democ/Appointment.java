package democ;

public class Appointment{
    private String fullname;
    private String gender;
    private String age;
    private String appointDate;
    private String email;
    private String phno;
    private String diseases;
    private String doctor;
    private String address;

    public Appointment(String fullname, String gender, String age, String appointDate,
                       String email, String phno, String diseases, String doctor, String address) {
        this.fullname = fullname;
        this.gender = gender;
        this.age = age;
        this.appointDate = appointDate;
        this.email = email;
        this.phno = phno;
        this.diseases = diseases;
        this.doctor = doctor;
        this.address = address;
    }
    public Appointment() {
        // Constructor logic (if any)
    }

    public String getFullname() {
        return fullname;
    }

    public String getGender() {
        return gender;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setAge(String age) {
        
        this.age = age;
    }

    public void setAppointDate(String appointDate) {
        this.appointDate = appointDate;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPhno(String phno) {
        this.phno = phno;
    }

    public void setDiseases(String diseases) {
        this.diseases = diseases;
    }

    public void setDoctor(String doctor) {
        this.doctor = doctor;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAge() {
        return age;
    }

    public String getAppointDate() {
        return appointDate;
    }

    public String getEmail() {
        return email;
    }

    public String getPhno() {
        return phno;
    }

    public String getDiseases() {
        return diseases;
    }

    public String getDoctor() {
        return doctor;
    }

    public String getAddress() {
        return address;
    }
}
