package LastExam;

public class Animal {
    //객체 변수 선언
    String name;

    public void setName(String name) {      //이름 설정하는 메서드
        this.name = name;
    }
}

class Dog extends Animal {
    // Animal 클래스를 상속
    void sleep() {
        System.out.println(this.name+" zzz...");
    }
}
class HouseDog extends Dog {
    void sleep() {
        System.out.println(this.name + " zzz in house");
    }
    void sleep(int hour) {
        System.out.println(this.name + " zzz in house for " + hour + " hours");
    }
}
