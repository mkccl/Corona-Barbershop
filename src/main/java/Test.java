public class Test {

    public static void main(String[] args) {


        String name = "Michael";
        String lastname = "Sheesh";
        String age = "20";
        String name2 = "Michaelasdad";
        String lastname2 = "Sheeshasd";
        String age2 = "7";


        // 1 Method takes all the souts
        doSomething(name, lastname, age);
        doSomething(name2, lastname2, age2);
        doSomething("Hans", "Hinterseher", "40");

    }
    // You can also overwrite the same Method and call it with only 1 attribute needed
    public static void doSomething(String firstlabel, String secondLabel, String thirdLabel){
        System.out.println(firstlabel + " " + secondLabel + " " + thirdLabel);
    }

    public static void doSomething(String onlyOneLabel){
        System.out.println(onlyOneLabel);
    }

    // Or even overwrite it again
    public static void doSomething(String onlyTwoLabel, String onlyTwolabelTwo){
        System.out.println(onlyTwoLabel + onlyTwolabelTwo);
    }
}
