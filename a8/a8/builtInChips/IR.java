package builtInChips;

/**
 * 16 bit address register.
 * If load[t]=1 then out[t+1] = in[t]
 * else out does not change
 */
public class IR extends RegisterWithGUI {

    /**
     * Constructs a new IR
     */
    public IR() {
        if (gui != null) {
            gui.setName("IR:");
            gui.setLocation(4,442);
        }
    }
}
