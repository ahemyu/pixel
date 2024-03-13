package pixelitor;

public class EmojiPresent {

    private String str1 = "Slashy/branch with🐱️ but closed";
    private String str2 = "slashy/branch_with🐱️";

    public String getStr1(){
        return str1;
    }

    public String getStr2() {
        return str2;
    }

    public int diff(){
        return str1.compareTo(str2);
    }

    public void print(){
        System.out.println(str1 + str2);
    }
}
