    import com.intuit.karate.junit5.Karate;

    class PruebaRunner {

        @Karate.Test
        Karate testAll() {
            return Karate.run().tags("@envioMSN").relativeTo(getClass());
        }
    }
