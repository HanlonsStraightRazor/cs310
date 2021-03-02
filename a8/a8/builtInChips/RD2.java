package builtInChips;

/**
 * 16 bit RD2 register.
 * If load[t]=1 then out[t+1] = in[t]
 * else out does not change
 */
public class RD2 extends RegisterWithGUI {

    /**
     * Constructs a new RD2 Register.
     */
    public RD2() {
        if (gui != null) {
            gui.setName("RD2:");
            gui.setLocation(4,442);
        }
    }
}
