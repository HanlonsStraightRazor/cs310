package builtInChips;

/**
 * 16 bit address RD1 register.
 * If load[t]=1 then out[t+1] = in[t]
 * else out does not change
 */
public class RD1 extends RegisterWithGUI {

    /**
     * Constructs a new RD1 Register.
     */
    public RD1() {
        if (gui != null) {
            gui.setName("RD1:");
            gui.setLocation(4,442);
        }
    }
}
