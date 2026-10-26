package karateTest;

import com.intuit.karate.junit5.Karate;

public class Runner {
    @Karate.Test
    public Karate run() {
        System.out.println("Running Karate tests...");
        return Karate.run("getRequest.feature").relativeTo(getClass());
    }
}
