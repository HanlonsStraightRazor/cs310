package builtInChips;

/**
 * 16 bit ALUoutput register.
 * If load[t]=1 then out[t+1] = in[t]
 * else out does not change
 */
public class ALUoutput extends RegisterWithGUI {

    /**
     * Constructs a new ALUoutput Register.
     */
    public ALUoutput() {
        if (gui != null) {
            gui.setName("ALUout:");
            gui.setLocation(4,442);
        }
    }
}
