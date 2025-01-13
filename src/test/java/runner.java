import com.intuit.karate.junit5.Karate;

class PruebaRunner {

    @Karate.Test
    Karate testAll() {
        return Karate.run("classpath:features/prueba.feature", "classpath:features/prueba2.feature");
    }
}
