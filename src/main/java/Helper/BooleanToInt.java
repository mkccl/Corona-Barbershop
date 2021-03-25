package Helper;

public class BooleanToInt {

    private boolean state;
    private int stateInt;

    public BooleanToInt(){

    }

    public int isState() {
        return stateInt;
    }

    /**
     * Diese Methode wandelt einen boolean
     * in einen Integer um
     *
     * false = 0
     * true  = 1
     *
     * @param state
     */
    public void setState(boolean state) {
        if(state == false)
            this.stateInt = 0;
        else
            this.stateInt = 1;
    }

}
