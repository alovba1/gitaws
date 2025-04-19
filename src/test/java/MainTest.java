import static org.junit.jupiter.api.Assertions.assertEquals;

import org.example.Main;
import org.junit.jupiter.api.Test;


public class MainTest {
    @Test
    public void testAddNumbers() {
        Main myService = new Main();
        assertEquals(5, myService.addNumbers(2, 3));
    }

}
