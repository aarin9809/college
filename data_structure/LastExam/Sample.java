package LastExam;


public class Sample {
    int sum(int a, int b) {
        return a + b;    
    }

    public static void main(String[] args) {
       int a = 3;
       int b = 4;
       Sample sample = new Sample();
       int c = sample.sum(a, b);
       System.out.println(c);

       Animal cat = new Animal(); 
       cat.setName("boby");

    //    Animal dog = new Animal();
    //    dog.setName("happy");

       Counter myCounter = new Counter();
       System.out.println("before update : " + myCounter.count);
       Updater updater = new Updater();
       updater.update(myCounter);
       System.out.println("after count : " + myCounter.count);


       Dog dog2 = new Dog();
       dog2.setName("Hi");
       System.out.println(dog2.name);
       dog2.sleep();

       HouseDog houseDog = new HouseDog();
       houseDog.setName("happy");
       houseDog.sleep();
       houseDog.sleep(3);
       
       HouseDog dog = new HouseDog();
       System.out.println(dog.name);
       
    }
}