package pixelitor;

public class ClassWithEmojiInside {
    private String str = "slashy/branch_with🐱️";
    private String str2 = "Slashy/branch with🐱️ but closed";


    private String getStr(){
        return str;
    }

    private String getStr2(){
        return str2;
    }

    public int diff(){
        return str2.compareTo(str);
    }

    public void print(){
        System.out.println("I like emojis"  + "📝" +  "\uD83D\uDE80");
    }


}
